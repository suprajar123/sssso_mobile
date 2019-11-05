import 'package:flutter/material.dart';
import 'package:ssssomhg_app/core/enums/tabItems.dart';
import 'package:ssssomhg_app/ui/shared/app_colors.dart';

class AppBottomNavigationBar extends StatelessWidget {

  AppBottomNavigationBar({this.currentTab,this.onSelectTab});
  final TabItems currentTab;
  final ValueChanged<TabItems> onSelectTab;

  @override
  Widget build(BuildContext context) {
    
    return new Theme(
        data: Theme.of(context).copyWith(
          // sets the background color of the `BottomNavigationBar`
          canvasColor: themeColor,
        ),
        child: BottomNavigationBar(
          
          items: [
            BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              title: new Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.calendar_today),
              title: new Text('Event'),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.category), 
                title: Text('Wings')
                ),
            BottomNavigationBarItem(
                icon: Icon(Icons.perm_media),
                title: Text('Media')
                ),
            BottomNavigationBarItem(
                icon: Icon(Icons.more_vert), 
                title: Text('More')
                )
          ],
          onTap: (index) => onSelectTab(TabItems.values[index]),
        ));
  }
}
