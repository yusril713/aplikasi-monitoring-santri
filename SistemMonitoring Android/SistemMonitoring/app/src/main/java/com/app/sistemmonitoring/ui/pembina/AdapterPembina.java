package com.app.sistemmonitoring.ui.pembina;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import com.app.sistemmonitoring.R;

public class AdapterPembina extends ArrayAdapter<String> {
    private Context context;
    private Bitmap[] bitmaps = {};
    private String[] nip = {};
    private String[] nama = {};
    private String[] jenisKelamin = {};
    private String[] noTelp = {};
    private LayoutInflater layoutInflater;

    public AdapterPembina(@NonNull Context context, Bitmap[] bitmaps,
                          String[] nip, String[] nama,
                          String[] jenisKelamin, String[] noTelp) {
        super(context, R.layout.model_pembina, nip);
        this.context = context;
        //this.img = img;
        this.bitmaps = bitmaps;
        this.nip = nip;
        this.nama = nama;
        this.jenisKelamin = jenisKelamin;
        this.noTelp = noTelp;
    }

    public class ViewHolderPembina {
        ImageView img;
        TextView tvNip;
        TextView tvNama;
        TextView tvJenisKelamin;
        TextView tvNoTelp;
    }

    @NonNull
    @Override
    public View getView(int position, @Nullable View convertView, @NonNull ViewGroup parent) {
        if (convertView == null) {
            layoutInflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
            convertView = layoutInflater.inflate(R.layout.model_pembina, null);
        }
        final ViewHolderPembina holder = new ViewHolderPembina();

        //initialize
        holder.img = convertView.findViewById(R.id.imgPembina);
        holder.tvNip = convertView.findViewById(R.id.tvNip);
        holder.tvNama = convertView.findViewById(R.id.tvNamaPembina);
        holder.tvJenisKelamin = convertView.findViewById(R.id.tvJenisKelaminPembina);
        holder.tvNoTelp = convertView.findViewById(R.id.tvNoTelp);

        //assign data
        holder.img.setImageResource(R.drawable.logo);
        holder.tvNip.setText("NIP          :  " + nip[position]);
        holder.tvNama.setText("Nama      :  " + nama[position]);
        holder.tvJenisKelamin.setText("Gender    :  " + jenisKelamin[position]);
        holder.tvNoTelp.setText("No. Telp  :  " + noTelp[position]);
        return convertView;
    }
}
