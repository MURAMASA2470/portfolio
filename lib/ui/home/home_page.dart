import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:portfolio/ui/components/charts/simple_line.dart';
import 'package:portfolio/ui/components/charts/vertical_bar.dart';
import 'package:portfolio/ui/hooks/use_l10n.dart';
import 'package:portfolio/ui/theme/app_theme.dart';

import 'home_view_model.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(homeViewModelProvider);
    final viewModel = ref.watch(homeViewModelProvider.notifier);
    final l10n = useL10n();

    final List<Map<String, dynamic>> panelInfo = [
      {
        "color" : Colors.deepOrangeAccent,
        "widget" : SimpleLineChart.withSampleData()
      },
      {
        "color" : Colors.lime,
        "widget" : VerticalBarLabelChart.withSampleData()
      },
      {
        "color" : Colors.lightBlueAccent,
        "widget" : null
      },
      {
        "color" : Colors.amberAccent,
        "widget" : null
      },
    ];

    // state.value?.panelState.addAll(List.filled(4, false));

    return state.when(
      data: (data) {

        return Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: const Text("やまもと", style: TextStyle(fontSize: 24)),
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                ),
                Wrap(
                  children: [
                    GestureDetector(
                      child: Container(
                        width: 225,
                        height: 225,
                        margin: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: data.panelState ? panelInfo[1]["color"] : null,
                          border: !data.panelState ? Border.all(color: panelInfo[1]["color"], width: 1) : null,
                        ),
                        child: panelInfo[0]["widget"],
                      ),
                      onTap: () {
                        viewModel.panelTapped();
                      },
                    ),
                    Container(
                      width: 225,
                      height: 225,
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: data.panelState ? panelInfo[1]["color"] : null,
                        border: !data.panelState ? Border.all(color: panelInfo[1]["color"], width: 1) : null,
                      ),
                      child: panelInfo[1]["widget"],
                    ),
                    Container(
                      width: 225,
                      height: 225,
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: panelInfo[2]["color"]
                      ),
                      child: panelInfo[2]["widget"],
                    ),
                    Container(
                      width: 225,
                      height: 225,
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: panelInfo[3]["color"]
                      ),
                      child: panelInfo[3]["widget"],
                    )
                  ],
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
