package netflix;

public class NetflixRunner {

	public static void main(String[] args) {
		Movie movie1 = new Movie("Moana",1);
		Movie movie2 = new Movie("The Boss Baby", 2);
		Movie movie3 = new Movie("Incredibles", 3);
		Movie movie4 = new Movie("Frozen" , 4);
		Movie movie5 = new Movie("The Emoji Movie" , 5);
		movie1.getTicketPrice();
		
		NetflixQueue netQ = new NetflixQueue();
		netQ.addMovie(movie1);
		netQ.addMovie(movie2);
		netQ.addMovie(movie3);
		netQ.addMovie(movie4);
		netQ.addMovie(movie5);
		netQ.printMovies();
		System.out.println("The best movie is "+ netQ.getBestMovie());
		System.out.println("The worst movie is " + netQ.getMovie(1));
	}
	
	
}
