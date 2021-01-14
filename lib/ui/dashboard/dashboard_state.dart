import 'package:flutter_sample_app/models/popular_set.dart';

class DashboardState {
  final List<PopularSet> popularSets;
  final String currentAddress;
  final String unreadEvents;
  final bool areFiltersVisible;

  const DashboardState(
      {this.popularSets,
      this.currentAddress,
      this.unreadEvents,
      this.areFiltersVisible});

  factory DashboardState.init() => DashboardState(
      popularSets: List<PopularSet>(),
      currentAddress: "",
      unreadEvents: "0",
      areFiltersVisible: false);

  DashboardState copyWith(
          {List<PopularSet> popularSets,
          String currentAddress,
          String unreadEvents,
          bool areFiltersVisible}) =>
      DashboardState(
          popularSets: popularSets ?? this.popularSets,
          currentAddress: currentAddress ?? this.currentAddress,
          unreadEvents: unreadEvents ?? this.unreadEvents,
          areFiltersVisible: areFiltersVisible ?? this.areFiltersVisible);
}
