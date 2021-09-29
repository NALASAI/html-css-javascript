package com.study.singleton;

public class SingletonTest {

	public static void main(String[] args) {
		KIA factory1 = KIA.getInstance();
		KIA factory2 = KIA.getInstance();
		KIA factory3 = KIA.getInstance();
		KIA factory4 = KIA.getInstance();
		
		Car[] c = new Car[4];
		
		c[0] = factory1.createCar("K3");
		c[1] = factory2.createCar("K5");
		c[2] = factory3.createCar("K7");
		c[3] = factory4.createCar("K8");
		
		for(Car car : c) {
			System.out.println(car);
		}
		
		Tesla tfactory1 = Tesla.getInstance();
		Tesla tfactory2 = Tesla.getInstance();
		Tesla tfactory3 = Tesla.getInstance();
		Tesla tfactory4 = Tesla.getInstance();
		
		Car[] tc = new Car[4];
		
		tc[0] = tfactory1.createCar("model3");
		tc[1] = tfactory2.createCar("modelx");
		tc[2] = tfactory3.createCar("modely");
		tc[3] = tfactory4.createCar("models");
		
		for(Car car : tc) {
			System.out.println(car);
		}
	}

}
