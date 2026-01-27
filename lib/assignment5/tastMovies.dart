import 'MovieClass.dart';

void main(){
  Movie movie1=Movie("Casino Royale", "Eon Productions", "PG13");
  List<Movie> allMovies =[
    movie1,
    Movie.name("Toy Story", "Pixar"),
    Movie("Fast & Furious", "Universal", "PG")
  ];
  Iterable<Movie> pgMovies = Movie.getPG(allMovies);


  print("Movies with PG rating:");
  for (var m in pgMovies) {
    print("${m.title} :(${m.rating})");
  }

}