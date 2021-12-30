package com.app.sistemmonitoring.ui.santri;

import android.app.DatePickerDialog;
import android.app.ProgressDialog;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.AutoCompleteTextView;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProviders;

import com.app.sistemmonitoring.HomeActivity;
import com.app.sistemmonitoring.JSONParser;
import com.app.sistemmonitoring.MainActivity;
import com.app.sistemmonitoring.R;
import com.app.sistemmonitoring.utils.PreferenceUtils;

import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONException;
import org.json.JSONObject;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

public class SantriFragment extends Fragment {
    private FragmentViewModel santriViewModel;
    private String idSantri;
    private DatePickerDialog.OnDateSetListener onDateSetListener;
    private static String[] kewarganegaraan = new String[] {"WNI", "WNA"};
    private static String[] jenisKelamin = new String[]{"Laki-laki", "Perempuan"};
    private static String[] jenjang = new String[]{"MI", "MTs", "MA"};
    private DateFormat dateFormat;
    private EditText txtNoInduk, txtNama, txtAlamat,
        txtTempatLahir, txtTanggalLahir,
        txtAngkatan, txtAgama, txtAyah,
        txtIbu;
    private Button btnSimpan;
    private Spinner txtKewarganegaraan, txtJenjang, txtJenisKelamin;
    private ProgressDialog progressDialog;
    private String METHOD = "_method";
    private JSONParser jsonParser = new JSONParser();

    @Override
    public View onCreateView(@NonNull LayoutInflater inflater,
                             ViewGroup container, Bundle savedInstanceState) {
        santriViewModel =
                ViewModelProviders.of(this).get(FragmentViewModel.class);
        View root = inflater.inflate(R.layout.fragment_santri, container, false);
        init(root);
        Log.i("Pesan", "This is santri fragment");
        santriViewModel.getText().observe(getViewLifecycleOwner(), new Observer<String>() {
            @Override
            public void onChanged(@Nullable String s) {
                SetDataSantri();
            }
        });
        return root;
    }

    public void init(View root) {
        txtNoInduk = (EditText) root.findViewById(R.id.txtNis);
        txtNama = (EditText) root.findViewById(R.id.txtNama);
        txtAlamat = (EditText) root.findViewById(R.id.txtAlamat);
        txtKewarganegaraan = (Spinner) root.findViewById(R.id.txtKewarganegaraan);
        txtTempatLahir = (EditText) root.findViewById(R.id.txtTempatLahir);
        txtTanggalLahir = (EditText) root.findViewById(R.id.txtTanggalLahir);
        txtAngkatan = (EditText) root.findViewById(R.id.txtAngkatan);
        txtAyah = (EditText) root.findViewById(R.id.txtAyah);
        txtAgama = (EditText) root.findViewById(R.id.txtAgama);
        txtIbu = (EditText) root.findViewById(R.id.txtIbu);
        txtJenjang = (Spinner) root.findViewById(R.id.txtJenjang);
        txtJenisKelamin = (Spinner) root.findViewById(R.id.txtJenisKelamin);
        dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        txtTanggalLahir.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Calendar cal = Calendar.getInstance();
                int year = cal.get(Calendar.YEAR);
                int month = cal.get(Calendar.MONTH);
                int day = cal.get(Calendar.DAY_OF_MONTH);

                DatePickerDialog datePickerDialog = new DatePickerDialog(getContext(),
                        android.R.style.Theme_Holo_Light_Dialog_MinWidth,
                        onDateSetListener, year, month, day);
                datePickerDialog.getWindow().setBackgroundDrawable(new ColorDrawable(Color.TRANSPARENT));
                datePickerDialog.show();
            }
        });

        onDateSetListener = new DatePickerDialog.OnDateSetListener() {
            @Override
            public void onDateSet(DatePicker view, int year, int month, int dayOfMonth) {
                String date = year + "-" + month + "-" + dayOfMonth;
                txtTanggalLahir.setText(date);
            }
        };

        btnSimpan = (Button) root.findViewById(R.id.btnSimpan);
        btnSimpan.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String nis = txtNoInduk.getText().toString();
                String nama = txtNama.getText().toString();
                String alamat = txtAlamat.getText().toString();
                String tempalLahir = txtTempatLahir.getText().toString();
                String tanggalLahir = txtTanggalLahir.getText().toString();
                String kewarganegaraan = txtKewarganegaraan.getSelectedItem().toString();
                String jenisKelamin = txtJenisKelamin.getSelectedItem().toString();
                String angkatan = txtAngkatan.getText().toString();
                String ayah = txtAyah.getText().toString();
                String ibu = txtIbu.getText().toString();
                String jenjang = txtJenjang.getSelectedItem().toString();
                new SimpanDataSantri().execute(nis, nama, alamat, tempalLahir,
                        tanggalLahir, kewarganegaraan, jenisKelamin, angkatan,
                        ayah, ibu, jenjang);
            }
        });
    }

    public void SetDataSantri() {
        idSantri = HomeActivity.obUser.optString("id");
        txtNama.setText(HomeActivity.obUser.optString("nama"));
        txtAgama.setText(HomeActivity.obUser.optString("agama"));
        txtAlamat.setText(HomeActivity.obUser.optString("alamat"));
        txtAngkatan.setText(HomeActivity.obUser.optString("angkatan"));
        txtAyah.setText(HomeActivity.obUser.optString("ayah"));
        txtIbu.setText(HomeActivity.obUser.optString("ibu"));
        txtTanggalLahir.setText(HomeActivity.obUser.optString("tanggal_lahir"));
        txtNoInduk.setText(HomeActivity.obUser.optString("nis"));
        txtTempatLahir.setText(HomeActivity.obUser.optString("tempat_lahir"));

        String kwrg = HomeActivity.obUser.optString("kewarganegaraan");
        String jk = (HomeActivity.obUser.optString("jenis_kelamin").equals("L") ? "Laki-laki" : "Perempuan");
        Log.i("Jenis Kelamin", jk);
        String jj = HomeActivity.obUser.optString("jenjang");

        ArrayAdapter<String> adapterKewarganegaraan = new ArrayAdapter<String>(getContext(),
                android.R.layout.simple_spinner_item, kewarganegaraan);
        ArrayAdapter<String> adapterJenisKelamin = new ArrayAdapter<String>(getContext(),
                android.R.layout.simple_spinner_item, jenisKelamin);
        ArrayAdapter<String> adapterJenjang = new ArrayAdapter<String>(getContext(),
                android.R.layout.simple_spinner_item, jenjang);
        adapterKewarganegaraan.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        txtKewarganegaraan.setAdapter(adapterKewarganegaraan);
        adapterJenisKelamin.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        txtJenisKelamin.setAdapter(adapterJenisKelamin);
        adapterJenjang.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        txtJenjang.setAdapter(adapterJenjang);

        if (!kwrg.equals("null")) {
            int spinnerPosition = adapterKewarganegaraan.getPosition(kwrg);
            txtKewarganegaraan.setSelection(spinnerPosition);
        }

        if (!jk.equals("null")) {
            int spinnerPosition = adapterJenisKelamin.getPosition(jk);
            txtJenisKelamin.setSelection(spinnerPosition);
        }

        if (!jj.equals("null")) {
            int spinnerPosition = adapterJenjang.getPosition(jj);
            txtJenjang.setSelection(spinnerPosition);
        }
    }

    public class SimpanDataSantri extends AsyncTask<String, String, String>{
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
            params.add(new BasicNameValuePair(METHOD, "PUT"));
            params.add(new BasicNameValuePair("nis", strings[0]));
            params.add(new BasicNameValuePair("nama", strings[1]));
            params.add(new BasicNameValuePair("alamat", strings[2]));
            params.add(new BasicNameValuePair("tempat_lahir", strings[3]));
            params.add(new BasicNameValuePair("tanggal_lahir", strings[4]));
            params.add(new BasicNameValuePair("kewarganegaraan", strings[5]));
            params.add(new BasicNameValuePair("jenis_kelamin", (strings[6].equals("Laki-laki")? "L": "P")));
            params.add(new BasicNameValuePair("angkatan", strings[7]));
            params.add(new BasicNameValuePair("ayah", strings[8]));
            params.add(new BasicNameValuePair("ibu", strings[9]));
            params.add(new BasicNameValuePair("jenjang", strings[10]));

            JSONObject json = jsonParser.makeHttpRequest(MainActivity.apiURL + "santri/" + idSantri + "/update",
                    "POST", params);
            progressDialog.cancel();
            return json.toString();
        }

        @Override
        protected void onPostExecute(String s) {
            super.onPostExecute(s);
            try {
                JSONObject json = new JSONObject(s);
                int success = json.getInt("status");
                PreferenceUtils.SaveUsername(json.toString(), getContext());
                Log.i("Response", json.toString());
                if (success == 1) {
                    Toast.makeText(getContext(), "Data berhasil diperbaharui", Toast.LENGTH_SHORT).show();
                    Perbarui();
                } else {
                    Toast.makeText(getContext(), "Data gagal diperbaharui", Toast.LENGTH_SHORT).show();
                }

            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    public void Perbarui() {
        try {
            HomeActivity.ob = new JSONObject(PreferenceUtils.GetUsername(getContext()));
            HomeActivity.obUser = new JSONObject(HomeActivity.ob.getString("user"));
            String nama = HomeActivity.obUser.optString("nama");
            String nis = HomeActivity.obUser.optString("nis");
            HomeActivity.tvNavNama.setText(nama);
            HomeActivity.tvNavNoInduk.setText(nis);
            SetDataSantri();
        } catch(JSONException e) {
            e.printStackTrace();
        }
    }
}
