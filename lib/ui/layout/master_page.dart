import 'package:auto_route/auto_route.dart';
import 'package:portfolio/gen/assets.gen.dart';
import 'package:portfolio/ui/hobby/hobby_page.dart';
import 'package:portfolio/ui/hooks/use_l10n.dart';
import 'package:portfolio/ui/theme/app_text_theme.dart';
import 'package:portfolio/ui/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../routes/app_route.gr.dart';
import 'master_view_model.dart';

class MasterPage extends HookConsumerWidget {
  const MasterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(masterViewModelProvider);
    final viewModel = ref.watch(masterViewModelProvider.notifier);
    final l10n = useL10n();

    return state.when(
      data: (data) {
        return AutoTabsScaffold(
          appBarBuilder: (_, tabsRouter) => AppBar(
            backgroundColor: Colors.indigo,
            title: const Text('FlutterBottomNav'),
            centerTitle: true,
            leading: const AutoBackButton(),
          ),
          routes: const [
            HomeRouter(),
            HobbyRouter(),
          ],
          bottomNavigationBuilder: (_, tabsRouter) {
            return BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home'
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.business),
                    label: 'Hobby'
                ),
              ],
              currentIndex: tabsRouter.activeIndex,
              onTap: tabsRouter.setActiveIndex,
              selectedItemColor: theme.appColors.secondaryVariant,
            );
          },
        );
      },
      error: (e, msg) => Text(e.toString()),
      loading: () {
        return Scaffold(
          body: SafeArea(
            child: Center(
              child: CircularProgressIndicator(
                color: theme.appColors.primary,
              ),
            ),
          ),
        );
      },
    );
  }
}
