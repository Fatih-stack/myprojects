package com.example.veterineruygulamasi.Fragments;

import android.app.AlertDialog;
import android.os.Bundle;

import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.Toast;

import com.example.veterineruygulamasi.Adapters.AnswersAdapter;
import com.example.veterineruygulamasi.Models.AnswerModel;
import com.example.veterineruygulamasi.Models.AskQuestion;
import com.example.veterineruygulamasi.R;
import com.example.veterineruygulamasi.RestApi.ManagerAll;
import com.example.veterineruygulamasi.Utils.ChangeFragment;
import com.example.veterineruygulamasi.Utils.GetSharedPreferences;
import com.example.veterineruygulamasi.Utils.Warnings;
import com.google.android.material.button.MaterialButton;

import java.util.ArrayList;
import java.util.List;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class HomeFragment extends Fragment {

    private View view;
    private LinearLayout petlerimLayout, sorusorLinearLayout, cevapLayout, kampanyaLinearLayout,
            asiTakipLayout, sanalKarneLayout;
    private ChangeFragment changeFragment;
    private GetSharedPreferences getSharedPreferences;
    private String id;
    private AnswersAdapter answersAdapter;
    private List<AnswerModel> answersList;

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        view = inflater.inflate(R.layout.fragment_home, container, false);
        tanımla();
        action();
        return view;
    }

    public void tanımla()
    {
        petlerimLayout = (LinearLayout) view.findViewById(R.id.petlerimLayout);
        sorusorLinearLayout = (LinearLayout) view.findViewById(R.id.sorusorlinearlayout);
        cevapLayout = (LinearLayout) view.findViewById(R.id.cevapLayout);
        kampanyaLinearLayout = (LinearLayout) view.findViewById(R.id.kampanyaLinearLayout);
        asiTakipLayout = (LinearLayout) view.findViewById(R.id.asiTakipLayout);
        sanalKarneLayout = (LinearLayout) view.findViewById(R.id.sanalKarneLayout);
        answersList = new ArrayList<>();

        changeFragment = new ChangeFragment(getContext());
        getSharedPreferences = new GetSharedPreferences(getActivity());
        id = getSharedPreferences.getSession().getString("id", null);
    }

    public void action()
    {
        petlerimLayout.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                changeFragment.change(new UserPetsFragment());
            }
        });
        sorusorLinearLayout.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                openQuestionAlert();
            }
        });
        cevapLayout.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                getAnswers(id);
            }
        });
        kampanyaLinearLayout.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                changeFragment.change(new KampanyaFragment());
            }
        });
        asiTakipLayout.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                changeFragment.change(new AsiFragment());
            }
        });

        sanalKarneLayout.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                changeFragment.change(new SanalKarnePetler());
            }
        });
    }

    public void openQuestionAlert()
    {
        LayoutInflater layoutInflater = this.getLayoutInflater();
        View view = layoutInflater.inflate(R.layout.sorusoralertlayout, null);

        final EditText sorusoredittext = (EditText) view.findViewById(R.id.sorusorEdittext);
        MaterialButton sorusorbuton = (MaterialButton) view.findViewById(R.id.sorusorButton);

        AlertDialog.Builder alert = new AlertDialog.Builder(getContext());
        alert.setView(view);
        alert.setCancelable(true);
        final AlertDialog alertDialog = alert.create();
        sorusorbuton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String soru = sorusoredittext.getText().toString();
                sorusoredittext.setText("");
                alertDialog.cancel();
                askQuestion(id, soru, alertDialog);
            }
        });
        alertDialog.show();
    }

    public void askQuestion(String mus_id, String text, AlertDialog alr)
    {
        Call<AskQuestion> req = ManagerAll.getInstance().askQuestion(mus_id, text);
        req.enqueue(new Callback<AskQuestion>() {
            @Override
            public void onResponse(Call<AskQuestion> call, Response<AskQuestion> response) {
                if(response.body().isTf())
                {
                    Toast.makeText(getContext(), response.body().getText(), Toast.LENGTH_LONG).show();
                    alr.cancel();
                }
                else {
                    Toast.makeText(getContext(), response.body().getText(), Toast.LENGTH_LONG).show();
                }
            }

            @Override
            public void onFailure(Call<AskQuestion> call, Throwable t) {
                Toast.makeText(getContext(), Warnings.internetProblemText, Toast.LENGTH_LONG).show();
            }
        });
    }

    public void getAnswers(String mus_id)
    {
        final Call<List<AnswerModel>> req = ManagerAll.getInstance().getAnswers(mus_id);
        req.enqueue(new Callback<List<AnswerModel>>() {
            @Override
            public void onResponse(Call<List<AnswerModel>> call, Response<List<AnswerModel>> response) {
                if(response.body().get(0).isTf())
                {
                    if(response.isSuccessful()){
                        answersList = response.body();
                        answersAdapter = new AnswersAdapter(answersList, getContext());
                        openAnswersAlert();
                    }
                }
                else {
                    Toast.makeText(getContext(), "Herhangi bir cevap yok...", Toast.LENGTH_LONG).show();
                }
            }

            @Override
            public void onFailure(Call<List<AnswerModel>> call, Throwable t) {
                Toast.makeText(getContext(), Warnings.internetProblemText, Toast.LENGTH_LONG).show();
            }
        });
    }

    public void openAnswersAlert()
    {
        LayoutInflater layoutInflater = this.getLayoutInflater();
        View view = layoutInflater.inflate(R.layout.cevapalertlayout, null);

        RecyclerView cevapRecyclerView = (RecyclerView) view.findViewById(R.id.cevapRecyclerView);

        AlertDialog.Builder alert = new AlertDialog.Builder(getContext());
        alert.setView(view);
        alert.setCancelable(true);
        final AlertDialog alertDialog = alert.create();
        RecyclerView.LayoutManager layoutManager = new GridLayoutManager(getContext(), 1);
        cevapRecyclerView.setLayoutManager(layoutManager);
        cevapRecyclerView.setAdapter(answersAdapter);

        alertDialog.show();
    }
}
