import 'package:flutter/material.dart';
import 'package:Gamer/util/Constant.dart';
import 'package:Gamer/services/tournament_service.dart';
import 'package:provider/provider.dart';
import 'package:chopper/chopper.dart';
import 'store/tournament_store.dart' as tour;
import 'ui/splash_screen.dart';

void main() {
  runApp(MultiProvider(
      providers: [
        Provider(
          create: (_) => ChopperClient(
            baseUrl: BASE_URL,
            services: [
              TournamentService.create(),
            ],
            converter: JsonConverter(),
          ),
        ),
        ProxyProvider<ChopperClient, tour.TournamentStore>(
          create: (ctx) => tour.TournamentStore(null),
          update: (ctx, chopperClient, store) =>
              tour.TournamentStore(chopperClient.getService<TournamentService>()),
        ),
      ],
      child: Consumer<ChopperClient>(
        builder: (ctx, auth, expense) => MyApp(),
      )));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gamer',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
    );
  }
}


