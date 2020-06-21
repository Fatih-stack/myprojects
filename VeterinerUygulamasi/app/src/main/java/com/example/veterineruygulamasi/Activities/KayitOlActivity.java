package com.example.veterineruygulamasi.Activities;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;

import com.example.veterineruygulamasi.Models.RegisterPojo;
import com.example.veterineruygulamasi.R;
import com.example.veterineruygulamasi.RestApi.ManagerAll;
import com.example.veterineruygulamasi.Utils.Warnings;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class KayitOlActivity extends AppCompatActivity {
    private Button kayitOlButon;
    private EditText registerPassword, registerUserName, registerMailAdres;
    private TextView registerText;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_kayit_ol);
        tanimla();
        registerToUser();
        changeActivity();
    }

    public void tanimla()
    {
        kayitOlButon = (Button) findViewById(R.id.kayitOlButton);
        registerPassword = (EditText) findViewById(R.id.registerParola);
        registerUserName = (EditText) findViewById(R.id.registerUserName);
        registerMailAdres = (EditText) findViewById(R.id.registerMailAdres);
        registerText = (TextView) findViewById(R.id.registerText);
    }

    public void registerToUser()
    {
        kayitOlButon.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String mail = registerMailAdres.getText().toString();
                String userName = registerUserName.getText().toString();
                String pass = registerPassword.getText().toString();
                register(mail, userName, pass);
                delete();
            }
        });
    }

    public void register(String userMailAdres, String userName, String userPass)
    {
       Call<RegisterPojo> reg = ManagerAll.getInstance().kayitOl(userMailAdres, userName, userPass);

       reg.enqueue(new Callback<RegisterPojo>() {
           @Override
           public void onResponse(Call<RegisterPojo> call, Response<RegisterPojo> response) {
               if(response.isSuccessful()){
                   Toast.makeText(getApplicationContext(), response.body().getText(), Toast.LENGTH_LONG).show();
                   Intent intent  = new Intent(KayitOlActivity.this, GirisYapActivity.class);
                   startActivity(intent);
                   finish();
               }
               else{
                   Toast.makeText(getApplicationContext(), response.body().getText(), Toast.LENGTH_LONG).show();
               }

           }

           @Override
           public void onFailure(Call<RegisterPojo> call, Throwable t) {
               Toast.makeText(getApplicationContext(), Warnings.internetProblemText, Toast.LENGTH_LONG).show();
               Log.i("Testttt",  " " + t.toString());
           }
       });
    }

    public void changeActivity()
    {
        registerText.setOnClickListener(new View.OnClickListener(){
            @Override
            public void onClick(View view){
                Intent intent = new Intent(KayitOlActivity.this, GirisYapActivity.class);
                startActivity(intent);
                finish();
            }
        });
    }

    public void delete(){
        registerMailAdres.setText("");
        registerUserName.setText("");
        registerPassword.setText("");
    }
}
