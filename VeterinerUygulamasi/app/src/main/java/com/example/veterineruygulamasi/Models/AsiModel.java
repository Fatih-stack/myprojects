package com.example.veterineruygulamasi.Models;

public class AsiModel{
	private String asiIsim;
	private boolean tf;
	private String petTur;
	private String petResim;
	private String petIsim;
	private String asiTarih;
	private String petCins;

	public void setAsiIsim(String asiIsim){
		this.asiIsim = asiIsim;
	}

	public String getAsiIsim(){
		return asiIsim;
	}

	public void setTf(boolean tf){
		this.tf = tf;
	}

	public boolean isTf(){
		return tf;
	}

	public void setPetTur(String petTur){
		this.petTur = petTur;
	}

	public String getPetTur(){
		return petTur;
	}

	public void setPetResim(String petResim){
		this.petResim = petResim;
	}

	public String getPetResim(){
		return petResim;
	}

	public void setPetIsim(String petIsim){
		this.petIsim = petIsim;
	}

	public String getPetIsim(){
		return petIsim;
	}

	public void setAsiTarih(String asiTarih){
		this.asiTarih = asiTarih;
	}

	public String getAsiTarih(){
		return asiTarih;
	}

	public void setPetCins(String petCins){
		this.petCins = petCins;
	}

	public String getPetCins(){
		return petCins;
	}

	@Override
 	public String toString(){
		return 
			"AsiModel{" + 
			"asi_isim = '" + asiIsim + '\'' + 
			",tf = '" + tf + '\'' + 
			",pet_tur = '" + petTur + '\'' + 
			",pet_resim = '" + petResim + '\'' + 
			",pet_isim = '" + petIsim + '\'' + 
			",asi_tarih = '" + asiTarih + '\'' + 
			",pet_cins = '" + petCins + '\'' + 
			"}";
		}
}
