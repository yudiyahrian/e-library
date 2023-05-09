class Book {
  late String image;
  late String title;
  late String description;
  late String author;
  late String genre;
  late String date;
  late String page;
  late String rating;

  Book({
    required this.image,
    required this.title,
    this.description = '',
    this.author = '',
    this.genre = '',
    this.date = '',
    this.page = '',
    this.rating = '',
  });
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

class InvoiceBook {
  late String image;
  late String title;
  late String duration;
  late String date;
  late String id;

  InvoiceBook({ required this.image, required this.title, required this.duration, required this.date, required this.id });
}
