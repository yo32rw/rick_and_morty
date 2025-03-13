import 'package:go_router/go_router.dart';
import 'package:rick_and_morty/ui/details_screen/details_screen.dart';

import '../ui/home_screen/home_screen.dart';
import 'routes.dart';

GoRouter router() => GoRouter(
  initialLocation: Routes.main,
  routes: [
    GoRoute(path: Routes.main, builder: (context, state) => HomeScreen()),
    GoRoute(path: Routes.details, builder: (context, state) => DetailsScreen()),
  ],
);
