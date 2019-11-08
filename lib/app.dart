// マテリアルデザインパッケージのインポート
// これでマテリアルデザインデザインが使用できる
import 'package:flutter/material.dart';

import 'pages/home.dart';
import 'pages/text/textHomePage.dart';
import 'pages/text/textPage.dart';
import 'pages/text/richTextPage.dart';
import 'pages/text/textFieldPage.dart';
import 'pages/text/textFormFieldPage.dart';
import 'pages/animated/animatedHomePage.dart';
import 'pages/animated/animatedPositionedPage.dart';
import 'pages/animated/animatedAlignPage.dart';
import 'pages/animated/animatedContainerPage.dart';
import 'pages/animated/animatedDefaultTextStylePage.dart';
import 'pages/animated/animatedOpacityPage.dart';
import 'pages/animated/animatedPaddingPage.dart';
import 'pages/animated/animatedPhysicalModelPage.dart';
import 'pages/animated/animatedThemePage.dart';
import 'pages/button/buttonHomePage.dart';
import 'pages/button/dropdownButtonPage.dart';
import 'pages/button/flatButtonPage.dart';
import 'pages/button/iconButtonPage.dart';
import 'pages/button/raisedButtonPage.dart';
import 'pages/item/itemHomePage.dart';
import 'pages/item/cardPage.dart';
import 'pages/item/checkBoxPage.dart';
import 'pages/item/circleAvatarPage.dart';
import 'pages/item/drawerPage.dart';
import 'pages/item/floatingActionButtonPage.dart';
import 'pages/item/iconPage.dart';
import 'pages/item/imagePage.dart';
import 'pages/item/opacityPage.dart';
import 'pages/item/progressPage.dart';
import 'pages/layout/layoutHomePage.dart';
import 'pages/layout/alignPage.dart';
import 'pages/layout/centerPage.dart';
import 'pages/layout/containerPage.dart';
import 'pages/layout/fittedBoxPage.dart';
import 'pages/layout/paddingPage.dart';
import 'pages/layout/safeAreaPage.dart';
import 'pages/multiLayout/multiLayoutHomePage.dart';
import 'pages/multiLayout/bottomNavigationBarPage.dart';
import 'pages/multiLayout/columnPage.dart';
import 'pages/multiLayout/expandedPage.dart';
import 'pages/multiLayout/listViewPage.dart';
import 'pages/multiLayout/rowPage.dart';
import 'pages/multiLayout/stackPage.dart';
import 'pages/multiLayout/tabbarPage.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Home(),
      debugShowCheckedModeBanner: false,
      routes: {
        TextHomePage.routeName: (_context) => TextHomePage(),
        TextPage.routeName: (_context) => TextPage(),
        RichTextPage.routeName: (_context) => RichTextPage(),
        TextFieldPage.routeName: (_context) => TextFieldPage(),
        TextFormFieldPage.routeName: (_context) => TextFormFieldPage(),
        AnimatedHomePage.routeName: (_context) => AnimatedHomePage(),
        AnimatedPositionedPage.routeName: (_context) =>
            AnimatedPositionedPage(),
        AnimatedAlignPage.routeName: (_context) => AnimatedAlignPage(),
        AnimatedContainerPage.routeName: (_context) => AnimatedContainerPage(),
        AnimatedDefaultTextStylePage.routeName: (_context) =>
            AnimatedDefaultTextStylePage(),
        AnimatedOpacityPage.routeName: (_context) => AnimatedOpacityPage(),
        AnimatedPaddingPage.routeName: (_context) => AnimatedPaddingPage(),
        AnimatedPhysicalModelPage.routeName: (_context) =>
            AnimatedPhysicalModelPage(),
        AnimatedThemePage.routeName: (_context) => AnimatedThemePage(),
        ButtonHomePage.routeName: (_context) => ButtonHomePage(),
        DropdownButtonPage.routeName: (_context) => DropdownButtonPage(),
        FlatButtonPage.routeName: (_context) => FlatButtonPage(),
        IconButtonPage.routeName: (_context) => IconButtonPage(),
        RaisedButtonPage.routeName: (_context) => RaisedButtonPage(),
        ItemHomePage.routeName: (_context) => ItemHomePage(),
        CardPage.routeName: (_context) => CardPage(),
        CheckBoxPage.routeName: (_context) => CheckBoxPage(),
        CircleAvatarPage.routeName: (_context) => CircleAvatarPage(),
        DrawerPage.routeName: (_context) => DrawerPage(),
        FloatingActionButtonPage.routeName: (_context) =>
            FloatingActionButtonPage(),
        IconPage.routeName: (_context) => IconPage(),
        ImagePage.routeName: (_context) => ImagePage(),
        OpacityPage.routeName: (_context) => OpacityPage(),
        ProgressPage.routeName: (_context) => ProgressPage(),
        LayoutHomePage.routeName: (_context) => LayoutHomePage(),
        AlignPage.routeName: (_context) => AlignPage(),
        CenterPage.routeName: (_context) => CenterPage(),
        ContainerPage.routeName: (_context) => ContainerPage(),
        FittedBoxPage.routeName: (_context) => FittedBoxPage(),
        PaddingPage.routeName: (_context) => PaddingPage(),
        SafeAreaPage.routeName: (_context) => SafeAreaPage(),
        MultiLayoutHomePage.routeName: (_context) => MultiLayoutHomePage(),
        BottomNavigationBarPage.routeName: (_context) =>
            BottomNavigationBarPage(),
        ColumnPage.routeName: (_context) => ColumnPage(),
        ExpandedPage.routeName: (_context) => ExpandedPage(),
        ListViewPage.routeName: (_context) => ListViewPage(),
        RowPage.routeName: (_context) => RowPage(),
        StackPage.routeName: (_context) => StackPage(),
        TabbarPage.routeName: (_context) => TabbarPage(),
      },
    );
  }
}
