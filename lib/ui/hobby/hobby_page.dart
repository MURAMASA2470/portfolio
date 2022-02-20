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
        return SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(30, 15, 10, 0),
                    width: 100,
                    height: 80,
                    child: Text(
                      '総資産',
                      style: theme.textTheme.h70.bold(),
                    ),
                  ),
                  Expanded(
                      child: SizedBox(
                    height: 80,
                    child: Text(
                      formatter.format(83973438) + ' 円',
                      style: theme.textTheme.h70.comfort(),
                    ),
                  ))
                ],
              ),
              const Divider(),
              Assets.img.hobby01.image(width: 400),
              const Divider(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  elevation: 0,
                  onPrimary: Colors.grey,
                ),
                onPressed: () {},
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(30, 15, 10, 0),
                        height: 50,
                        child: Text(
                          '国内株式',
                          style: theme.textTheme.h50.bold(),
                        ),
                      ),
                      Expanded(
                          child: SizedBox(
                        height: 50,
                        child: Text(
                          formatter.format(41345538) + ' 円',
                          style: theme.textTheme.h50.comfort(),
                          textAlign: TextAlign.end,
                        ),
                      )),
                      const SizedBox(
                        width: 50,
                        child: Icon(Icons.chevron_right),
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  elevation: 0,
                  onPrimary: Colors.grey,
                ),
                onPressed: () {},
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(30, 15, 10, 0),
                        height: 50,
                        child: Text(
                          '先進国株式',
                          style: theme.textTheme.h50.bold(),
                        ),
                      ),
                      Expanded(
                          child: SizedBox(
                        height: 50,
                        child: Text(
                          formatter.format(23392077) + ' 円',
                          style: theme.textTheme.h50.comfort(),
                          textAlign: TextAlign.end,
                        ),
                      )),
                      const SizedBox(
                        width: 50,
                        child: Icon(Icons.chevron_right),
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  elevation: 0,
                  onPrimary: Colors.grey,
                ),
                onPressed: () {},
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(30, 15, 10, 0),
                        height: 50,
                        child: Text(
                          '新興国株式',
                          style: theme.textTheme.h50.bold(),
                        ),
                      ),
                      Expanded(
                          child: SizedBox(
                        height: 50,
                        child: Text(
                          formatter.format(5759832) + ' 円',
                          style: theme.textTheme.h50.comfort(),
                          textAlign: TextAlign.end,
                        ),
                      )),
                      const SizedBox(
                        width: 50,
                        child: Icon(Icons.chevron_right),
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  elevation: 0,
                  onPrimary: Colors.grey,
                ),
                onPressed: () {},
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(30, 15, 10, 0),
                        height: 50,
                        child: Text(
                          '国内債券',
                          style: theme.textTheme.h50.bold(),
                        ),
                      ),
                      Expanded(
                          child: SizedBox(
                        height: 50,
                        child: Text(
                          formatter.format(894648) + ' 円',
                          style: theme.textTheme.h50.comfort(),
                          textAlign: TextAlign.end,
                        ),
                      )),
                      const SizedBox(
                        width: 50,
                        child: Icon(Icons.chevron_right),
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  elevation: 0,
                  onPrimary: Colors.grey,
                ),
                onPressed: () {},
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(30, 15, 10, 0),
                        height: 50,
                        child: Text(
                          '先進国債権',
                          style: theme.textTheme.h50.bold(),
                        ),
                      ),
                      Expanded(
                          child: SizedBox(
                        height: 50,
                        child: Text(
                          formatter.format(375920) + ' 円',
                          style: theme.textTheme.h50.comfort(),
                          textAlign: TextAlign.end,
                        ),
                      )),
                      const SizedBox(
                        width: 50,
                        child: Icon(Icons.chevron_right),
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  elevation: 0,
                  onPrimary: Colors.grey,
                ),
                onPressed: () {},
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(30, 15, 10, 0),
                        height: 50,
                        child: Text(
                          '国内REIT',
                          style: theme.textTheme.h50.bold(),
                        ),
                      ),
                      Expanded(
                          child: SizedBox(
                        height: 50,
                        child: Text(
                          formatter.format(94648) + ' 円',
                          style: theme.textTheme.h50.comfort(),
                          textAlign: TextAlign.end,
                        ),
                      )),
                      const SizedBox(
                        width: 50,
                        child: Icon(Icons.chevron_right),
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(),
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
