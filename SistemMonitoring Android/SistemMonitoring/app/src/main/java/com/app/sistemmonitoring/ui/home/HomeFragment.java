package com.app.sistemmonitoring.ui.home;

import android.annotation.SuppressLint;
import android.app.ProgressDialog;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProviders;

import com.app.sistemmonitoring.JSONParser;
import com.app.sistemmonitoring.MainActivity;
import com.app.sistemmonitoring.R;

import org.apache.http.NameValuePair;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;

public class HomeFragment extends Fragment {
    TextView tvVisi, tvMisi;
    JSONParser jsonParser = new JSONParser();
    private HomeViewModel homeViewModel;
    private ProgressDialog progressDialog;

    public View onCreateView(@NonNull LayoutInflater inflater,
                             ViewGroup container, Bundle savedInstanceState) {
        homeViewModel =
                ViewModelProviders.of(this).get(HomeViewModel.class);
        View root = inflater.inflate(R.layout.fragment_home, container, false);
        //final TextView textView = root.findViewById(R.id.text_home);
        tvVisi = root.findViewById(R.id.tvVisi);
        tvMisi = root.findViewById(R.id.tvMisi);
        homeViewModel.getText().observe(getViewLifecycleOwner(), new Observer<String>() {
            @Override
            public void onChanged(@Nullable String s) {
                new InfoPesantren().execute();
            }
        });
        return root;
    }

    class InfoPesantren extends AsyncTask<String, String, String> {
        String visi ="Visi:\n";
        String misi = "Misi:\n";

        @Override
        protected void onPreExecute() {
            progressDialog = new ProgressDialog(getContext());
            progressDialog.setMessage("Wait");
            progressDialog.setIndeterminate(false);
            progressDialog.setCancelable(true);
            progressDialog.show();

        }

        @SuppressLint("WrongThread")
        @Override
        protected String doInBackground(String... strings) {
            List<NameValuePair> params = new ArrayList<NameValuePair>();
            JSONObject json = jsonParser.makeHttpRequest(MainActivity.apiURL + "info",
                    "GET", params);

            progressDialog.cancel();
            try {
                String res = json.toString();
                JSONObject ob = new JSONObject(res);
                JSONArray arrVisi = ob.getJSONArray("visi");
                JSONArray arrMisi = ob.getJSONArray("misi");
                for (int i = 0; i < arrVisi.length(); i++) {
                    JSONObject o = arrVisi.getJSONObject(i);
                    String value1 = o.optString("visi");
                    visi += value1 + "\n";
                }

                for (int i = 0; i < arrMisi.length(); i++) {
                    JSONObject o = arrMisi.getJSONObject(i);
                    String value1 = o.optString("misi");
                    misi += value1 + "\n";
                }
                tvVisi.setText(visi);
                tvMisi.setText(misi);
            } catch(JSONException er) {
                er.printStackTrace();
            }
            return null;
        }
    }
}
