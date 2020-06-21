package com.example.veterineruygulamasi.Fragments;

import android.os.Bundle;

import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;

import com.example.veterineruygulamasi.Adapters.KampanyaAdapter;
import com.example.veterineruygulamasi.Models.KampanyaModel;
import com.example.veterineruygulamasi.R;
import com.example.veterineruygulamasi.RestApi.ManagerAll;
import com.example.veterineruygulamasi.Utils.ChangeFragment;
import com.example.veterineruygulamasi.Utils.Warnings;

import java.util.ArrayList;
import java.util.List;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class KampanyaFragment extends Fragment {

    private View view;
    private RecyclerView kampanyaRecView;
    private ChangeFragment changeFragment;
    private KampanyaAdapter kampanyaAdapter;
    private List<KampanyaModel> kampanyaList;
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        view = inflater.inflate(R.layout.fragment_kampanya, container, false);
        tanımla();
        getKampanya();
        return view;
    }

    public void tanımla()
    {
        kampanyaRecView = (RecyclerView) view.findViewById(R.id.kampanyaRecView);
        RecyclerView.LayoutManager layoutManager = new GridLayoutManager(getContext(),1);
        kampanyaRecView.setLayoutManager(layoutManager);
        changeFragment = new ChangeFragment(getContext());
        kampanyaList = new ArrayList<>();
    }

    public void getKampanya()
    {
        Call<List<KampanyaModel>> req = ManagerAll.getInstance().getKampanya();
        req.enqueue(new Callback<List<KampanyaModel>>() {
            @Override
            public void onResponse(Call<List<KampanyaModel>> call, Response<List<KampanyaModel>> response) {
                if(response.body().get(0).isTf()){
                    kampanyaList = response.body();
                    kampanyaAdapter = new KampanyaAdapter(kampanyaList, getContext());
                    kampanyaRecView.setAdapter(kampanyaAdapter);
                }else{
                    Toast.makeText(getContext(), "Herhangi bir kampanya bulunmamaktadır...", Toast.LENGTH_LONG).show();
                    changeFragment.change(new HomeFragment());
                }
            }

            @Override
            public void onFailure(Call<List<KampanyaModel>> call, Throwable t) {
                Toast.makeText(getContext(), Warnings.internetProblemText, Toast.LENGTH_LONG).show();
            }
        });
    }
}
