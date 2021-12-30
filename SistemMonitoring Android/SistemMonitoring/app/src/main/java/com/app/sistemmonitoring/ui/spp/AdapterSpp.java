package com.app.sistemmonitoring.ui.spp;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import com.app.sistemmonitoring.R;

public class AdapterSpp extends ArrayAdapter<String> {
    String[] nis;
    String[] nama;
    String[] semester;
    String[] tahun_ajaran;
    String[] status;
    private Context context;
    private LayoutInflater layoutInflater;
    public AdapterSpp(@NonNull Context context, String[] nis, String[] nama,
                      String[] semester, String[] tahun_ajaran, String[] status) {
        super(context, R.layout.model_spp, nis);
        this.context = context;
        this.nis = nis;
        this.nama = nama;
        this.semester = semester;
        this.tahun_ajaran = tahun_ajaran;
        this.status = status;
    }

    @NonNull
    @Override
    public View getView(int position, @Nullable View convertView, @NonNull ViewGroup parent) {
        if (convertView == null) {
            layoutInflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
            convertView = layoutInflater.inflate(R.layout.model_spp, null);
        }

        SppViewHolder holder = new SppViewHolder();
        holder.tvNis = convertView.findViewById(R.id.tvNisSpp);
        holder.tvNama = convertView.findViewById(R.id.tvNamaSpp);
        holder.tvSemester = convertView.findViewById(R.id.tvSemesterSpp);
        holder.tvStatus = convertView.findViewById(R.id.tvStatusSpp);

        holder.tvNis.setText(nis[position]);
        holder.tvNama.setText(nama[position]);
        holder.tvStatus.setText(status[position]);
        holder.tvSemester.setText(semester[position] + " / " + tahun_ajaran[position]);
        return convertView;
    }

    public class SppViewHolder {
        TextView tvNis;
        TextView tvNama;
        TextView tvSemester;
        TextView tvStatus;
    }
}
