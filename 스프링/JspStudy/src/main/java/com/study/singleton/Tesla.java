package com.study.singleton;

public class Tesla {
	private int serialNum = 20210001;
	private static Tesla instance = new Tesla();
	
	private Tesla() {	
	}
	
	public static Tesla getInstance() {
		if(instance == null) {
			instance = new Tesla();
		}
		return instance;
	}
	
	public Car createCar(String model){
		return new Car(serialNum++, model, getClass().getName());
	}
}
