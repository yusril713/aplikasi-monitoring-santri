package com.app.sistemmonitoring.ui.pelanggaran;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import com.app.sistemmonitoring.R;

public class AdapterPelanggaran extends ArrayAdapter<String> {
    private String[] tanggal;
    private String[] pelanggaran;
    private Context context;
    private LayoutInflater layoutInflater;
    public AdapterPelanggaran(@NonNull Context context, String[] tanggal, String[] pelanggaran) {
        super(context, R.layout.model_pelanggaran, tanggal);
        this.context = context;
        this.tanggal = tanggal;
        this.pelanggaran = pelanggaran;
    }

    @NonNull
    @Override
    public View getView(int position, @Nullable View convertView, @NonNull ViewGroup parent) {
        if (convertView == null) {
            layoutInflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
            convertView = layoutInflater.inflate(R.layout.model_pelanggaran, null);
        }
        final PelanggaranViewHolder holder = new PelanggaranViewHolder();
        holder.tvTanggal = convertView.findViewById(R.id.tvTanggalPelanggaran);
        holder.tvPelanggaran = convertView.findViewById(R.id.tvPelanggaran);

        holder.tvTanggal.setText(tanggal[position]);
        holder.tvPelanggaran.setText(pelanggaran[position]);
        return convertView;
    }

    public class PelanggaranViewHolder {
        TextView tvTanggal;
        TextView tvPelanggaran;
    }
}
