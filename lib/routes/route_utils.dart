enum AppPage {
  home(
    path: '/home',
    name: 'HOME',
    title: 'Welcome to Nature of Code',
  ),
  chapterList(
    name: 'CHAPTER_LIST',
    path: '/chapters',
    title: 'Chapters',
  ),
  chapter1Motion(
    name: 'CHAPTER_1_MOTION',
    path: '/chapters/chapter1/motion',
    title: 'Chapter 1: Motion',
  ),
  chapter2Forces(
    name: 'CHAPTER_2_FORCES',
    path: '/chapters/chapter2/forces',
    title: 'Chapter 2: Forces',
  ),
  error(
    name: 'ERROR',
    path: '/error',
    title: 'Oops! Something went wrong',
  );

  const AppPage({
    required this.path,
    required this.name,
    required this.title,
  });

  final String path;
  final String name;
  final String title;
}
