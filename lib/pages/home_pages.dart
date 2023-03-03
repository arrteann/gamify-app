import 'package:flutter/material.dart';
import 'package:gamify_app/pages/pre.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _deviceHeight;
  var _deviceWidth;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: const <Widget>[PreWidget()],
        ),
      ),
    );
  }

  Widget _featuredGamesWidget() {
    return SizedBox(
      height: _deviceHeight * .50,
      width: _deviceWidth,
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: NetworkImage(''),
        )),
      ),
    );
  }
}
