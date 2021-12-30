package com.app.sistemmonitoring.santri;

import android.content.Context;
import android.os.AsyncTask;
import android.util.Log;

import com.app.sistemmonitoring.JSONParser;
import com.app.sistemmonitoring.MainActivity;
import com.app.sistemmonitoring.utils.PreferenceUtils;

import org.apache.http.NameValuePair;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;

public class RequestDataSantri {
    private Context context;
    public static Santri santri = new Santri();
    JSONParser jsonParser = new JSONParser();


    public RequestDataSantri(Context context) {
        super();
        this.context = context;
    }

    public void GetDataSantri() {
        new GetDataSantri().execute();
    }

    class GetDataSantri extends AsyncTask<String, String, String> {

        @Override
        protected String doInBackground(String... strings) {
            try {
                JSONObject ob = new JSONObject(PreferenceUtils.GetUsername(context));
                JSONObject obUser = new JSONObject(ob.getString("user"));
                String niss = obUser.optString("username");

                List<NameValuePair> params = new ArrayList<NameValuePair>();
                JSONObject json = jsonParser.makeHttpRequest(MainActivity.apiURL + "get-data-santri/" + niss,
                        "GET", params);
                return json.toString();
            } catch(JSONException e) {
                e.printStackTrace();
            }
            return null;
        }

        @Override
        protected void onPostExecute(String result) {
            try {
                JSONObject json = new JSONObject(result);
                String id = json.optString("id");
                String nis = json.optString("nis");
                String nama = json.optString("nama");
                String alamat = json.optString("alamat");
                String tempatLahir = json.optString("tempat_lahir");
                String tanggalLahir = json.optString("tanggal_lahir");
                String kewarganegaraan = json.optString("kewarganegaraan");
                String angkatan = json.optString("angkatan");
                String jenisKelamin = json.optString("jenis_kelamin");
                String agama = json.optString("agama");
                String ayah = json.optString("ayah");
                String ibu = json.optString("ibu");
                String jenjang = json.optString("jenjang");
                santri.SetId(id);
                santri.SetNis(nis);
                santri.SetNama(nama);
                santri.SetAlamat(alamat);
                Log.i("Coba","AAAAAAAAAAAAAAAAAAAAAAAAAAA");
                Log.i("Response nama", santri.GetNama());
            } catch(JSONException e) {
                e.printStackTrace();
            }
        }
    }
}
