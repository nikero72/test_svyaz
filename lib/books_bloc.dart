import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:test_svyaz/domain/entity/books.dart';

import 'json.dart';

class BookState {
  final Books books;

  const BookState({
    required this.books
  });
}

Books _emptyBook = Books(id: [0], title: [''], year: [0], author: [''], description: [''], image: [''], isFavorite: [false]);

class BooksBloc extends Bloc<BookEvent, BookState> {
  BooksBloc() : super(BookState(books: _emptyBook)) {
    on<BookFavoriteTappedEvent>(_onFavoriteTapped);
    on<BookInitializeEvent>(_initialize);
  }

  _initialize(BookInitializeEvent event, Emitter<BookState> emit) {
    final Box<Books> box;
    box = Hive.box('book_box');
    if (box.isEmpty) {
      final Books _books = Books.fromJson(Json().data);
      print(_books);
      box.put('books', _books);
      emit(BookState(books: _books));
    } else {
      final Books? _books = box.get('books');
      if (_books != null) {
        emit(BookState(books: _books));
      }
    }
  }

  _onFavoriteTapped(BookFavoriteTappedEvent event, Emitter<BookState> emit) {
    final Box<Books> box;
    box = Hive.box('book_box');
    final Books _books = box.get('books')!;
    _books.isFavorite[event.ind] = !_books.isFavorite[event.ind];
    box.put('books', _books);
    emit(BookState(books: _books));
  }

  @override
  Future<void> close() async {
    final Box<Books> box;
    box = Hive.box('book_box');
    await box.close();
    return super.close();
  }


}


abstract class BookEvent {}

class BookFavoriteTappedEvent extends BookEvent {
  final int ind;

  BookFavoriteTappedEvent({required this.ind});
}

class BookInitializeEvent extends BookEvent {}