import 'package:auto_route/auto_route.dart';
import 'package:portfolio/ui/layout/master_page.dart';
import 'package:portfolio/ui/routes/route_path.dart';
import 'package:portfolio/ui/home/home_page.dart';

import '../hobby/hobby_page.dart';

@AdaptiveAutoRouter(replaceInRouteName: 'Page,Route', routes: [

  AutoRoute(
    path: "/",
    page: MasterPage,
    children: [
      AutoRoute(
        path: RoutePath.appRouteHome,
        page: HomePage,
        name: "HomeRouter",
        initial: true,
      ),
      AutoRoute(
          path: RoutePath.appRouteHobby,
          name: "HobbyRouter",
          page: HobbyPage
      ),
    ]
  )
])
class $AppRouter {}
