class InfoPaginationModel {
  final int count, pages;
  final String? next, prev;

  InfoPaginationModel({
    required this.count,
    required this.pages,
    required this.next,
    required this.prev,
  });
}
