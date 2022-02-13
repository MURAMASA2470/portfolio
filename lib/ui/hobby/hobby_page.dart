import 'package:flapp/gen/assets.gen.dart';
import 'package:flapp/ui/hobby/hobby_view_model.dart';
import 'package:flapp/ui/home/home_page.dart';
import 'package:flapp/ui/hooks/use_l10n.dart';
import 'package:flapp/ui/theme/app_text_theme.dart';
import 'package:flapp/ui/theme/app_theme.dart';
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

    void _onBottomNavigationTapped(int index) {
      switch (index) {
        case 0:
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const HomePage()));
          break;
        case 1:
          break;
        default:
      }
    }

    return state.when(
      data: (data) {
        return Scaffold(
          body: Center(
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
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.business),
                label: 'Hobby',
              ),
            ],
            currentIndex: data.selectedIndex,
            selectedItemColor: theme.appColors.secondaryVariant,
            onTap: _onBottomNavigationTapped,
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
