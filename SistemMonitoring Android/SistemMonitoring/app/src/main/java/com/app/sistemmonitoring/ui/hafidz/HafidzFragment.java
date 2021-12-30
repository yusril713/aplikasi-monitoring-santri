package com.app.sistemmonitoring.ui.hafidz;

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

public class HafidzFragment extends Fragment {
    private String[] tanggal, hafalan;
    private ListView listHafalan;
    private TextView tvNotFound;
    private ProgressDialog progressDialog;
    private JSONParser jsonParser = new JSONParser();
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        View root = inflater.inflate(R.layout.fragment_hafidz, container, false);
        listHafalan = root.findViewById(R.id.listHafalan);
        tvNotFound = root.findViewById(R.id.tvNotFoundHafalan);
        new GetHafalan().execute();
        return root;
    }

    public class GetHafalan extends AsyncTask<String, String, String> {
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
                            "hafalan/" + HomeActivity.obUser.optString("id"),
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
                    tvNotFound.setText("Belum ada hafalan");
                } else {
                    JSONArray arr = json.getJSONArray("hafalan");
                    tanggal = new String[arr.length()];
                    hafalan = new String[arr.length()];
                    for (int i = 0; i < arr.length(); i++) {
                        JSONObject job = arr.getJSONObject(i);
                        tanggal[i] = job.optString("created_at");
                        hafalan[i] = job.optString("hafalan");
                    }
                    SetHafalan(tanggal, hafalan);
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
            super.onPostExecute(s);
        }
    }

    private void SetHafalan(String[] tanggal, String[] hafalan) {
        AdapterHafidz adapter = new AdapterHafidz(getContext(), tanggal, hafalan);
        listHafalan.setAdapter(adapter);
    }
}
