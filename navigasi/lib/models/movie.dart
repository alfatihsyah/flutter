class MovieModel{
  int id ;
  String title ;
  double? voteAvarage ;
  String posterPath ;
  MovieModel({
    required this.id,
    required this.title,
    this.voteAvarage,
    required this.posterPath,
    }
  );
}