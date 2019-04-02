public class Athlete {

     static int nextBibNumber;
     static String raceLocation = "New York";
     static String raceStartTime = "9.00am";

     String name;
     int speed;
     int bibNumber;

Athlete (String name, int speed){
     this.name = name;
     this.speed = speed;
}

public String getName() {
	return this.name;
}
public int getBibNumber () {
	return this.bibNumber;
}
public String getLocation () {
	return this.raceLocation;
}

public static void main(String[] args) {
     //create two athletes      //print their names, bibNumbers, and the location of their race. }
	Athlete ath1 = new Athlete("Tuan", 100);
	ath1.bibNumber = 10;
	System.out.println("Name: " + ath1.getName() + " Bib Number: " + ath1.getBibNumber() + " Location of race: " + ath1.getLocation());
	Athlete ath2 = new Athlete("Erick", 100);
	ath2.bibNumber = 20;
	System.out.println("Name: " + ath2.getName() + " Bib Number: " + ath2.getBibNumber() + " Location of race: " + ath2.getLocation());
}
}

