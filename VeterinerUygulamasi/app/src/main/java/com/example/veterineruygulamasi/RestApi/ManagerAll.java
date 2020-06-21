package com.example.veterineruygulamasi.RestApi;

import com.example.veterineruygulamasi.Models.AnswerModel;
import com.example.veterineruygulamasi.Models.AsiModel;
import com.example.veterineruygulamasi.Models.AskQuestion;
import com.example.veterineruygulamasi.Models.DeleteAnswerModel;
import com.example.veterineruygulamasi.Models.KampanyaModel;
import com.example.veterineruygulamasi.Models.LoginModel;
import com.example.veterineruygulamasi.Models.PetModel;
import com.example.veterineruygulamasi.Models.RegisterPojo;

import java.util.List;

import retrofit2.Call;

/**
 * Created by mk on 07.04.2020.
 */

public class ManagerAll extends BaseManager {
    public static ManagerAll ourInstance = new ManagerAll();

    public static synchronized ManagerAll getInstance()
    {
        return ourInstance;
    }

    public Call<RegisterPojo> kayitOl(String mail, String uName, String pass)
    {
        Call<RegisterPojo> call = getRestApiClient().registerUser(mail, uName, pass);
        return call;
    }

    public Call<LoginModel> girisYap(String mail, String pass)
    {
        Call<LoginModel> call = getRestApiClient().loginUser(mail, pass);
        return call;
    }

    public Call<List<PetModel>> getPets(String id)
    {
        Call<List<PetModel>> call = getRestApiClient().getPets(id);
        return call;
    }

    public Call<AskQuestion> askQuestion(String id, String soru)
    {
        Call<AskQuestion> call = getRestApiClient().askQuestion(id, soru);
        return call;
    }

    public Call<List<AnswerModel>> getAnswers(String id)
    {
        Call<List<AnswerModel>> call = getRestApiClient().getAnswers(id);
        return call;
    }

    public Call<List<KampanyaModel>> getKampanya()
    {
        Call<List<KampanyaModel>> call = getRestApiClient().getKampanya();
        return call;
    }

    public Call<DeleteAnswerModel> deleteAnswer(String cevap, String soru)
    {
        Call<DeleteAnswerModel> call = getRestApiClient().deleteAnswer(cevap, soru);
        return call;
    }

    public Call<List<AsiModel>> getAsi(String id)
    {
        Call<List<AsiModel>> call = getRestApiClient().getAsi(id);
        return call;
    }

    public Call<List<AsiModel>> getGecmisAsi(String id, String petid)
    {
        Call<List<AsiModel>> call = getRestApiClient().getGecmisAsi(id, petid);
        return call;
    }
}
