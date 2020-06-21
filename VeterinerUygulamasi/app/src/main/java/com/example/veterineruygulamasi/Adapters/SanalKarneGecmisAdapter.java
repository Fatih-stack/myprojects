package com.example.veterineruygulamasi.Adapters;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.RecyclerView;

import com.example.veterineruygulamasi.Fragments.AsiDetayFragment;
import com.example.veterineruygulamasi.Models.AsiModel;
import com.example.veterineruygulamasi.Models.PetModel;
import com.example.veterineruygulamasi.R;
import com.example.veterineruygulamasi.Utils.ChangeFragment;
import com.squareup.picasso.Picasso;

import java.util.List;

import de.hdodenhof.circleimageview.CircleImageView;

public class SanalKarneGecmisAdapter extends RecyclerView.Adapter<SanalKarneGecmisAdapter.ViewHolder> {

    List<AsiModel> list;
    Context context;

    public SanalKarneGecmisAdapter(List<AsiModel> list, Context context){
        this.list = list;
        this.context = context;
    }
    @NonNull
    @Override
    public SanalKarneGecmisAdapter.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        View view = LayoutInflater.from(context).inflate(R.layout.sanalkarnegecmislayout, parent, false);
        return new ViewHolder(view);
    }

    @Override
    public void onBindViewHolder(SanalKarneGecmisAdapter.ViewHolder holder, int position) {

        holder.sanalKarneGecmisAsiIsmi.setText(list.get(position).getAsiIsim().toString()+" Aşısı Yapılmıştır.");
        holder.sanalKarneGecmisBilgiText.setText(list.get(position).getPetIsim().toString() + " isimli petinize "+
                list.get(position).getAsiTarih() +" tarihinde "+list.get(position).getAsiIsim()+
                " aşısı yapılmıştır.");

        Picasso.get().load(list.get(position).getPetResim()).into(holder.sanalkarneGecmisAsiImage);
    }

    @Override
    public int getItemCount() {
        return list.size();
    }

    public class ViewHolder extends RecyclerView.ViewHolder
    {
        TextView sanalKarneGecmisAsiIsmi, sanalKarneGecmisBilgiText;
        CircleImageView sanalkarneGecmisAsiImage;

        //itemView ile listview in her elemanı için layout ile oluşturduğumuz view tanımlaması işlemi gerçekleşecektir
        public ViewHolder(View itemView){
            super(itemView);
            sanalKarneGecmisAsiIsmi = itemView.findViewById(R.id.sanalKarneGecmisAsiIsmi);
            sanalKarneGecmisBilgiText = itemView.findViewById(R.id.sanalKarneGecmisBilgiText);
            sanalkarneGecmisAsiImage = itemView.findViewById(R.id.sanalkarneGecmisAsiImage);
        }
    }
}
