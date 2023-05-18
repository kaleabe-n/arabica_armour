import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:arabica_armour_mobile/lib.dart';

class RecentBloc extends Bloc<RecentEvents, RecentStates> {
  RecentBloc(super.initialState) {
    on<GetRecentsEvent>(onGetRecents);
  }
  onGetRecents(GetRecentsEvent event, Emitter emit) async {
    emit(GettingRecentState());
    List<String> paths = [
      'assets/images1.jpg',
      'assets/img.jpg',
      'assets/images1.jpg',
      'assets/img.jpg',
      'assets/img.jpg',
      'assets/images1.jpg',
      'assets/img.jpg',
      'assets/img.jpg',
      'assets/img.jpg',
      'assets/img.jpg',
      'assets/img.jpg'
    ];

    await Future.delayed(const Duration(seconds: 1));
    emit(RecentListState(paths));
  }
}
