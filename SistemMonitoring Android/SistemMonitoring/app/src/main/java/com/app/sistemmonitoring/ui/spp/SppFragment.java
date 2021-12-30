package com.app.sistemmonitoring.ui.spp;

import androidx.lifecycle.ViewModelProviders;

import android.app.ProgressDialog;
import android.os.AsyncTask;
import android.os.Bundle;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;

import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListView;

import com.app.sistemmonitoring.HomeActivity;
import com.app.sistemmonitoring.JSONParser;
import com.app.sistemmonitoring.MainActivity;
import com.app.sistemmonitoring.R;

import org.apache.http.NameValuePair;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;

public class SppFragment extends Fragment {
    JSONParser jsonParser = new JSONParser();
    private SppViewModel mViewModel;
    private ProgressDialog progressDialog;
    private String[] nis, nama, semester, status, tahun_ajaran = {};
    private ListView listSpp;

    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container,
                             @Nullable Bundle savedInstanceState) {
        View root = inflater.inflate(R.layout.spp_fragment, container, false);
        listSpp = root.findViewById(R.id.listSpp);
        new GetSpp().execute();
        //();
        return root;
    }

    public class GetSpp extends AsyncTask<String, String, String> {
        @Override
        protected void onPreExecute() {
            progressDialog = new ProgressDialog(getContext());
            progressDialog.setMessage("Sedang mengambil data");
            progressDialog.setIndeterminate(false);
            progressDialog.setCancelable(true);
            progressDialog.show();
        }

        @Override
        protected String doInBackground(String... strings) {
            List<NameValuePair> params = new ArrayList<NameValuePair>();
            JSONObject json = jsonParser.makeHttpRequest(MainActivity.apiURL +
                            "get-spp/" + HomeActivity.obUser.optString("id"),
                    "GET", params);
            progressDialog.cancel();
            Log.i("spp", json.toString());
            return json.toString();
        }

        @Override
        protected void onPostExecute(String s) {
            try {
                JSONObject json = new JSONObject(s);
                JSONArray arr = json.getJSONArray("spp");
                nis = new String[arr.length()];
                nama = new String[arr.length()];
                semester = new String[arr.length()];
                tahun_ajaran = new String[arr.length()];
                status = new String[arr.length()];
                for (int i = 0; i < arr.length(); i++) {
                    JSONObject job = arr.getJSONObject(i);
                    nis[i] = job.optString("nis");
                    nama[i] = job.optString("nama");
                    tahun_ajaran[i] = job.optString("tahun_ajaran");
                    semester[i] = job.optString("semester");
                    status[i] = job.optString("status");
                }
                SetSpp(nis, nama, semester, tahun_ajaran, status);
                Log.i("spp 1", nis[0]);
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    public void SetSpp(String[] nis, String[] nama,
                       String[] semester, String[] tahun_ajaran, String[] status) {
        AdapterSpp adapter = new AdapterSpp(getContext(), nis, nama, semester, tahun_ajaran, status);
        listSpp.setAdapter(adapter);
        listSpp.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {

            }
        });
    }
}