class Book {
  late String image;
  late String title;
  late String description;

  Book({ required this.image, required this.title, required this.description });
}

class PopularBook {
  late String image;
  late String title;
  late String description;
  late String genre;
  late String ranking;

  PopularBook({ required this.image, required this.title, required this.description, required this.genre, required this.ranking });
}

class HistoryBook {
  late String image;
  late String title;
  late String genre;
  late String lastRead;
  late String page;

  HistoryBook({ required this.image, required this.title, required this.genre, required this.lastRead, required this.page });
}
