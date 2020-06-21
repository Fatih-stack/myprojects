package com.example.veterineruygulamasi.Activities;

import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;

import androidx.appcompat.app.AppCompatActivity;

import com.example.veterineruygulamasi.Fragments.HomeFragment;
import com.example.veterineruygulamasi.R;
import com.example.veterineruygulamasi.Utils.ChangeFragment;
import com.example.veterineruygulamasi.Utils.GetSharedPreferences;
import com.google.android.material.button.MaterialButton;

public class MainActivity extends AppCompatActivity {

    private SharedPreferences getSharedPreferences;
    private GetSharedPreferences preferences;
    private ImageView anasayfaButon, AramaYapButon, cikisYapButon;
    private ChangeFragment changeFragment;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        getFragment();
        tanımla();
        kontrol();
        action();
    }

    private void getFragment(){
        changeFragment = new ChangeFragment(MainActivity.this);
        changeFragment.change(new HomeFragment());
    }

    public void action()
    {
        anasayfaButon.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                changeFragment.change(new HomeFragment());
            }
        });
        cikisYapButon.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                GetSharedPreferences getSharedPreferences = new GetSharedPreferences(MainActivity.this);
                getSharedPreferences.deleteSession();
                Intent intent = new Intent(MainActivity.this, MainActivity.class);
                startActivity(intent);
            }
        });
        AramaYapButon.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(Intent.ACTION_VIEW);
                intent.setData(Uri.parse("tel:00000000000"));
                startActivity(intent);
            }
        });
    }

    public void tanımla()
    {
        preferences = new GetSharedPreferences(MainActivity.this);
        getSharedPreferences = preferences.getSession();
        anasayfaButon = findViewById(R.id.AnasayfaButon);
        AramaYapButon = findViewById(R.id.AramaYapButon);
        cikisYapButon = findViewById(R.id.CikisYapButon);
    }

    public void kontrol(){
        if(getSharedPreferences.getString("id", null) == null && getSharedPreferences.getString("mailadres", null) == null
                && getSharedPreferences.getString("username", null) == null)
        {
            Intent intent = new Intent(MainActivity.this, GirisYapActivity.class);
            startActivity(intent);
            finish();
        }
    }
}
