import 'core/constants/export.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv
      .load(fileName: ".env")
      .then((value) async => await initDependancies());
  Bloc.observer = AppBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: StringsResource.appName,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.themeData,
      initialRoute: RouteNames.dailyNewsPage,
      onGenerateRoute: sl.get<AppRouter>().generateRoute,
    );
  }
}
