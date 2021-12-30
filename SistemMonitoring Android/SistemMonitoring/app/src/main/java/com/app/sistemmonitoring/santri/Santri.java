package com.app.sistemmonitoring.santri;

import android.content.Context;
import android.os.AsyncTask;
import android.util.Log;

import com.app.sistemmonitoring.JSONParser;
import com.app.sistemmonitoring.MainActivity;
import com.app.sistemmonitoring.utils.PreferenceUtils;

import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;

public class Santri {
    JSONParser jsonParser = new JSONParser();
    private String id;
    private String nis;
    private String nama;
    private String alamat;
    private String tempatLahir;
    private String tanggalLahir;
    private String kewarganegaraan;
    private String angkatan;
    private String jenisKelamin;
    private String agama;
    private String ayah;
    private String ibu;
    private String jenjang;
    Context context;

    public Santri() {}

    public void SetId(String id) {
        this.id = id;
    }

    public void SetNis(String nis) {
        this.nis = nis;
    }

    public void SetNama(String nama) {
        this.nama = nama;
    }

    public void SetAlamat(String alamat) {
        this.alamat = alamat;
    }

    public void SetTempatLahir(String tempatLahir) {
        this.tempatLahir = tempatLahir;
    }

    public void SetTanggalLahir(String tanggalLahir) {
        this.tanggalLahir = tanggalLahir;
    }

    public void SetKewarganegaraan(String kewarganegaraan) {
        this.kewarganegaraan = kewarganegaraan;
    }

    public void SetAngkatan(String angkatan) {
        this.angkatan = angkatan;
    }

    public void SetJenisKelamin(String jenisKelamin) {
        this.jenisKelamin = (jenisKelamin.equals("L")) ? "Laki-laki" : "Perempuan";
    }

    public void SetAgama(String agama) {
        this.agama = agama;
    }

    public void SetAyah(String ayah) {
        this.ayah = ayah;
    }

    public void SetIbu(String ibu) {
        this.ibu = ibu;
    }

    public void SetJenjang(String jenjang) {
        this.jenjang = jenjang;
    }

    public String GetId() {
        return id;
    }

    public String GetNis() {
        return nis;
    }

    public String GetNama() {
        return nama;
    }

    public String GetAlamat() {
        return alamat;
    }

    public String GetTempatLahir() {
        return tempatLahir;
    }

    public String GetTanggalLahir() {
        return tanggalLahir;
    }

    public String GetKewarganegaraan() {
        return kewarganegaraan;
    }

    public String GetAngkatan() {
        return angkatan;
    }

    public String GetJenisKelamin() {
        return jenisKelamin;
    }

    public String GetAgama() {
        return agama;
    }

    public String GetAyah() {
        return ayah;
    }

    public String GetIbu() {
        return ibu;
    }

    public String GetJenjang() {
        return jenjang;
    }
}