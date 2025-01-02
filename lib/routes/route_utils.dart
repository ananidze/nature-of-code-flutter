enum APP_PAGE { home, chapterList, chapter1Motion, chapter2Forces, error }

extension AppPageExtension on APP_PAGE {
  String get toPath {
    switch (this) {
      case APP_PAGE.home:
        return '/home';
      case APP_PAGE.chapterList:
        return '/chapters';
      case APP_PAGE.chapter1Motion:
        return '/chapters/chapter1/motion';
      case APP_PAGE.chapter2Forces:
        return '/chapters/chapter2/forces';
      case APP_PAGE.error:
        return '/error';
    }
  }

  String get toName {
    switch (this) {
      case APP_PAGE.home:
        return 'HOME';
      case APP_PAGE.chapterList:
        return 'CHAPTER_LIST';
      case APP_PAGE.chapter1Motion:
        return 'CHAPTER_1_MOTION';
      case APP_PAGE.chapter2Forces:
        return 'CHAPTER_2_FORCES';
      case APP_PAGE.error:
        return 'ERROR';
    }
  }

  String get toTitle {
    switch (this) {
      case APP_PAGE.home:
        return 'Welcome to Nature of Code';
      case APP_PAGE.chapterList:
        return 'Chapters';
      case APP_PAGE.chapter1Motion:
        return 'Chapter 1: Motion';
      case APP_PAGE.chapter2Forces:
        return 'Chapter 2: Forces';
      case APP_PAGE.error:
        return 'Error';
    }
  }
}
