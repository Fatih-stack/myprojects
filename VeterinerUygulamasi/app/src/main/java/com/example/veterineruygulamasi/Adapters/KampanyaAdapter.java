package com.example.veterineruygulamasi.Adapters;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.example.veterineruygulamasi.Models.KampanyaModel;
import com.example.veterineruygulamasi.R;
import com.squareup.picasso.Picasso;

import java.util.List;

public class KampanyaAdapter extends RecyclerView.Adapter<KampanyaAdapter.ViewHolder> {

    List<KampanyaModel> list;
    Context context;

    public KampanyaAdapter(List<KampanyaModel> list, Context context) {
        this.list = list;
        this.context = context;
    }

    @NonNull
    @Override
    public KampanyaAdapter.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        View view = LayoutInflater.from(context).inflate(R.layout.kampanyaitemlayout, parent, false);
        return new ViewHolder(view);
    }

    @Override
    public void onBindViewHolder(@NonNull KampanyaAdapter.ViewHolder holder, final int position) {
        holder.kampanyaBaslıkText.setText(list.get(position).getBaslik().toString());
        holder.kampanyatext.setText(list.get(position).getBaslik().toString());
        Picasso.get().load(list.get(position).getResim()).into(holder.kampanyaImageView);
    }

    @Override
    public int getItemCount() {
        return list.size();
    }

    public class ViewHolder extends RecyclerView.ViewHolder {
        TextView kampanyaBaslıkText, kampanyatext;
        ImageView kampanyaImageView;
        //itemView ile listview in her elemanı için layout ile oluşturduğumuz view tanımlaması işlemi gerçekleşecektir
        public ViewHolder(View itemView) {
            super(itemView);
            kampanyatext = (TextView) itemView.findViewById(R.id.kampanyatext);
            kampanyaBaslıkText = (TextView) itemView.findViewById(R.id.kampanyaBaslikText);
            kampanyaImageView = (ImageView) itemView.findViewById(R.id.kampanyaImageView);
        }
    }
}
