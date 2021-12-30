package com.app.sistemmonitoring.ui.absensi;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import com.app.sistemmonitoring.R;

import org.w3c.dom.Text;

public class Adapter extends ArrayAdapter<String> {
    private String[] mataPelajaran = {};
    private String[] kelas = {};
    private String[] pembina, semester, tahun_ajaran = {};
    private Context context;
    LayoutInflater layoutInflater;
    public Adapter(@NonNull Context context,
                   String[] mataPelajaran, String[] pembina,
                   String[] kelas, String[] semester, String[] tahun_ajaran) {
        super(context, R.layout.layout, mataPelajaran);
        this.context = context;
        this.mataPelajaran = mataPelajaran;
        this.pembina = pembina;
        this.kelas = kelas;
        this.semester = semester;
        this.tahun_ajaran = tahun_ajaran;
    }

    public class ViewHolder {
        TextView tvMataPelajaran;
        TextView tvPembina;
        TextView tvKelas;
        TextView tvSemester;
    }

    @NonNull
    @Override
    public View getView(int position, @Nullable View convertView, @NonNull ViewGroup parent) {
        if (convertView == null) {
            layoutInflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
            convertView = layoutInflater.inflate(R.layout.layout, null);
        }

        final ViewHolder holder = new ViewHolder();
        holder.tvMataPelajaran = convertView.findViewById(R.id.tvMataKuliah);
        holder.tvPembina = convertView.findViewById(R.id.tvDosen);
        holder.tvKelas = convertView.findViewById(R.id.tvKelas);
        holder.tvSemester = convertView.findViewById(R.id.tvSemester);

        //assign data
        holder.tvMataPelajaran.setText(mataPelajaran[position]);
        holder.tvPembina.setText("Pembina: " + pembina[position]);
        holder.tvKelas.setText("Kelas: " + kelas[position]);
        holder.tvSemester.setText(semester[position] + " - " + tahun_ajaran[position]);
        return convertView;
    }
}
