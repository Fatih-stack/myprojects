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
import com.example.veterineruygulamasi.Models.PetModel;
import com.example.veterineruygulamasi.R;
import com.example.veterineruygulamasi.Utils.ChangeFragment;
import com.squareup.picasso.Picasso;

import java.util.List;

import de.hdodenhof.circleimageview.CircleImageView;

public class SanalKarnePetAdapter extends RecyclerView.Adapter<SanalKarnePetAdapter.ViewHolder> {

    List<PetModel> list;
    Context context;

    public SanalKarnePetAdapter(List<PetModel> list, Context context){
        this.list = list;
        this.context = context;
    }
    @NonNull
    @Override
    public SanalKarnePetAdapter.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        View view = LayoutInflater.from(context).inflate(R.layout.sanalkarnepetlayout, parent, false);
        return new ViewHolder(view);
    }

    @Override
    public void onBindViewHolder(SanalKarnePetAdapter.ViewHolder holder, int position) {
        holder.petSanalKarneText.setText(list.get(position).getPetcins().toString());
        holder.petSanalKarneBilgiText.setText(list.get(position).getPetisim().toString() + " isimli "+
                list.get(position).getPettur()+" türüne "+list.get(position).getPetcins()+
                " cinsine ait petinizin geçmiş aşılarını görmek için tıklayınız...");

        Picasso.get().load(list.get(position).getPetresim()).into(holder.sanalkarneCircleImageView);
        holder.sanalLayoutCardView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                ChangeFragment changeFragment = new ChangeFragment(context);
                changeFragment.changeWithParameters(new AsiDetayFragment(), list.get(position).getPetID());
            }
        });

    }

    @Override
    public int getItemCount() {
        return list.size();
    }

    public class ViewHolder extends RecyclerView.ViewHolder
    {
        TextView petSanalKarneText, petSanalKarneBilgiText;
        CircleImageView sanalkarneCircleImageView;
        CardView sanalLayoutCardView;
        //itemView ile listview in her elemanı için layout ile oluşturduğumuz view tanımlaması işlemi gerçekleşecektir
        public ViewHolder(View itemView){
            super(itemView);
            petSanalKarneText = itemView.findViewById(R.id.petSanalKarneText);
            petSanalKarneBilgiText = itemView.findViewById(R.id.petSanalKarneBilgiText);
            sanalkarneCircleImageView = itemView.findViewById(R.id.sanalkarneCircleImageView);
            sanalLayoutCardView = (CardView) itemView.findViewById(R.id.sanalLayoutCardView);
        }
    }
}
