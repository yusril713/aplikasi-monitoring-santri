package com.app.sistemmonitoring.ui.pelanggaran;

import android.app.ProgressDialog;
import android.os.AsyncTask;
import android.os.Bundle;

import androidx.fragment.app.Fragment;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.TextView;

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

public class PelanggaranFragment extends Fragment {
    private ListView listPelanggaran;
    private TextView tvNotFound;
    private ProgressDialog progressDialog;
    private JSONParser jsonParser = new JSONParser();

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        View root = inflater.inflate(R.layout.fragment_pelanggaran, container, false);
        listPelanggaran = root.findViewById(R.id.listPelanggaran);
        tvNotFound = root.findViewById(R.id.tvNotFoundPelanggaran);
        new GetPelanggaran().execute();
        return root;
    }

    public class GetPelanggaran extends AsyncTask<String, String, String> {
        @Override
        protected void onPreExecute() {
            progressDialog = new ProgressDialog(getContext());
            progressDialog.setMessage("Wait");
            progressDialog.setIndeterminate(false);
            progressDialog.setCancelable(true);
            progressDialog.show();
        }

        @Override
        protected String doInBackground(String... strings) {
            List<NameValuePair> params = new ArrayList<NameValuePair>();
            JSONObject json = jsonParser.makeHttpRequest(MainActivity.apiURL +
                            "pelanggaran/" + HomeActivity.obUser.optString("id"),
                    "GET", params);
            progressDialog.cancel();
            return json.toString();
        }

        @Override
        protected void onPostExecute(String s) {
            try {
                JSONObject json = new JSONObject(s);
                int count = json.getInt("count");
                if (count == 0) {
                    tvNotFound.setText("Tidak ada pelanggaran.");
                } else {
                    JSONArray arr = json.getJSONArray("pelanggaran");
                    String[] tanggal = new String[arr.length()];
                    String[] pelanggaran = new String[arr.length()];
                    for (int i = 0; i < arr.length(); i++) {
                        JSONObject job = arr.getJSONObject(i);
                        tanggal[i] = job.optString("tanggal_pelanggaran");
                        pelanggaran[i] = job.optString("pelanggaran");
                    }
                    SetPelanggaran(tanggal, pelanggaran);
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    public void SetPelanggaran(String[] a, String[] b) {
        AdapterPelanggaran adapter = new AdapterPelanggaran(getContext(), a, b);
        listPelanggaran.setAdapter(adapter);
    }
}
