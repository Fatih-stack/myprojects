package com.example.veterineruygulamasi.Utils;

import android.content.Context;
import android.os.Bundle;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentTransaction;

import com.example.veterineruygulamasi.R;

public class ChangeFragment {

    private Context context;

    public ChangeFragment(Context context){
        this.context = context;
    }

    public void change(Fragment fragment){
        ((FragmentActivity)context).getSupportFragmentManager().beginTransaction()
                .replace(R.id.mainFrameLayout,fragment,"fragment")
                .setTransitionStyle(FragmentTransaction.TRANSIT_FRAGMENT_FADE)
                .commit();
    }

    public void changeWithParameters(Fragment fragment, String petID){
        Bundle bundle = new Bundle();
        bundle.putString("petid", petID);
        fragment.setArguments(bundle);
        ((FragmentActivity)context).getSupportFragmentManager().beginTransaction()
                .replace(R.id.mainFrameLayout,fragment,"fragment")
                .setTransitionStyle(FragmentTransaction.TRANSIT_FRAGMENT_FADE)
                .commit();
    }
}
