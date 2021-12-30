package com.app.sistemmonitoring;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import com.app.sistemmonitoring.ui.absensi.AbsensiFragment;
import com.app.sistemmonitoring.ui.spp.AdapterSpp;

public class AdapterDetailAbsensi extends ArrayAdapter<String> {
    String[] tanggal;
    String[] keterangan;
    Context context;
    LayoutInflater layoutInflater;
    public AdapterDetailAbsensi(@NonNull Context context, String[] tanggal, String[] keterangan) {
        super(context, R.layout.model_detail_absensi, tanggal);
        this.context = context;
        this.tanggal = tanggal;
        this.keterangan = keterangan;
    }

    @NonNull
    @Override
    public View getView(int position, @Nullable View convertView, @NonNull ViewGroup parent) {
        if (convertView == null) {
            layoutInflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
            convertView = layoutInflater.inflate(R.layout.model_detail_absensi, null);
        }

        DetailAbsensiViewHolder holder = new DetailAbsensiViewHolder();
        holder.tvTanggal = convertView.findViewById(R.id.tvTanggaDetailAbsensi);
        holder.tvKeterangan = convertView.findViewById(R.id.tvKeteranganDetailAbsensi);
        holder.tvMapel = convertView.findViewById(R.id.tvMapelDetailAbsensi);
        holder.tvNama = convertView.findViewById(R.id.tvNamaDetailAbsensi);
        holder.img = convertView.findViewById(R.id.imageDetailAbsensi);

        String ket = "";
        if (keterangan[position].equals("H"))
            ket = "Hadir";
        else if (keterangan[position].equals("I"))
            ket = "Izin";
        else if (keterangan[position].equals("S"))
            ket = "Sakit";
        else
            ket = "Alfa / Tanpa Keterangan";

        holder.tvNama.setText("Nama: " + HomeActivity.obUser.optString("nama"));
        holder.tvMapel.setText("Mata Pelajaran: " + AbsensiFragment.mapelDetailAbsensi);
        holder.tvTanggal.setText("Tanggal: " + tanggal[position]);
        holder.tvKeterangan.setText("Keterangan: " + ket);
        holder.img.setImageResource(R.drawable.logo);
        return convertView;
    }

    public class DetailAbsensiViewHolder {
        TextView tvTanggal;
        TextView tvMapel;
        TextView tvKeterangan;
        TextView tvNama;
        ImageView img;
    }
}
