import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zaituun/core/l10n/generated/l10n.dart';
import 'package:zaituun/core/router/app_router.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(393, 852),
        splitScreenMode: true,
        builder: (context, _) {
          return MaterialApp.router(
            localizationsDelegates: const [
              Lang.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: Lang.delegate.supportedLocales,
            title: 'Zaituun',
            theme: ThemeData(
              textTheme: Theme.of(context)
                  .textTheme
                  .merge(Typography.blackCupertino)
                  .apply(fontSizeFactor: 1.sp),
              colorScheme:
                  ColorScheme.fromSeed(seedColor: const Color(0xFF1E6B1C)),
              useMaterial3: true,
            ),
            routerConfig: router,
          );
        });
  }
}
