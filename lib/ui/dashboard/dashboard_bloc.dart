import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sample_app/common/address_provider.dart';
import 'package:flutter_sample_app/repositories/events_repository.dart';
import 'package:flutter_sample_app/repositories/popular_sets_repository.dart';
import 'package:flutter_sample_app/ui/dashboard/dashboard_state.dart';

import 'dashboard_event.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  final PopularSetRepository _popularSetRepository;
  final EventsRepository _eventsRepository;
  final AddressProvider _addressProvider;

  DashboardBloc(
      this._popularSetRepository, this._addressProvider, this._eventsRepository)
      : super(DashboardState.init()) {
    this.add(LoadInitialData());
  }

  @override
  Stream<DashboardState> mapEventToState(DashboardEvent event) async* {
    if (event is LoadInitialData) {
      var popularSets = await _popularSetRepository.getPopularSets();
      var currentAddress = await _addressProvider.getCurrentAddress();
      var unreadEvents = await _eventsRepository.getUnreadEvents();
      yield state.copyWith(
          popularSets: popularSets,
          currentAddress: currentAddress,
          unreadEvents: unreadEvents,
          areFiltersVisible: false);
    }

    if (event is OpenFilters) {
      yield state.copyWith(areFiltersVisible: true);
    }
  }
}
