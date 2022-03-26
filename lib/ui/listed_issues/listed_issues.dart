import 'package:auto_route/auto_route.dart';
import 'package:intl/intl.dart';
import 'package:portfolio/gen/assets.gen.dart';
import 'package:portfolio/ui/listed_issues/listed_issues_view_model.dart';
import 'package:portfolio/ui/home/home_page.dart';
import 'package:portfolio/ui/hooks/use_l10n.dart';
import 'package:portfolio/ui/theme/app_text_theme.dart';
import 'package:portfolio/ui/theme/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ListedIssuesPage extends HookConsumerWidget {
  const ListedIssuesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(listedIssuesViewModelProvider);
    final viewModel = ref.watch(listedIssuesViewModelProvider.notifier);
    final l10n = useL10n();
    final formatter = NumberFormat('#,###.#');

    final List<Map<String, dynamic>> itemList = <Map<String, dynamic>>[
      {
        'companyName': '日本たばこ産業',
        'currentPrice': 2091.0,
      },
      {
        'companyName': '武田製薬',
        'currentPrice': 3612.0,
      },
      {
        'companyName': 'シダックス',
        'currentPrice': 381.0,
      },
      {
        'companyName': 'ライオン',
        'currentPrice': 1393.0,
      },
      {
        'companyName': 'オリエンタルランド',
        'currentPrice': 23975.0,
      },
      {
        'companyName': 'トリドールホールディングス',
        'currentPrice': 2345.0,
      },
    ];

    return state.when(
      data: (data) {
        return SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.fromLTRB(8, 0, 0, 0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 60,
                        child: Row(
                          children: [
                            Text(
                              '  銘柄一覧',
                              textAlign: TextAlign.right,
                              style: theme.textTheme.h70.comfort(),
                            ),
                            Text(
                              ' - 国内銘柄 -',
                              textAlign: TextAlign.right,
                              style: theme.textTheme.h60.comfort(),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                        width: 40,
                        height: 60,
                        child: IconButton(
                          icon: const Icon(Icons.search),
                          iconSize: 40,
                          color: Colors.grey,
                          onPressed: () {},
                        )),
                  ],
                ),
                const Divider(indent: 0),
                ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                  itemCount: itemList.length,
                  itemBuilder: (context, index) {
                    return TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.grey,
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                              child: SizedBox(
                            child: Text(
                              itemList[index]['companyName'],
                              style: theme.textTheme.h50.bold(),
                              softWrap: false,
                              overflow: TextOverflow.ellipsis,
                            ),
                            height: 50,
                          )),
                          Container(
                            margin: const EdgeInsets.fromLTRB(7, 5, 10, 5),
                            height: 50,
                            child: Text(
                              formatter
                                      .format(itemList[index]['currentPrice']) +
                                  ' 円',
                              style: theme.textTheme.h50.comfort(),
                              textAlign: TextAlign.end,
                            ),
                          ),
                          const SizedBox(
                            width: 50,
                            height: 50,
                            child: Icon(Icons.chevron_right),
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) =>
                      const Divider(indent: 0),
                ),
              ],
            ),
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
