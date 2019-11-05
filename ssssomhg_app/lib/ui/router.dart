import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ssssomhg_app/ui/views/HomePage.dart';
import 'package:ssssomhg_app/ui/views/MainPage.dart';
import 'package:ssssomhg_app/ui/views/Events.dart';
import 'package:ssssomhg_app/ui/views/Wings.dart';
import 'package:ssssomhg_app/ui/views/Media.dart';
import 'package:ssssomhg_app/ui/views/More.dart';
/* import 'package:provider_architecture/core/models/post.dart';
import 'package:provider_architecture/ui/views/home_view.dart';
import 'package:provider_architecture/ui/views/login_view.dart';
import 'package:provider_architecture/ui/views/post_view.dart'; */

const String initialRoute = "login";

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
      //return MaterialPageRoute(builder: (_) => HomeView());
      case 'main':
        return MaterialPageRoute(builder: (_) => MainPage());
      case 'home':
        //var post = settings.arguments as Post;
        return MaterialPageRoute(builder: (_) => HomePage());
      case 'events':
        return MaterialPageRoute(builder: (_) => EventsPage());
      case 'wings':
        return MaterialPageRoute(builder: (_) => WingsPage());
      case 'media':
        return MaterialPageRoute(builder: (_) => MediaPage());
      case 'more':
        return MaterialPageRoute(builder: (_) => MorePage());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
