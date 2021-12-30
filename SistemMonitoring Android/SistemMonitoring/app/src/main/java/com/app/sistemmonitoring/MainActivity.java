package com.app.sistemmonitoring;

import androidx.appcompat.app.AppCompatActivity;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.EditText;
import android.widget.Toast;
import com.app.sistemmonitoring.utils.PreferenceUtils;

import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;

public class MainActivity extends AppCompatActivity {
    public static String IP_ADDRESS = "http://192.168.175.84/sistem_monitoring/public";
    public static String apiURL = IP_ADDRESS + "/api/";
    private ProgressDialog pDialog;
    private EditText txtUsername;
    private EditText txtPass;
    JSONParser jsonParser = new JSONParser();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        txtUsername = (EditText) findViewById(R.id.txtUsername);
        txtPass = (EditText) findViewById(R.id.txtPassword);


        if (PreferenceUtils.GetUsername(MainActivity.this) != null) {
            Intent i = new Intent(getApplicationContext(), HomeActivity.class);
            startActivity(i);
        }

        if (Build.VERSION.SDK_INT >= 21) {
            Window window = this.getWindow();
            window.addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS);
            window.clearFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS);
            window.setStatusBarColor(this.getResources().getColor(R.color.colorPrimary));
        }
    }

    public void Login(View view) {
        new LoginUser().execute();
    }

    class LoginUser extends AsyncTask<String, String, String> {
        @Override
        protected void onPreExecute() {
            pDialog = new ProgressDialog(MainActivity.this);
            pDialog.setMessage("Wait for login..");
            pDialog.setIndeterminate(false);
            pDialog.setCancelable(true);
            pDialog.show();
        }

        //
        protected String doInBackground(String... args) {
            String username = txtUsername.getText().toString();
            String pass = txtPass.getText().toString();
            List<NameValuePair> params = new ArrayList<NameValuePair>();
            params.add(new BasicNameValuePair("username", username));
            params.add(new BasicNameValuePair("pass", pass));
            JSONObject json = jsonParser.makeHttpRequest(apiURL + "login",
                    "POST", params);
            pDialog.cancel();
            try {
                int success = json.getInt("status");
                if (success == 1) {
                    Intent i = new Intent(getApplicationContext(), HomeActivity.class);
                    PreferenceUtils.SaveUsername(json.toString(), MainActivity.this);
                    startActivity(i);
                    finish();
                } else {
                    Log.i("Msg", "Failed bosku");
                }
                return json.toString();
                //} else {
                // failed to create product
                //}
            } catch (JSONException e) {
                e.printStackTrace();
            }
            return null;
        }

        @Override
        protected void onPostExecute(String s) {
            super.onPostExecute(s);
            try {
                JSONObject json = new JSONObject(s);
                int success = json.getInt("status");
                if (success == 0) {
                    Toast.makeText(getApplicationContext(), "Username dan password tidak valid", Toast.LENGTH_SHORT).show();
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }
}
