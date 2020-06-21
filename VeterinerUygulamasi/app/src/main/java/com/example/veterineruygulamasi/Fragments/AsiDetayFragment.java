package com.example.veterineruygulamasi.Fragments;

import android.os.Bundle;

import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;

import com.example.veterineruygulamasi.Adapters.SanalKarneGecmisAdapter;
import com.example.veterineruygulamasi.Models.AsiModel;
import com.example.veterineruygulamasi.R;
import com.example.veterineruygulamasi.RestApi.ManagerAll;
import com.example.veterineruygulamasi.Utils.ChangeFragment;
import com.example.veterineruygulamasi.Utils.GetSharedPreferences;

import java.util.ArrayList;
import java.util.List;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class AsiDetayFragment extends Fragment {

    private View view;
    private String musId, petId;
    private GetSharedPreferences getSharedPreferences;
    private RecyclerView asiDetayRecylerView;
    private SanalKarneGecmisAdapter adapter;
    private List<AsiModel> list;
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        view = inflater.inflate(R.layout.fragment_asi_detay, container, false);
        tanimla();
        getGecmisAsi();
        return view;
    }

    public void tanimla(){
        petId = getArguments().getString("petid").toString();
        getSharedPreferences = new GetSharedPreferences(getActivity());
        musId = getSharedPreferences.getSession().getString("id",null);
        asiDetayRecylerView = (RecyclerView) view.findViewById(R.id.asiDetayRecylerView);
        RecyclerView.LayoutManager layoutManager = new GridLayoutManager(getContext(), 1);
        asiDetayRecylerView.setLayoutManager(layoutManager);
        list = new ArrayList<>();
    }

    public void getGecmisAsi()
    {
        Call<List<AsiModel>> req = ManagerAll.getInstance().getGecmisAsi(musId, petId);
        req.enqueue(new Callback<List<AsiModel>>() {
            @Override
            public void onResponse(Call<List<AsiModel>> call, Response<List<AsiModel>> response) {
                if(response.body().get(0).isTf()){
                    list = response.body();
                    adapter = new SanalKarneGecmisAdapter(list,getContext());
                    asiDetayRecylerView.setAdapter(adapter);
                    Toast.makeText(getContext(), "Petinize ait " + list.size() +
                            " adet geçmişte yapılan aşı bulunmaktadır.", Toast.LENGTH_LONG).show();
                }
                else {
                    ChangeFragment changeFragment = new ChangeFragment(getContext());
                    changeFragment.change(new SanalKarnePetler());
                    Toast.makeText(getContext(), "Petinize ait geçmişte yapılan aşı bulunmamaktadır.", Toast.LENGTH_LONG).show();
                }
            }

            @Override
            public void onFailure(Call<List<AsiModel>> call, Throwable t) {

            }
        });
    }
}
