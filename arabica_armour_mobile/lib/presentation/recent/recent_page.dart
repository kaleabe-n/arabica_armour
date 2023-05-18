import 'package:flutter/material.dart';
import 'package:arabica_armour_mobile/lib.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RecentPage extends StatelessWidget {
  const RecentPage({super.key});

  List<CardWidget> getCards(paths) {
    List<CardWidget> cards = [];
    for (int i = 0; i < paths.length; i++) {
      cards.add(CardWidget(paths[i]));
    }
    return cards;
  }

  @override
  Widget build(BuildContext context) {
    Widget screen;
    final recentBlock = BlocProvider.of<RecentBloc>(context);
    recentBlock.add(GetRecentsEvent());
    return LayoutBuilder(
      builder: (context, state) =>
          BlocBuilder<RecentBloc, RecentStates>(builder: (_, state) {
        if (state is GettingRecentState) {
          screen = Scaffold(
              body: Container(
                  color: Colors.white,
                  child: Center(child: const CircularProgressIndicator())));
        } else if (state is GettingRecentFailedState) {
          screen = Center(
            child: Column(
              children: [
                const Text('Faild to get recent images'),
                ElevatedButton(
                    onPressed: () {
                      if (state is GettingRecentState) {
                      } else {
                        final recentBloc = BlocProvider.of<RecentBloc>(context);
                        recentBloc.add(GetRecentsEvent());
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(1, 155, 113, 1)),
                    child: const Text(
                      'Retry',
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ),
          );
        } else if (state is RecentListState) {
          screen =
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(8, 8, 8, 20),
              child: Text(
                "Recently scanned",
                style: TextStyle(
                    color: Color.fromRGBO(57, 73, 41, 1),
                    fontSize: 20,
                    fontFamily: 'aerial',
                    fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
                child: GridView(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 300,
                  mainAxisSpacing: 1,
                  crossAxisSpacing: 2,
                  mainAxisExtent: 220),
              children: getCards(state.paths),
            ))
          ]);
        } else {
          screen = const Text('unknown error');
        }
        return screen;
      }),
    );
  }
}
