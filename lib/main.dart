import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'common/blocs/bottom_nav_cubit.dart';
import 'common/blocs/web_sidebar_cubit.dart';
import 'common/widgets/main_wrapper.dart';
import 'config/my_theme.dart';
import 'features/feature_course_detail/presentation/screen/course_detail_screen.dart';
import 'features/feature_intro/presentation/bloc/splash_cubit/splash_cubit.dart';
import 'features/feature_intro/presentation/screens/splash_screen.dart';
import 'locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = MyHttpOverrides();
  await initLocator();

  runApp(MultiBlocProvider(
      providers: [
        BlocProvider(create: (_)=> SplashCubit()),
        BlocProvider(create: (_)=> BottomNavCubit()),
        BlocProvider(create: (_)=> WebSidebarCubit()),
      ],
      child: const MyApp()
  ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyThemes.lightTheme,
      darkTheme: MyThemes.darkTheme,
      initialRoute: "/",
      locale: const Locale("fa",""),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale("en",""),
        Locale("fa",""),
      ],
      routes: {
        MainWrapper.routeName: (context)=> MainWrapper(),
        CourseDetailScreen.routeName: (context)=> CourseDetailScreen(),
        // AllProductsScreen.routeName: (context)=> AllProductsScreen(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Pouya Zehn Dornika',
      // home: MobileSignUpScreen(),
      home: SplashScreen(),
    );
  }
}


class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}
