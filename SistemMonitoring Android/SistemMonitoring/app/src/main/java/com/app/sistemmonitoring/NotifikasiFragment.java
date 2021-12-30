package com.app.sistemmonitoring;

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

import com.app.sistemmonitoring.ui.absensi.Adapter;
import com.app.sistemmonitoring.ui.spp.SppFragment;

import org.apache.http.NameValuePair;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;

public class NotifikasiFragment extends Fragment {

    private NotifikasiViewModel mViewModel;
    private ListView listNotif;
    private ProgressDialog progressDialog;
    private String[] tanggal, title, keterangan = {};
    JSONParser jsonParser = new JSONParser();

    public static NotifikasiFragment newInstance() {
        return new NotifikasiFragment();
    }

    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container,
                             @Nullable Bundle savedInstanceState) {
        View root = inflater.inflate(R.layout.notifikasi_fragment, container, false);
        listNotif = root.findViewById(R.id.listNotifikasi);
        new GetNotif().execute();
        //();
        return root;
    }

    public class GetNotif extends AsyncTask<String, String, String> {
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
                            "notif/" + HomeActivity.obUser.optString("id"),
                    "GET", params);
            progressDialog.cancel();
            return json.toString();
        }

        @Override
        protected void onPostExecute(String s) {
            try {
                JSONObject json = new JSONObject(s);
                JSONArray arr = json.getJSONArray("notifikasi");
                title = new String[arr.length()];
                keterangan = new String[arr.length()];
                tanggal = new String[arr.length()];
                for (int i = 0; i < arr.length(); i++) {
                    JSONObject job = arr.getJSONObject(i);
                    title[i] = job.optString("title");
                    keterangan[i] = job.optString("keterangan");
                    tanggal[i] = job.optString("created_at");
                }
                SetNotifikasi(title, keterangan, tanggal);
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }


    public void SetNotifikasi(String[] title, String[] keterangan, String[] tanggal) {
        AdapterNotifikasi adapter = new AdapterNotifikasi(getContext(), title, keterangan, tanggal);
        listNotif.setAdapter(adapter);
        listNotif.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {

            }
        });
    }
}