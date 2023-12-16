import 'package:flutter/material.dart';
// import 'package:machinetest/view/homepage.dart';
import 'package:machinetest/view/repo_details.dart';
import 'package:machinetest/view_model/repo_provider.dart';
import 'package:provider/provider.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';
// import 'package:percent_indicator/percent_indicator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => RepoProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(
                  seedColor: const Color.fromARGB(255, 170, 169, 172)),
              useMaterial3: true),
          home: const RepoDetails(),
        ));
  }
}
