final List<BookModel> recommendedBooks = [
  BookModel(
    title: 'The Winter Garden',
    author: 'Jane Thompson',
    coverUrl: 'https://example.com/book_cover2.jpg',
  ),
  BookModel(
    title: 'Shadows of Eternity',
    author: 'Michael Carter',
    coverUrl: 'https://example.com/book_cover2.jpg',
  ),
  BookModel(
    title: 'The Story of a Lonely Boy',
    author: 'Korina Villanueva',
    coverUrl: 'https://example.com/book_cover2.jpg',
  ),
  BookModel(
    title: 'The Story of a Lonely Boy',
    author: 'Korina Villanueva',
    coverUrl: 'https://example.com/book_cover2.jpg',
  ),
  BookModel(
    title: 'The Story of a Lonely Boy',
    author: 'Korina Villanueva',
    coverUrl: 'https://example.com/book_cover2.jpg',
  ),
];

final List<BookModel> popularBooks = [
  BookModel(
    title: 'The Manor',
    author: 'Sebastian Reed',
    coverUrl: 'https://example.com/book_cover3.jpg',
  ),
  BookModel(
    title: 'The Witch Garden',
    author: 'Eleanor Price',
    coverUrl: 'https://example.com/book_cover2.jpg',
  ),
  BookModel(
    title: 'Lost Roses',
    author: 'Martha Hall Kelly',
    coverUrl: 'https://example.com/book_cover5.jpg',
  ),
];

final List<BookModel> newBooks = [
  BookModel(
    title: 'Carmilla\'s Song',
    author: 'Victoria Stone',
    coverUrl: 'https://example.com/book_cover6.jpg',
  ),
  BookModel(
    title: 'Queens & Darkness',
    author: 'Richard Blackwood',
    coverUrl: 'https://example.com/book_cover2.jpg',
  ),
  BookModel(
    title: 'Story of Two Cities',
    author: 'Charles Dickens',
    coverUrl: 'https://example.com/book_cover8.jpg',
  ),
];

// Audiobook data
final List<AudiobookModel> recommendedAudiobooks = [
  AudiobookModel(
    title: 'Whispers in the Dark',
    narrator: 'James Mitchell',
    coverUrl: 'https://example.com/book_cover2.jpg',
    duration: '5h 23m',
  ),
  AudiobookModel(
    title: 'The Silent Patient',
    narrator: 'Emma Roberts',
    coverUrl: 'https://example.com/book_cover2.jpg',
    duration: '8h 43m',
  ),
  AudiobookModel(
    title: 'Atomic Habits',
    narrator: 'Robert Clear',
    coverUrl: 'https://example.com/book_cover2.jpg',
    duration: '6h 12m',
  ),
  AudiobookModel(
    title: 'Project Hail Mary',
    narrator: 'Ray Porter',
    coverUrl: 'https://example.com/book_cover2.jpg',
    duration: '16h 10m',
  ),
  AudiobookModel(
    title: 'The Psychology of Money',
    narrator: 'Chris Hill',
    coverUrl: 'https://example.com/book_cover2.jpg',
    duration: '5h 48m',
  ),
];

final List<AudiobookModel> popularAudiobooks = [
  AudiobookModel(
    title: 'Dune',
    narrator: 'Full Cast',
    coverUrl: 'https://example.com/book_cover3.jpg',
    duration: '21h 2m',
  ),
  AudiobookModel(
    title: 'The Alchemist',
    narrator: 'Jeremy Irons',
    coverUrl: 'https://example.com/book_cover2.jpg',
    duration: '4h 8m',
  ),
  AudiobookModel(
    title: 'Sapiens',
    narrator: 'Derek Perkins',
    coverUrl: 'https://example.com/book_cover5.jpg',
    duration: '15h 17m',
  ),
];

final List<AudiobookModel> newAudiobooks = [
  AudiobookModel(
    title: 'The Last Thing He Told Me',
    narrator: 'Rebecca Hall',
    coverUrl: 'https://example.com/book_cover6.jpg',
    duration: '8h 49m',
  ),
  AudiobookModel(
    title: 'The Sandman',
    narrator: 'Neil Gaiman',
    coverUrl: 'https://example.com/book_cover2.jpg',
    duration: '11h 32m',
  ),
  AudiobookModel(
    title: 'The Midnight Library',
    narrator: 'Carey Mulligan',
    coverUrl: 'https://example.com/book_cover8.jpg',
    duration: '8h 50m',
  ),
];

class BookModel {
  final String title;
  final String author;
  final String coverUrl;

  BookModel({
    required this.title,
    required this.author,
    required this.coverUrl,
  });
}

class AudiobookModel {
  final String title;
  final String narrator;
  final String coverUrl;
  final String duration;

  AudiobookModel({
    required this.title,
    required this.narrator,
    required this.coverUrl,
    required this.duration,
  });
}
