import 'package:flutter_audio_book_ui/model/book_entity.dart';

class BookInformation{
  final double bookRate;
  final String bookLanguage;
  final String bookTime;

  BookInformation({
    required this.bookRate,
    required this.bookLanguage,
    required this.bookTime,
  });
}
