import 'package:flutter/material.dart';
import 'package:qr_reader_custom/pages/content_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('QR Reader With Floor'),
        ),
        floatingActionButton: _buildCustomFloatingActionButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: _buildCustomBottomAppBar());
  }

  //#region [Functions]
  
  //#endregion


  //#region [Widgets] ----  [ WIDGETS ]  ---- //
  Widget _callPage(int actualPage) {
    switch (actualPage) {
      case 0: return ContentPage();
        break;
      case 1: return ContentPage();
        break;
      default:
        return ContentPage();
    }
  }

  FloatingActionButton _buildCustomFloatingActionButton() {
    return FloatingActionButton(
      onPressed: (){},
      child: Icon(Icons.filter_center_focus),
    );
  }

  BottomAppBar _buildCustomBottomAppBar() {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 4,
      clipBehavior: Clip.antiAlias,
      child: _buildCustomNavigationBar()
    );
  }

  BottomNavigationBar _buildCustomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) {
        setState(() {
          currentIndex = index;
        });
      },
      items: [
        BottomNavigationBarItem(
          title: Text('Maps'),
          icon: Icon(Icons.map)
        ),
        BottomNavigationBarItem(
          title: Text('Directions'),
          icon: Icon(Icons.brightness_5)
        )
      ],
    );
  }

  Row _buildCustomNavigationBar2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        IconButton(icon: Icon(Icons.ac_unit), onPressed: (){}),
        IconButton(icon: Icon(Icons.ac_unit), onPressed: (){})
      ],
    );
  }
  //#endregion
}
