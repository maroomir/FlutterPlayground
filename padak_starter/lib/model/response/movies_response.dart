class MoviesResponse {
  int orderType = -1;
  List<Movie> movies = [];

  // 생성자
  MoviesResponse({
    required this.orderType,
    required this.movies,
  });

  // map 구조에서 새로운 MoviesResponse 객체를 생성
  MoviesResponse.fromJson(Map<String, dynamic> json) {
    if (json['movies'] != null) {
      movies = [];
      json['movies'].forEach((movie) {
        movies.add(Movie.fromJson(movie));
      });
    }
    orderType = json['order_type'];
  }

  // MoviesResponse 객체를 map 구조로 변환
  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['movies'] = movies.map((movie) => movie.toMap()).toList();
    map['order_type'] = orderType;
    return map;
  }
}

class Movie {
  // 영화 제목
  String title = "";

  // 사용자 평점
  int userRating = -1;

  // 관람 등급 (0 : 전체 / 12 : 12세 / 15 : 15세 / 19 :19세)
  int grade = -1;

  // 예매 순위
  int reservationGrade = -1;

  // 영화 고유 id
  String id = "";

  // 개봉일
  String date = "";

  // 포스터 이미지 섬네일 주소
  String thumb = "";

  // 예매율
  double reservationRate = 0;

  Movie({
    required this.title,
    required this.userRating,
    required this.grade,
    required this.reservationGrade,
    required this.id,
    required this.date,
    required this.thumb,
    required this.reservationRate,
  });

  Movie.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    userRating = json['user_rating'];
    grade = json['grade'];
    reservationGrade = json['reservation_grade'];
    id = json['id'];
    date = json['date'];
    thumb = json['thumb'];
    reservationRate = json['reservation_rate'];
  }

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['user_rating'] = userRating;
    map['grade'] = grade;
    map['reservation_grade'] = reservationGrade;
    map['id'] = id;
    map['date'] = date;
    map['thumb'] = thumb;
    map['reservation_rate'] = reservationRate;
    return map;
  }
}
