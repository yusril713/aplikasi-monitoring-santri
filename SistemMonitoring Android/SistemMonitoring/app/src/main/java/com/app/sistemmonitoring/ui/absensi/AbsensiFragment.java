package com.app.sistemmonitoring.ui.absensi;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListView;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProviders;

import com.app.sistemmonitoring.DetailAbsensiActivity;
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

public class AbsensiFragment extends Fragment {
    private AbsensiViewModel absensiViewModel;
    private ListView listAbsensi;
    private JSONParser jsonParser = new JSONParser();
    private ProgressDialog progressDialog;
    private String[] mataPelajaran, id;
    private String[] kelas;
    private String[] pembina, semester, tahun_ajaran;

    public static String absensi_id, mapelDetailAbsensi ="";
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater,
                             ViewGroup container, Bundle savedInstanceState) {
        absensiViewModel =
                ViewModelProviders.of(this).get(AbsensiViewModel.class);
        View root = inflater.inflate(R.layout.fragment_absensi, container, false);
        listAbsensi = (ListView) root.findViewById(R.id.listAbsensi);

        absensiViewModel.getText().observe(getViewLifecycleOwner(), new Observer<String>() {
            @Override
            public void onChanged(@Nullable String s) {
                new GetMataPelajaran().execute(HomeActivity.obUser.optString("id"));
            }
        });

        return root;
    }

    public class GetMataPelajaran extends AsyncTask<String, String, String> {
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
            JSONObject jsonAbsensi = jsonParser.makeHttpRequest(MainActivity.apiURL + "get-mapel/" + strings[0],
                    "GET", params);
            progressDialog.cancel();
            return jsonAbsensi.toString();
        }

        @Override
        protected void onPostExecute(String s) {
            try {
                JSONObject jsonObject = new JSONObject(s);
                JSONArray arr = jsonObject.getJSONArray("mapel");
                mataPelajaran = new String[arr.length()];
                kelas = new String[arr.length()];
                pembina = new String[arr.length()];
                semester = new String[arr.length()];
                tahun_ajaran = new String[arr.length()];
                id = new String[arr.length()];
                for(int i = 0; i < arr.length(); i++) {
                    JSONObject job = arr.getJSONObject(i);
                    id[i] = job.optString("absensi_id");
                    mataPelajaran[i] = job.optString("mata_pelajaran");
                    kelas[i] = job.optString("kelas");
                    pembina[i] = job.optString("nama_pembina");
                    semester[i] = job.optString("semester");
                    tahun_ajaran[i] = job.optString("tahun_ajaran");
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }

            SetListMataPelajaran(id, mataPelajaran, kelas, pembina, semester, tahun_ajaran);
        }
    }

    public void SetListMataPelajaran(final String[] absensi, final String[] mataPelajaran,
                                     String[] kelas, String[] pembina, String[] semester, String[] tahun_ajaran) {
        Adapter adapter = new Adapter(getContext(), mataPelajaran, pembina, kelas, semester, tahun_ajaran);
        listAbsensi.setAdapter(adapter);
        listAbsensi.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                absensi_id = absensi[position];
                mapelDetailAbsensi = mataPelajaran[position];
                Intent i = new Intent(getContext(), DetailAbsensiActivity.class);
                startActivity(i);
            }
        });
    }
 }
