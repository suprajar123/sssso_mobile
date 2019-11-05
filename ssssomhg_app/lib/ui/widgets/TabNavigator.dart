import 'package:flutter/material.dart';
import 'package:ssssomhg_app/core/enums/tabItems.dart';
import 'package:ssssomhg_app/ui/router.dart';

class TabNavigator extends StatelessWidget {
  TabNavigator({this.navigatorKey, this.tabItem});
  final GlobalKey<NavigatorState> navigatorKey;
  final TabItems tabItem;

  @override
  Widget build(BuildContext context) {
    String _initRoute;

    if (tabItem == TabItems.Home) {
      _initRoute = "home";
    }
    else if (tabItem == TabItems.Events) {
      _initRoute = "events";
    }

    else if (tabItem == TabItems.Wings) {
      _initRoute = "wings";
    }

    else if (tabItem == TabItems.Media) {
      _initRoute = "media";
    }

    else if (tabItem == TabItems.More) {
      _initRoute = "more";
    }

    
    return Navigator(
        key: navigatorKey,
        initialRoute: _initRoute,
        onGenerateRoute: Router.generateRoute,
    );
  }
}
