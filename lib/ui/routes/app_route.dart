import 'package:auto_route/auto_route.dart';
import 'package:portfolio/ui/routes/route_path.dart';
import 'package:portfolio/ui/home/home_page.dart';

@AdaptiveAutoRouter(replaceInRouteName: 'Page,Route', routes: [
  AutoRoute(
    path: RoutePath.appRouteHome,
    page: HomePage,
    initial: true,
  )
])
class $AppRouter {}
