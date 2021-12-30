package com.app.sistemmonitoring.ui.hafidz;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import com.app.sistemmonitoring.R;

public class AdapterHafidz extends ArrayAdapter<String> {
    private Context context;
    private String[] tanggal;
    private String[] hafalan;
    private LayoutInflater layoutInflater;
    public AdapterHafidz(@NonNull Context context, String[] tanggal, String[] hafalan) {
        super(context, R.layout.model_hafidz, tanggal);
        this.context = context;
        this.tanggal = tanggal;
        this.hafalan = hafalan;
    }

    @NonNull
    @Override
    public View getView(int position, @Nullable View convertView, @NonNull ViewGroup parent) {
        if (convertView == null) {
            layoutInflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
            convertView = layoutInflater.inflate(R.layout.model_hafidz, null);
        }
        HafidzViewHolder holder = new HafidzViewHolder();
        holder.tvHafalan = convertView.findViewById(R.id.tvHafalan);

        holder.tvHafalan.setText(hafalan[position]);
        return convertView;
    }

    public class HafidzViewHolder {
        TextView tvHafalan;
    }
}
