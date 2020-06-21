package com.example.veterineruygulamasi.Adapters;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.example.veterineruygulamasi.Models.AnswerModel;
import com.example.veterineruygulamasi.Models.DeleteAnswerModel;
import com.example.veterineruygulamasi.Models.PetModel;
import com.example.veterineruygulamasi.R;
import com.example.veterineruygulamasi.RestApi.ManagerAll;
import com.example.veterineruygulamasi.Utils.Warnings;
import com.google.android.material.button.MaterialButton;
import com.squareup.picasso.Picasso;

import java.util.List;

import de.hdodenhof.circleimageview.CircleImageView;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class AnswersAdapter extends RecyclerView.Adapter<AnswersAdapter.ViewHolder> {

    List<AnswerModel> list;
    Context context;

    public AnswersAdapter(List<AnswerModel> list, Context context) {
        this.list = list;
        this.context = context;
    }

    @NonNull
    @Override
    public AnswersAdapter.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        View view = LayoutInflater.from(context).inflate(R.layout.cevapitemlayout, parent, false);
        return new ViewHolder(view);
    }

    @Override
    public void onBindViewHolder(AnswersAdapter.ViewHolder holder, int position) {

        holder.cevapSoruText.setText("Soru : " + list.get(position).getSoru().toString());
        holder.cevapCevapText.setText("Cevap : " + list.get(position).getCevap().toString());

        holder.cevapSilButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                deleteToService(list.get(position).getCevapid().toString(), list.get(position).getSoruid().toString(), position);
            }
        });
    }

    public void deleteToList(int position){
        list.remove(position);
        notifyItemRemoved(position);
        notifyDataSetChanged();
    }

    public void deleteToService(String cevapid, String soruid, int pos) {
        Call<DeleteAnswerModel> req = ManagerAll.getInstance().deleteAnswer(cevapid,soruid);
        req.enqueue(new Callback<DeleteAnswerModel>() {
            @Override
            public void onResponse(Call<DeleteAnswerModel> call, Response<DeleteAnswerModel> response) {
                if(response.body().isTf()){
                    Toast.makeText(context,response.body().getText(),Toast.LENGTH_LONG).show();
                    deleteToList(pos);
                }
                else{
                    Toast.makeText(context,response.body().getText(),Toast.LENGTH_LONG).show();
                }
            }

            @Override
            public void onFailure(Call<DeleteAnswerModel> call, Throwable t) {
                Toast.makeText(context, Warnings.internetProblemText,Toast.LENGTH_LONG).show();
            }
        });
    }

    @Override
    public int getItemCount() {
        return list.size();
    }

    public class ViewHolder extends RecyclerView.ViewHolder {
        TextView cevapSoruText, cevapCevapText;
        MaterialButton cevapSilButton;

        //itemView ile listview in her elemanı için layout ile oluşturduğumuz view tanımlaması işlemi gerçekleşecektir
        public ViewHolder(@NonNull View itemView) {
            super(itemView);
            cevapSoruText = (TextView) itemView.findViewById(R.id.cevapSoruText);
            cevapCevapText = (TextView) itemView.findViewById(R.id.cevapCevapText);
            cevapSilButton = (MaterialButton) itemView.findViewById(R.id.cevapSilButton);
        }
    }
}
