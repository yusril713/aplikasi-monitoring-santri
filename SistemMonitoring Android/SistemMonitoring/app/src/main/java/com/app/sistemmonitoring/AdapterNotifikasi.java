package com.app.sistemmonitoring;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import com.app.sistemmonitoring.R;

public class AdapterNotifikasi extends ArrayAdapter<String> {
    String[] title;
    String[] keterangan;
    String[] tanggal;
    private Context context;
    private LayoutInflater layoutInflater;
    public AdapterNotifikasi(@NonNull Context context, String[] title, String[] keterangan,
                      String[] tanggal) {
        super(context, R.layout.model_notifikasi, title);
        this.context = context;
        this.title = title;
        this.keterangan = keterangan;
        this.tanggal = tanggal;
    }

    @NonNull
    @Override
    public View getView(int position, @Nullable View convertView, @NonNull ViewGroup parent) {
        if (convertView == null) {
            layoutInflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
            convertView = layoutInflater.inflate(R.layout.model_notifikasi, null);
        }

        NotifikasiViewHolder holder = new NotifikasiViewHolder();
        holder.tvTitle = convertView.findViewById(R.id.tvTitleNotif);
        holder.tvTanggal = convertView.findViewById(R.id.tvTanggalNotifikasi);
        holder.tvKeterangan = convertView.findViewById(R.id.tvNotifikasi);

        holder.tvTitle.setText(title[position]);
        holder.tvTanggal.setText(keterangan[position]);
        holder.tvKeterangan.setText("");
        return convertView;
    }

    public class NotifikasiViewHolder {
        TextView tvTitle;
        TextView tvTanggal;
        TextView tvKeterangan;
    }
}
