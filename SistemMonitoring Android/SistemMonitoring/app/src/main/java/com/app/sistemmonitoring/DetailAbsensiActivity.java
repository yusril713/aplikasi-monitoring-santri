package com.app.sistemmonitoring;

import android.app.ProgressDialog;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.TextView;

import androidx.appcompat.app.AppCompatActivity;

import com.app.sistemmonitoring.ui.absensi.AbsensiFragment;
import com.app.sistemmonitoring.ui.spp.AdapterSpp;

import org.apache.http.NameValuePair;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;

public class DetailAbsensiActivity extends AppCompatActivity {

    private TextView mTextView;
    private ProgressDialog progressDialog;
    JSONParser jsonParser = new JSONParser();
    private String[] tanggalDetailAbsensi,
            keteranganDetailAbsensi = {};
    private ListView listDetailAbsensi;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_detail_absensi);

        mTextView = (TextView) findViewById(R.id.text);
        listDetailAbsensi = (ListView) findViewById(R.id.listDetailAbsensi);
        Log.i("absensi id", MainActivity.apiURL +
                "detail-absensi/" + HomeActivity.obUser.optString("id") +"/ss/" + AbsensiFragment.absensi_id);
        new GetDetailAbsensi().execute();
    }

    public class GetDetailAbsensi extends AsyncTask<String, String, String> {
        @Override
        protected void onPreExecute() {
            progressDialog = new ProgressDialog(DetailAbsensiActivity.this);
            progressDialog.setMessage("Wait");
            progressDialog.setIndeterminate(false);
            progressDialog.setCancelable(true);
            progressDialog.show();
        }
        @Override
        protected String doInBackground(String... strings) {
            List<NameValuePair> params = new ArrayList<NameValuePair>();
            JSONObject json = jsonParser.makeHttpRequest(MainActivity.apiURL +
                            "detail-absensi/" + HomeActivity.obUser.optString("id") +"/ss/" + AbsensiFragment.absensi_id,
                    "GET", params);
            progressDialog.cancel();
            Log.i("detail absensi", json.toString());
            return json.toString();
        }

        @Override
        protected void onPostExecute(String s) {
            try {
                JSONObject jsonObject = new JSONObject(s);
                JSONArray arr = jsonObject.getJSONArray("detail_absensi");
                tanggalDetailAbsensi = new String[arr.length()];
                keteranganDetailAbsensi = new String[arr.length()];
                for (int i = 0; i < arr.length(); i++) {
                    JSONObject job = arr.getJSONObject(i);
                    tanggalDetailAbsensi[i] = job.optString("tanggal");
                    keteranganDetailAbsensi[i] = job.optString("keterangan");
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }

            SetListDetailAbsensi(tanggalDetailAbsensi, keteranganDetailAbsensi);
        }
    }

    public void SetListDetailAbsensi(String[] tanggal, String[] keterangan){
        AdapterDetailAbsensi adapter = new AdapterDetailAbsensi(getApplicationContext(), tanggal, keterangan);
        listDetailAbsensi.setAdapter(adapter);
        listDetailAbsensi.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {

            }
        });
    }
}