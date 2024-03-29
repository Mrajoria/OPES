package com.model;

public class Optioncolumns {


	protected String mag_kavitaSub;
	protected String mag_kathaSub;
	protected String mag_JivaniSub;
	
	protected String mag_sampadkSub;
	protected String mag_missionSub;
	
	
	public Optioncolumns() {
		
	}

	public Optioncolumns(String mag_kavitaSub, String mag_kathaSub, String mag_JivaniSub, String mag_sampadkSub,
			String mag_missionSub) {
		super();
		this.mag_kavitaSub = mag_kavitaSub;
		this.mag_kathaSub = mag_kathaSub;
		this.mag_JivaniSub = mag_JivaniSub;
		this.mag_sampadkSub = mag_sampadkSub;
		this.mag_missionSub = mag_missionSub;
	}
	
	
	

	public String getMag_kavitaSub() {
		return mag_kavitaSub;
	}


	public void setMag_kavitaSub(String mag_kavitaSub) {
		this.mag_kavitaSub = mag_kavitaSub;
	}


	public String getMag_kathaSub() {
		return mag_kathaSub;
	}


	public void setMag_kathaSub(String mag_kathaSub) {
		this.mag_kathaSub = mag_kathaSub;
	}


	public String getMag_JivaniSub() {
		return mag_JivaniSub;
	}


	public void setMag_JivaniSub(String mag_JivaniSub) {
		this.mag_JivaniSub = mag_JivaniSub;
	}


	public String getMag_sampadkSub() {
		return mag_sampadkSub;
	}


	public void setMag_sampadkSub(String mag_sampadkSub) {
		this.mag_sampadkSub = mag_sampadkSub;
	}


	public String getMag_missionSub() {
		return mag_missionSub;
	}


	public void setMag_missionSub(String mag_missionSub) {
		this.mag_missionSub = mag_missionSub;
	}


	@Override
	public String toString() {
		return "Optioncolumns [mag_kavitaSub=" + mag_kavitaSub + ", mag_kathaSub=" + mag_kathaSub + ", mag_JivaniSub="
				+ mag_JivaniSub + ", mag_sampadkSub=" + mag_sampadkSub + ", mag_missionSub=" + mag_missionSub + "]";
	}



	
	
}
