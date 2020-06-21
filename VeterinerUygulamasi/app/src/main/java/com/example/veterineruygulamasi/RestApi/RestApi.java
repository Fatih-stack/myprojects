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
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.POST;

public interface RestApi {

    @FormUrlEncoded
    @POST("kayitol.php")
    Call<RegisterPojo> registerUser(@Field("mailAdres") String mailAdres,@Field("kadi") String kadi,@Field("parola") String parola);

    @FormUrlEncoded
    @POST("giris_yap.php")
    Call<LoginModel> loginUser(@Field("mailAdres") String mailAdres, @Field("parola") String parola);

    @FormUrlEncoded
    @POST("petlerim.php")
    Call<List<PetModel>> getPets(@Field("mus_id") String mus_id);

    @FormUrlEncoded
    @POST("sorusor.php")
    Call<AskQuestion> askQuestion(@Field("id") String id, @Field("soru") String soru );

    @FormUrlEncoded
    @POST("cevapsil.php")
    Call<DeleteAnswerModel> deleteAnswer(@Field("cevap") String cevap, @Field("soru") String soru );

    @FormUrlEncoded
    @POST("cevaplar.php")
    Call<List<AnswerModel>> getAnswers(@Field("mus_id") String mus_id);

    @GET("kampanya.php")
    Call<List<KampanyaModel>> getKampanya();

    @FormUrlEncoded
    @POST("asitakip.php")
    Call<List<AsiModel>> getAsi(@Field("id") String id);

    @FormUrlEncoded
    @POST("gecmisasi.php")
    Call<List<AsiModel>> getGecmisAsi(@Field("id") String id, @Field("petid") String petid);
}
