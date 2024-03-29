package com.model;

public class Magcolumns {
	
	protected int serial_num;

	protected String mag_name;
	protected int mag_year;
	protected String mag_month;
	protected int mag_pageno;
	
	protected String mag_title;
	protected String mag_kavitaSub;
	protected String mag_suktiSub;
	protected String mag_kathaSub;
	protected String mag_JivaniSub;
	protected String mag_lekhSub;
	protected String mag_sampadkSub;
	protected String mag_missionSub;
	protected String mag_writername;
	
	
	public Magcolumns() {
		// TODO Auto-generated constructor stub
	}
	
	
	
	
	
	
	
	
	
	public Magcolumns(int serial_num, String mag_name, int mag_year, String mag_month, int mag_pageno, String mag_title,
			String mag_kavitaSub, String mag_suktiSub, String mag_kathaSub, String mag_JivaniSub, String mag_lekhSub,
			String mag_sampadkSub, String mag_missionSub, String mag_writername) {
		super();
		this.serial_num = serial_num;
		this.mag_name = mag_name;
		this.mag_year = mag_year;
		this.mag_month = mag_month;
		this.mag_pageno = mag_pageno;
		this.mag_title = mag_title;
		this.mag_kavitaSub = mag_kavitaSub;
		this.mag_suktiSub = mag_suktiSub;
		this.mag_kathaSub = mag_kathaSub;
		this.mag_JivaniSub = mag_JivaniSub;
		this.mag_lekhSub = mag_lekhSub;
		this.mag_sampadkSub = mag_sampadkSub;
		this.mag_missionSub = mag_missionSub;
		this.mag_writername = mag_writername;
	}




	public int getSerial_num() {
		return serial_num;
	}

	public void setSerial_num(int serial_num) {
		this.serial_num = serial_num;
	}

	
	
	public String getMag_name() {
		return mag_name;
	}


	public void setMag_name(String mag_name) {
		this.mag_name = mag_name;
	}


	public int getMag_year() {
		return mag_year;
	}


	public void setMag_year(int mag_year) {
		this.mag_year = mag_year;
	}

	
	


	public String getMag_month() {
		return mag_month;
	}

	public void setMag_month(String mag_month) {
		this.mag_month = mag_month;
	}

	public int getMag_pageno() {
		return mag_pageno;
	}


	public void setMag_pageno(int mag_pageno) {
		this.mag_pageno = mag_pageno;
	}


	public String getMag_title() {
		return mag_title;
	}


	public void setMag_title(String mag_title) {
		this.mag_title = mag_title;
	}


	public String getMag_kavitaSub() {
		return mag_kavitaSub;
	}


	public void setMag_kavitaSub(String mag_kavitaSub) {
		this.mag_kavitaSub = mag_kavitaSub;
	}


	public String getMag_suktiSub() {
		return mag_suktiSub;
	}


	public void setMag_suktiSub(String mag_suktiSub) {
		this.mag_suktiSub = mag_suktiSub;
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


	public String getMag_lekhSub() {
		return mag_lekhSub;
	}


	public void setMag_lekhSub(String mag_lekhSub) {
		this.mag_lekhSub = mag_lekhSub;
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


	public String getMag_writername() {
		return mag_writername;
	}


	public void setMag_writername(String mag_writername) {
		this.mag_writername = mag_writername;
	}

	@Override
	public String toString() {
		return "Magcolumns [mag_name=" + mag_name + ", mag_year=" + mag_year + ", mag_month=" + mag_month
				+ ", mag_pageno=" + mag_pageno + ", mag_title=" + mag_title + ", mag_kavitaSub=" + mag_kavitaSub
				+ ", mag_suktiSub=" + mag_suktiSub + ", mag_kathaSub=" + mag_kathaSub + ", mag_JivaniSub="
				+ mag_JivaniSub + ", mag_lekhSub=" + mag_lekhSub + ", mag_sampadkSub=" + mag_sampadkSub
				+ ", mag_missionSub=" + mag_missionSub + ", mag_writername=" + mag_writername + "]";
	}


	

}
