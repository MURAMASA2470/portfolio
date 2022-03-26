import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:portfolio/gen/assets.gen.dart';
import 'package:portfolio/ui/hooks/use_l10n.dart';
import 'package:portfolio/ui/theme/app_theme.dart';

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
          appBarBuilder: (_, tabsRouter) => PreferredSize(
            preferredSize: const Size.fromHeight(32),
            child: AppBar(
              backgroundColor: theme.appColors.background,
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(1),
                child: Container(
                  height: 1,
                  color: theme.appColors.surface,
                ),
              ),
              title: SizedBox(
                width: 180,
                height: 30,
                child: Assets.svg.portfolioLogo
                    .svg(alignment: Alignment.center, fit: BoxFit.contain),
              ),
              centerTitle: true,
              leading: const AutoBackButton(),
            ),
          ),
          routes: const [
            HomeRouter(),
            HobbyRouter(),
            ListedIssuesRouter(),
          ],
          bottomNavigationBuilder: (_, tabsRouter) {
            return BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.leaderboard), label: 'Portfolio'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.article), label: 'ListedIssues'),
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
