abstract final class Routes {
  static const main = '/';
  static const details = '/details';
  static String detailWithId(int id) => '$details/$id';
}
