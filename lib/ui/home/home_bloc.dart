import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sample_app/ui/home/home_event.dart';
import 'package:flutter_sample_app/ui/home/home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState(0));

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    if (event is PageSelected) {
      yield HomeState(event.index);
    }
  }
}
