import 'package:auto_route/auto_route.dart';
import 'package:intl/intl.dart';
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
    final formatter = NumberFormat('#,###.#');

    return state.when(
      data: (data) {
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(30, 15, 10, 0),
                  width: 100,
                  height: 100,
                  child: Text(
                    '総資産',
                    style: theme.textTheme.h70.bold(),
                  ),
                ),
                Expanded(
                    child: SizedBox(
                  height: 100,
                  child: Text(
                    formatter.format(83973438) + ' 円',
                    style: theme.textTheme.h70.comfort(),
                  ),
                ))
              ],
            ),
            const Divider(),
            Assets.img.hobby01.image(width: 400),
            Text(
              l10n.hello,
              style: theme.textTheme.h70.bold(),
            ),
            const Divider(),
            Text(
              'Hobby Page',
              style: theme.textTheme.h70.bold(),
            ),
            const Divider(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: theme.appColors.primary,
                onPrimary: theme.appColors.onPrimary,
              ),
              onPressed: () {},
              child: Text(data.count.toString()),
            )
          ],
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
