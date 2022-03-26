import 'package:device_preview/device_preview.dart';
import 'package:portfolio/ui/routes/app_route.gr.dart';
import 'package:portfolio/ui/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sizer/sizer.dart';

class MyApp extends HookConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = AppRouter();
    final theme = ref.watch(appThemeProvider);
    final themeMode = ref.watch(appThemeModeProvider);

    return Sizer(
      builder: (context, orientation, deviceType) => MaterialApp.router(
        title: 'Portfolio',
        theme: theme.data,
        darkTheme: AppTheme.dark().data,
        themeMode: themeMode,
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        localizationsDelegates: L10n.localizationsDelegates,
        supportedLocales: L10n.supportedLocales,
        routeInformationParser: appRouter.defaultRouteParser(),
        routerDelegate: appRouter.delegate(),
      ),
    );
  }
}
