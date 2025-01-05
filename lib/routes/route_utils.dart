enum AppPage { home, chapterList, chapter1Motion, chapter2Forces, error }

extension AppPageExtension on AppPage {
  static const _paths = {
    AppPage.home: '/home',
    AppPage.chapterList: '/chapters',
    AppPage.chapter1Motion: '/chapters/chapter1/motion',
    AppPage.chapter2Forces: '/chapters/chapter2/forces',
    AppPage.error: '/error',
  };

  static const _names = {
    AppPage.home: 'HOME',
    AppPage.chapterList: 'CHAPTER_LIST',
    AppPage.chapter1Motion: 'CHAPTER_1_MOTION',
    AppPage.chapter2Forces: 'CHAPTER_2_FORCES',
    AppPage.error: 'ERROR',
  };

  static const _titles = {
    AppPage.home: 'Welcome to Nature of Code',
    AppPage.chapterList: 'Chapters',
    AppPage.chapter1Motion: 'Chapter 1: Motion',
    AppPage.chapter2Forces: 'Chapter 2: Forces',
    AppPage.error: 'Error',
  };

  String get toPath => _paths[this]!;
  String get toName => _names[this]!;
  String get toTitle => _titles[this]!;
}
