package com.app.sistemmonitoring.ui.prestasi;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import com.app.sistemmonitoring.R;

public class AdapterPrestasi extends ArrayAdapter<String> {
    private Context context;
    private String[] tanggal, prestasi = {};
    private LayoutInflater layoutInflater;
    public AdapterPrestasi(@NonNull Context context, String[] tanggal, String[] prestasi) {
        super(context, R.layout.model_prestasi, tanggal);
        this.context = context;
        this.tanggal = tanggal;
        this.prestasi = prestasi;
    }

    @NonNull
    @Override
    public View getView(int position, @Nullable View convertView, @NonNull ViewGroup parent) {
        if (convertView == null) {
            layoutInflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
            convertView = layoutInflater.inflate(R.layout.model_prestasi, null);
        }

        PrestasiViewHolder holder = new PrestasiViewHolder();
        holder.tvPrestasi = convertView.findViewById(R.id.tvPrestasi);

        holder.tvPrestasi.setText(prestasi[position]);
        return convertView;
    }

    public class PrestasiViewHolder {
        TextView tvPrestasi;
    }
}
