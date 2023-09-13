import 'core/constants/export.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Future.wait([initDependancies(), dotenv.load(fileName: ".env")]);
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
      initialRoute: RouteNames.dailyNewsPageRoute,
      onGenerateRoute: sl.get<AppRouter>().generateRoute,
    );
  }
}
