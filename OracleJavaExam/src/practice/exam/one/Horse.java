package practice.exam.one;

public class Horse {
	String hands = "15";
}

class GaitedPony extends Horse {
	static String hands = "14";

	public static void main(String[] args) {
		String hands = "13.2";
		String result = new GaitedPony().getSize(hands);
		System.out.println(" " + result);
		//28. C.) hands: 13.2 14
	}

	String getSize(String s) {
		System.out.println("hands" + s);
		return hands;
	}
}