package model;

import java.text.DecimalFormat;

public class NutrientBean {
	
	/* Define DV (Daily Value) amounts for each nutrient. These values come from the Canadian government. */
	public static final int DV_FAT = 65;						/* grams */
	public static final int DV_SAT_AND_TRANS_FAT = 20;			/* grams */
	public static final int DV_CHOLESTEROL = 300;				/* milligrams (mg) */
	public static final int DV_SODIUM = 2400;					/* milligrams (mg) */
	public static final int DV_CARBOHYDRATES = 300;				/* grams */
	public static final int DV_FIBRE = 25;						/* grams */
	// DV_SUGARS -> none
	// DV_Protein -> none
	public static final int DV_VITAMIN_A = 1000; 				/* Retinol Equivalents (RE) */
	public static final int DV_VITAMIN_C = 60;   				/* mg */
	public static final int DV_CALCIUM = 1100;					/* mg */
	public static final int DV_IRON = 14;						/* mg */
	/* End of DV definitions ---------------------------------------------------------------------------- */
	
	private double servingSize;
	private String servingUnit;
	private double servingWeight;			/* always in grams */
	private int calories;
	private double fat;						/* always in grams */
	private double saturatedFat;			/* always in grams */
	private double transFat;				/* always in grams */
	private double cholesterol;
	private double sodium;
	private double carbohydrates;			/* always in grams */
	private double fiber;					/* always in grams */
	private double sugars;					/* always in grams */
	private double protien;					/* always in grams */
	private double vitaminA;
	private double vitaminC;
	private double calcium;
	private double iron;
	
	private DecimalFormat df = new DecimalFormat("#.#");
	
	public double getServingSize() {
		return servingSize;
	}
	public void setServingSize(double servingSize) {
		this.servingSize = servingSize;
	}
	public String getServingUnit() {
		return servingUnit;
	}
	public void setServingUnit(String servingUnit) {
		this.servingUnit = servingUnit;
	}
	public int getCalories() {
		return calories;
	}
	public void setCalories(int calories) {
		this.calories = calories;
	}
	public String getFat() {
		return df.format(fat);
	}
	public void setFat(double fat) {
		this.fat = fat;
	}
	public String getSaturatedFat() {
		return df.format(saturatedFat);
	}
	public void setSaturatedFat(double saturatedFat) {
		this.saturatedFat = saturatedFat;
	}
	public String getTransFat() {
		return df.format(transFat);
	}
	public void setTransFat(double transFat) {
		this.transFat = transFat;
	}
	public String getCholesterol() {
		return df.format(cholesterol);
	}
	public void setCholesterol(double cholesterol) {
		this.cholesterol = cholesterol;
	}
	public String getSodium() {
		return df.format(sodium);
	}
	public void setSodium(double sodium) {
		this.sodium = sodium;
	}
	public String getCarbohydrates() {
		return df.format(carbohydrates);
	}
	public void setCarbohydrates(double carbohydrates) {
		this.carbohydrates = carbohydrates;
	}
	public String getSugars() {
		return df.format(sugars);
	}
	public void setSugars(double sugars) {
		this.sugars = sugars;
	}
	public String getFiber() {
		return df.format(fiber);
	}
	public void setFiber(double fiber) {
		this.fiber = fiber;
	}
	public String getProtien() {
		return df.format(protien);
	}
	public void setProtien(double protien) {
		this.protien = protien;
	}
	public double getVitaminA() {
		return vitaminA;
	}
	public void setVitaminA(double vitaminA) {
		this.vitaminA = vitaminA;
	}
	public double getVitaminC() {
		return vitaminC;
	}
	public void setVitaminC(double vitaminC) {
		this.vitaminC = vitaminC;
	}
	public double getCalcium() {
		return calcium;
	}
	public void setCalcium(double calcium) {
		this.calcium = calcium;
	}
	public double getIron() {
		return iron;
	}
	public void setIron(double iron) {
		this.iron = iron;
	}
	public double getServingWeight() {
		return servingWeight;
	}
	public void setServingWeight(double servingWeight) {
		this.servingWeight = servingWeight;
	}
	
	
	/**
	 * This method calculates a percentage of the daily recommended fat, based on the grams of fat in this item.
	 * 
	 * @return String formated with percent value of fat in item.
	 */
	public String calculateDvFat() {
		double dv_fat_value = (this.fat/NutrientBean.DV_FAT)*100;
		return df.format(dv_fat_value);
	}
	
	
	public String calculateDvSatFat() {
		double dv_sat_fat_value = ((this.saturatedFat+this.transFat)/NutrientBean.DV_SAT_AND_TRANS_FAT)*100;
		return df.format(dv_sat_fat_value);
	}
	
	
	public String calculateDvCholesterol() {
		double dv_cholesterol_val = (this.cholesterol/NutrientBean.DV_CHOLESTEROL)*100;
		return df.format(dv_cholesterol_val);
	}
	
	public String calculateDvSodium() {
		double dv_sodium_val = (this.sodium/NutrientBean.DV_SODIUM)*100;
		return df.format(dv_sodium_val);
	}
	
	public String calculateDvCarbs() {
		double dv_carbs_val = (this.carbohydrates/NutrientBean.DV_CARBOHYDRATES)*100;
		return df.format(dv_carbs_val);
	}
	
	public String calculateDvFiber() {
		double dv_fiber_val = (this.fiber/NutrientBean.DV_FIBRE)*100;
		return df.format(dv_fiber_val);
	}
	

}
