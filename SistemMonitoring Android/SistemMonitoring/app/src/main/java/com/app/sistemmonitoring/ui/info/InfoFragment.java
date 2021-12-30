package com.app.sistemmonitoring.ui.info;

import androidx.lifecycle.ViewModelProviders;

import android.os.Bundle;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.app.sistemmonitoring.R;

public class InfoFragment extends Fragment {

    private InfoViewModel mViewModel;
    private TextView tvTitle, tvBody, tvFooter;

    public static InfoFragment newInstance() {
        return new InfoFragment();
    }

    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container,
                             @Nullable Bundle savedInstanceState) {
        View root = inflater.inflate(R.layout.info_fragment, container, false);
        //final TextView textView = root.findViewById(R.id.text_home);
        tvTitle = root.findViewById(R.id.textTitle);
        tvBody = root.findViewById(R.id.textBody);
        tvFooter = root.findViewById(R.id.textFooter);

        tvTitle.setText("PIMPINAN PONDOK PESANTREN");
        tvBody.setText("NURUL IKHWAN MAROS");
        tvFooter.setText("Anwar, S.Ag, MA");
        return root;
    }

}