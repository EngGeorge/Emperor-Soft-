import 'package:emperorsoft/ItemDetails.dart';
import 'package:emperorsoft/ModelArg.dart';
import 'package:emperorsoft/HomeScreen.dart';
import 'package:flutter/material.dart';

class MyRoute {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        {
          // ignore: prefer_const_constructors
          return MaterialPageRoute(builder: (_) => HomeScreen());
        }
      case '/ItemDetails':
        {
          final arg = settings.arguments as ModelArgs;
          // ignore: prefer_const_constructors
          return MaterialPageRoute(
              // ignore: prefer_const_constructors
              builder: (_) => ItemDetails(
                    modelArgs: arg,
                  ));
        }
      default:
        {
          return MaterialPageRoute(
              builder: (_) => UndefineRoute(
                    routeName: '{$settings.name',
                  ));
        }
    }
  }
}

class UndefineRoute extends StatelessWidget {
  const UndefineRoute({key, required this.routeName}) : super(key: key);
  final String routeName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'This $routeName is Undefine Route',
          style: Theme.of(context)
              .textTheme
              .bodyText1
              ?.copyWith(color: Colors.grey.shade700),
        ),
      ),
    );
  }
}
