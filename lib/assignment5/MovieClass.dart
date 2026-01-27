class Movie{
  String title;
  String studio;
  String rating;

  Movie(this.title, this.studio, this.rating);

  Movie.name(this.title, this.studio,{this.rating="PG"});
  static Iterable<Movie> getPG(List<Movie>array){
    return array.where((x) => x.rating=="PG");
  }
}