package com.app.sistemmonitoring.ui.prestasi;

import androidx.lifecycle.ViewModelProviders;

import android.app.ProgressDialog;
import android.os.AsyncTask;
import android.os.Bundle;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
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

public class PrestasiFragment extends Fragment {

    private PrestasiViewModel mViewModel;
    private ListView listPrestasi;
    private TextView tvNotFoundPrestasi;
    private ProgressDialog progressDialog;
    private String[] tanggal = {};
    private String[] prestasi = {};

    private JSONParser jsonParser = new JSONParser();

    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container,
                             @Nullable Bundle savedInstanceState) {
        //mViewModel = ViewModelProviders.of(this).get(PrestasiViewModel.class);
        View root = inflater.inflate(R.layout.prestasi_fragment, container, false);
        listPrestasi = root.findViewById(R.id.listPrestasi);
        tvNotFoundPrestasi = root.findViewById(R.id.tvNotFoundPrestasi);
        new GetPrestasi().execute();
        //();
        return root;
    }

    public class GetPrestasi extends AsyncTask<String, String, String> {
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
                            "prestasi/" + HomeActivity.obUser.optString("id"),
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
                    tvNotFoundPrestasi.setText("Belum ada prestasi.");
                } else {
                    tvNotFoundPrestasi.setText("");
                    JSONArray arr = json.getJSONArray("prestasi");
                    tanggal = new String[arr.length()];
                    prestasi = new String[arr.length()];
                    for (int i = 0; i < arr.length(); i++) {
                        JSONObject job = arr.getJSONObject(i);
                        tanggal[i] = job.optString("created_at");
                        prestasi[i] = job.optString("hafalan");
                    }
                    SetPrestasi(tanggal, prestasi);
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }

        }
    }

    public void SetPrestasi(String[] tanggal, String[] prestasi) {
        AdapterPrestasi adapter = new AdapterPrestasi(getContext(), tanggal, prestasi);
        listPrestasi.setAdapter(adapter);
        listPrestasi.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {

            }
        });
    }
}
