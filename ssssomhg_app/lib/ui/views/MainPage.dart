import 'package:flutter/material.dart';
import 'package:ssssomhg_app/ui/shared/app_colors.dart';
import 'package:ssssomhg_app/ui/widgets/TabNavigator.dart';
import 'package:ssssomhg_app/ui/widgets/AppDrawer.dart';
import 'package:ssssomhg_app/ui/widgets/appBottom.dart';
import 'package:ssssomhg_app/core/enums/tabItems.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  TabItems currentTab = TabItems.Home;

  Map<TabItems, GlobalKey<NavigatorState>> navigatorKeys = {
    TabItems.Home: GlobalKey<NavigatorState>(),
    TabItems.Events: GlobalKey<NavigatorState>(),
    TabItems.Wings: GlobalKey<NavigatorState>(),
    TabItems.Media: GlobalKey<NavigatorState>(),
    TabItems.More: GlobalKey<NavigatorState>(),
  };

  void _selectTab(TabItems tabItem) {
    setState(() {
      currentTab = tabItem;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: themeColor,
              title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Aum Sri Sai Ram'),
                  ]),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.notifications),
                  onPressed: () {
                    print('Notifications code here');
                  },
                ),
              ],
            ),
            drawer: AppDrawer(),
            body: Stack(children: <Widget>[
              _buildOffstageNavigator(TabItems.Home),
              _buildOffstageNavigator(TabItems.Events),
              _buildOffstageNavigator(TabItems.Wings),
              _buildOffstageNavigator(TabItems.Media),
              _buildOffstageNavigator(TabItems.More),
            ]),
            bottomNavigationBar: AppBottomNavigationBar(
              currentTab: currentTab,
              onSelectTab: _selectTab,
            )));
  }

  Widget _buildOffstageNavigator(TabItems item) {
    return Offstage(
      offstage: currentTab != item,
      child: TabNavigator(
        navigatorKey: navigatorKeys[item],
        tabItem: item,
      ),
    );
  }
}
