import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          return sizingInformation.isDesktop
              ? DesktopWidget()
              : sizingInformation.isTablet
                  ? TabletWidget()
                  : MobileWidget();
        },
      ),
    );
  }
}

class MobileWidget extends StatelessWidget {
  const MobileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.red,
      height: double.infinity,
      width: double.infinity,
      child: Text('Mobile'),
    );
  }
}

class TabletWidget extends StatelessWidget {
  const TabletWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.green,
      height: 300,
      width: 300,
      child: Text('Tablet'),
    );
  }
}

class DesktopWidget extends StatelessWidget {
  const DesktopWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.amber,
      child: Container(
        color: Colors.blue,
        height: 300,
        width: 300,
        child: Text('Desktop'),
      ),
    );
  }
}
