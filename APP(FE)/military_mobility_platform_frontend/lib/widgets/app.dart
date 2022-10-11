import 'package:flutter/material.dart';
import 'package:military_mobility_platform_frontend/constatns/theme.dart';
import 'package:military_mobility_platform_frontend/provider/auth.dart';
import 'package:military_mobility_platform_frontend/provider/mobility_list.dart';
import 'package:military_mobility_platform_frontend/provider/accident.dart';
import 'package:provider/provider.dart';
import 'package:military_mobility_platform_frontend/provider/navigation.dart';
import 'package:military_mobility_platform_frontend/widgets/navigated_home.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: kAppTheme,
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => NavigationProvider()),
          ChangeNotifierProvider(create: (context) => AuthProvider()),
          ChangeNotifierProvider(create: (context) => MobilityListProvider()),
          ChangeNotifierProvider(create: (context) => RequestedMobilityListProvider()),
          ChangeNotifierProvider(create: (context) => AccidentProvider()),
        ],
        child: const NavigatedHome(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
