package com.example.veterineruygulamasi.Adapters;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.example.veterineruygulamasi.Models.PetModel;
import com.example.veterineruygulamasi.R;
import com.squareup.picasso.Picasso;

import java.util.List;

import de.hdodenhof.circleimageview.CircleImageView;

public class PetsAdapter extends RecyclerView.Adapter<PetsAdapter.ViewHolder> {

    List<PetModel> list;
    Context context;

    public PetsAdapter(List<PetModel> list, Context context){
        this.list = list;
        this.context = context;
    }
    @NonNull
    @Override
    public PetsAdapter.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        View view = LayoutInflater.from(context).inflate(R.layout.petlistitemlayout, parent, false);
        return new ViewHolder(view);
    }

    @Override
    public void onBindViewHolder(PetsAdapter.ViewHolder holder, int position) {
        holder.petlayoutCinsName.setText("Pet Cinsi : " + list.get(position).getPetcins().toString());
        holder.petlayoutPetName.setText("Pet İsmi : " + list.get(position).getPetisim().toString());
        holder.petlayoutTurName.setText("Pet Türü : " + list.get(position).getPettur().toString());

        Picasso.get().load(list.get(position).getPetresim()).into(holder.petlayoutPetImage);

    }

    @Override
    public int getItemCount() {
        return list.size();
    }

    public class ViewHolder extends RecyclerView.ViewHolder
    {
        TextView petlayoutPetName, petlayoutCinsName, petlayoutTurName;
        CircleImageView petlayoutPetImage;
        //itemView ile listview in her elemanı için layout ile oluşturduğumuz view tanımlaması işlemi gerçekleşecektir
        public ViewHolder(@NonNull View itemView){
            super(itemView);
            petlayoutPetName = (TextView) itemView.findViewById(R.id.petlayoutPetName);
            petlayoutCinsName = (TextView) itemView.findViewById(R.id.petlayoutCinsName);
            petlayoutTurName = (TextView) itemView.findViewById(R.id.petlayoutTurName);
            petlayoutPetImage = (CircleImageView) itemView.findViewById(R.id.petlayoutPetImage);
        }
    }
}
