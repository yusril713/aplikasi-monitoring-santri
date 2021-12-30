package com.app.sistemmonitoring.ui.pembina;

import androidx.lifecycle.ViewModelProviders;

import android.app.ProgressDialog;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
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

import com.app.sistemmonitoring.JSONParser;
import com.app.sistemmonitoring.MainActivity;
import com.app.sistemmonitoring.R;

import org.apache.http.NameValuePair;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.InputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

public class PembinaFragment extends Fragment {
    private ListView listPembina;
    private Bitmap[] bitmap = {};
    private String[] src, nip, nama, noTelp, jenisKelamin = {};
    private PembinaViewModel mViewModel;
    private JSONParser jsonParser = new JSONParser();
    private ProgressDialog progressDialog;

    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container,
                             @Nullable Bundle savedInstanceState) {
        mViewModel = ViewModelProviders.of(this).get(PembinaViewModel.class);
        View root = inflater.inflate(R.layout.pembina_fragment, container, false);
        listPembina = (ListView) root.findViewById(R.id.listPembina);
        new GetDataPembina().execute();
        //new GetImage().execute();
        return root;
    }

    public class GetDataPembina extends AsyncTask<String, String, String> {
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
            JSONObject json = jsonParser.makeHttpRequest(MainActivity.apiURL + "pembina",
                    "GET", params);
            try {
                JSONArray arr = json.getJSONArray("pembina");
                try {
                    bitmap = new Bitmap[arr.length()];
                    for (int i = 0; i < arr.length(); i++) {
                        JSONObject job = arr.getJSONObject(i);
                        String s = job.optString("foto");
                        InputStream is = new URL(MainActivity.IP_ADDRESS + "/storage/" + s).openStream();
                        bitmap[i] = BitmapFactory.decodeStream(is);
                    }
                } catch(Exception e) {
                    e.printStackTrace();
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }

            progressDialog.cancel();
            return json.toString();
        }

        @Override
        protected void onPostExecute(String s) {
            try {
                JSONObject jsonObject = new JSONObject(s);
                JSONArray arr = jsonObject.getJSONArray("pembina");
                src = new String[arr.length()];
                nip = new String[arr.length()];
                nama = new String[arr.length()];
                noTelp = new String[arr.length()];
                jenisKelamin = new String[arr.length()];
                for(int i = 0; i < arr.length(); i++) {
                    JSONObject job = arr.getJSONObject(i);
                    src[i] = job.optString("foto");
                    nama[i] = job.optString("nama");
                    nip[i] = job.optString("nip");
                    noTelp[i] = job.optString("no_hp");
                    jenisKelamin[i] = job.optString("tempat_lahir");
                }
                SetDataPembina(bitmap, nip, nama, jenisKelamin, noTelp);
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    public void SetDataPembina(Bitmap[] bitmap, String[] nip, String[] nama,
                               String[] jenisKelamin, String[] noTelp) {
        AdapterPembina a = new AdapterPembina(getContext(), bitmap, nip, nama, jenisKelamin, noTelp);
        listPembina.setAdapter(a);
        listPembina.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {

            }
        });
    }
}
