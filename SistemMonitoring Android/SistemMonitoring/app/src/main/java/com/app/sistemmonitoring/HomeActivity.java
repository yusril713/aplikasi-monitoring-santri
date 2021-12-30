package com.app.sistemmonitoring;

import android.os.Bundle;
import android.view.MenuItem;
import android.view.Menu;
import android.view.View;
import android.widget.TextView;

import com.app.sistemmonitoring.utils.PreferenceUtils;
import com.google.android.material.navigation.NavigationView;

import androidx.navigation.NavController;
import androidx.navigation.Navigation;
import androidx.navigation.ui.AppBarConfiguration;
import androidx.navigation.ui.NavigationUI;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;

import org.json.JSONException;
import org.json.JSONObject;

public class HomeActivity extends AppCompatActivity {
    public static TextView  tvNavNama, tvNavNoInduk;
    private AppBarConfiguration mAppBarConfiguration;
    public static JSONObject ob;
    public static JSONObject obUser;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_home);

        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);

        DrawerLayout drawer = findViewById(R.id.drawer_layout);
        NavigationView navigationView = findViewById(R.id.nav_view);
        // Passing each menu ID as a set of Ids because each
        // menu should be considered as top level destinations.
        mAppBarConfiguration = new AppBarConfiguration.Builder(
                R.id.nav_home, R.id.nav_gallery, R.id.nav_slideshow, R.id.nav_tentang_santri, R.id.nav_hafidz, R.id.nav_info)
                .setDrawerLayout(drawer)
                .build();
        NavController navController = Navigation.findNavController(this, R.id.nav_host_fragment);
        NavigationUI.setupActionBarWithNavController(this, navController, mAppBarConfiguration);
        NavigationUI.setupWithNavController(navigationView, navController);

        MenuItem navLogOutItem = navigationView.getMenu().findItem(R.id.nav_logout);
        navLogOutItem.setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() {
            @Override
            public boolean onMenuItemClick(MenuItem item) {
                PreferenceUtils.clearLoggedInUser(getBaseContext());
                finish();
                return false;
            }
        });
        init(navigationView);
        //setNavigationViewListener();
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.home, menu);
        return true;
    }

    @Override
    public boolean onSupportNavigateUp() {
        NavController navController = Navigation.findNavController(this, R.id.nav_host_fragment);
        return NavigationUI.navigateUp(navController, mAppBarConfiguration)
                || super.onSupportNavigateUp();
    }

    public void init(NavigationView navigationView) {
        View headerView = navigationView.getHeaderView(0);
        tvNavNama = (TextView) headerView.findViewById(R.id.tvNavNama);
        tvNavNoInduk = (TextView) headerView.findViewById(R.id.tvNavNoInduk);
        //dataSantri.GetDataSantri();
        SetNavigation();
    }

    public void SetNavigation() {
        try {
            ob = new JSONObject(PreferenceUtils.GetUsername(getApplicationContext()));
            obUser = new JSONObject(ob.getString("user"));
            String nama = obUser.optString("nama");
            String nis = obUser.optString("nis");
            tvNavNama.setText(nama);
            tvNavNoInduk.setText(nis);
        } catch(JSONException e) {
            e.printStackTrace();
        }
    }
}
