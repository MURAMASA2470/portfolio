import 'package:auto_route/auto_route.dart';
import 'package:portfolio/gen/assets.gen.dart';
import 'package:portfolio/ui/hobby/hobby_view_model.dart';
import 'package:portfolio/ui/home/home_page.dart';
import 'package:portfolio/ui/hooks/use_l10n.dart';
import 'package:portfolio/ui/theme/app_text_theme.dart';
import 'package:portfolio/ui/theme/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HobbyPage extends HookConsumerWidget {
  const HobbyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(hobbyViewModelProvider);
    final viewModel = ref.watch(hobbyViewModelProvider.notifier);
    final l10n = useL10n();

    return state.when(
      data: (data) {
        return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Assets.img.supermarket.image(width: 400),
                Text(
                  l10n.hello,
                  style: theme.textTheme.h70.bold(),
                ),
                Text(
                  'Hobby Page',
                  style: theme.textTheme.h70.bold(),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: theme.appColors.primary,
                    onPrimary: theme.appColors.onPrimary,
                  ),
                  onPressed: () {},
                  child: Text(data.count.toString()),
                )
              ],
            ),
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
