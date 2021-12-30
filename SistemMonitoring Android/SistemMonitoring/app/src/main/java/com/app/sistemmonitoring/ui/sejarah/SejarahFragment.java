package com.app.sistemmonitoring.ui.sejarah;

import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProviders;

import android.os.Bundle;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;

import android.text.Layout;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.app.sistemmonitoring.R;

public class SejarahFragment extends Fragment {

    private SejarahViewModel mViewModel;
    private TextView tvSejarah;

    public static SejarahFragment newInstance() {
        return new SejarahFragment();
    }

    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container,
                             @Nullable Bundle savedInstanceState) {
        mViewModel =
                ViewModelProviders.of(this).get(SejarahViewModel.class);
        View root = inflater.inflate(R.layout.sejarah_fragment, container, false);
        tvSejarah = (TextView) root.findViewById(R.id.tvSejarah);
        mViewModel.getText().observe(getViewLifecycleOwner(), new Observer<String>() {
            @Override
            public void onChanged(@Nullable String s) {
                String sejarah = "Pondok Pesantren Nurul Ikhwan. " +
                        "Pondok Pesantren ini didirikan pada tahun " +
                        "2009 beralamat di Dusun Matana, Tellumpoccoe " +
                        "Kecamatan Marusu Kabupaten Maros Sulawesi selatan 90552, " +
                        "Pondok ini di bina oleh ustad Ansar. " +
                        "Beliau mendirikan pondok pesantren diatas tanah miliknya sendiri. " +
                        "Beliau mula-mula mendirikan Madrasah Diniyah di dekat rumahnya, namun" +
                        " karena madrasahnya tidak cukup untuk menampung para santri, " +
                        "akhirnya beliau mendirikan pondok pesantren.\n\n" +
                        "Pondok Pesantren Nurul Ikhwan berkembang pesat. " +
                        "Baik mengenai santrinya maupun perkembangan fisiknya " +
                        "karena keadaan pondok pesantren sangat dibutuhkan masyarakat. " +
                        "Pondok Pesantren Nurul Ikhwan merupakan lembaga pendidikan " +
                        "yang dipersiapkan untuk mendidik generasi muda dengan " +
                        "berbagai macam ilmu agama dan ilmu pendidikan, " +
                        "dalam rangka meningkatkan sumber daya manusia. " +
                        "Diharapkan dengan berbagai macam ilmu agama dan " +
                        "ilmu pendidikan dapat dijadikan bekal ketika " +
                        "terjun dilapangan (masyarakat) agar dapat mandiri.\n\n" +
                        "Pondok Pesantren Nurul Ikhwan membekali para santrinya " +
                        "dalam bidang ilmu agama yakni menghafalkan al-Qur’an " +
                        "bagi santri yang berminat dan tanpa paksaan dari pihak " +
                        "lembaga pesantren, dengan harapan setelah tholabul ilmi " +
                        "dapat mengamalkan ilmunya dalam bidang al-Qur’an " +
                        "pada masyarakat atau daerah masing-masing, karena " +
                        "kita ketahui bahwa al-Qur’an merupakan pedoman " +
                        "hidup manusia dan terpenting dalam kehidupan.";
                tvSejarah.setText(sejarah);
                tvSejarah.setJustificationMode(Layout.JUSTIFICATION_MODE_INTER_WORD);
            }
        });
        return root;
    }
}
