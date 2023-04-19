import 'package:flutter_audio_book_ui/gen/assets.gen.dart';
import 'package:flutter_audio_book_ui/model/book_chapter_entity.dart';
import 'package:flutter_audio_book_ui/model/book_information_entity.dart';

class BookEntity {
  int bookId;
  String bookName;
  String bookImage;
  String bookAuthor;
  BookInformation bookInformation;

  BookEntity({
    required this.bookId,
    required this.bookName,
    required this.bookImage,
    required this.bookAuthor,
    required this.bookInformation,
  });
}

final List<BookEntity> listBook = [
  BookEntity(
    bookId: 1,
    bookName: 'Moby Dick',
    bookImage: Assets.images.mobyDick.path,
    bookAuthor: 'Herman Meville',
    bookInformation: BookInformation(
      bookRate: 4.5,
      bookLanguage: 'English',
      bookTime: '2 hours',
    ),
  ),
  BookEntity(
    bookId: 2,
    bookName: 'Authornity',
    bookImage: Assets.images.authorityBook.path,
    bookAuthor: 'Jeff Vandermer',
    bookInformation: BookInformation(
      bookRate: 4.0,
      bookLanguage: 'English',
      bookTime: '4 hours',
    ),
  ),
  BookEntity(
    bookId: 3,
    bookName: 'IT',
    bookImage: Assets.images.itBook.path,
    bookAuthor: 'Stephen King',
    bookInformation: BookInformation(
      bookRate: 5.0,
      bookLanguage: 'English',
      bookTime: '3 hours',
    ),
  ),
  BookEntity(
    bookId: 4,
    bookName: 'Earth History',
    bookImage: Assets.images.earthHistory.path,
    bookAuthor: 'Steven M.Stanley',
    bookInformation: BookInformation(
      bookRate: 4.5,
      bookLanguage: 'English',
      bookTime: '1 hours',
    ),
  ),
];
