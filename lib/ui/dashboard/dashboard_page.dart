import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sample_app/common/resources/colors.dart';
import 'package:flutter_sample_app/common/resources/dimensions.dart';
import 'package:flutter_sample_app/generated/l10n.dart';
import 'package:flutter_sample_app/models/popular_set.dart';
import 'package:flutter_sample_app/ui/base_page.dart';
import 'package:flutter_sample_app/ui/dashboard/dashboard_bloc.dart';
import 'package:flutter_sample_app/ui/dashboard/dashboard_event.dart';
import 'package:flutter_sample_app/ui/filters/filters_page.dart';

import 'dashboard_state.dart';

class DashboardPage extends BasePage<DashboardBloc> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => bloc,
      child: SingleChildScrollView(
        child: BlocConsumer<DashboardBloc, DashboardState>(
          builder: (BuildContext context, DashboardState state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Header(state.currentAddress, state.unreadEvents),
                Title(),
                SearchBar(),
                PopularSetsHeader(),
                PopularSetsList(state.popularSets)
              ],
            );
          },
          listener: (BuildContext context, DashboardState state) {
            if (state.areFiltersVisible) {
              showModalBottomSheet(
                  isScrollControlled: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(Dimensions.RADIUS_NORMAL),
                    ),
                  ),
                  context: context,
                  builder: (context) => FiltersPage());
            }
          },
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  final String _currentAddress;
  final String _unreadEvents;

  const Header(
    this._currentAddress,
    this._unreadEvents, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: Dimensions.PADDING_MAIN_EDGE,
          top: Dimensions.PADDING_NORMAL,
          right: Dimensions.PADDING_MAIN_EDGE,
          bottom: Dimensions.PADDING_NORMAL),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              alignment: Alignment.center,
              child: Text(
                _currentAddress,
                style: TextStyle(fontSize: Dimensions.FONT_SMALL),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.RADIUS_NORMAL),
                color: AppColors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: Dimensions.PADDING_MAIN_EDGE),
            child: Stack(
              alignment: Alignment.topRight,
              children: <Widget>[
                Icon(
                  Icons.notifications_none,
                  size: 36,
                ),
                ClipOval(
                  child: Container(
                    width: 16.0,
                    height: 16.0,
                    color: AppColors.primary,
                    child: Center(
                      child: Text(
                        _unreadEvents,
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: Dimensions.FONT_SMALL,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: Dimensions.PADDING_MAIN_EDGE,
          top: Dimensions.PADDING_NORMAL,
          right: Dimensions.PADDING_MAIN_EDGE,
          bottom: Dimensions.PADDING_NORMAL),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            S.current.dashboard_header_title_part_one,
            style: TextStyle(
              fontSize: Dimensions.FONT_BIG,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            S.current.dashboard_header_title_part_two,
            style: TextStyle(
              fontSize: Dimensions.FONT_BIG,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: Dimensions.PADDING_MAIN_EDGE,
          top: Dimensions.PADDING_NORMAL,
          right: Dimensions.PADDING_MAIN_EDGE,
          bottom: Dimensions.PADDING_NORMAL),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32.0),
          color: AppColors.white,
        ),
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: Dimensions.PADDING_SMALL),
              child: Icon(Icons.search),
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: S.current.dashboard_search_bar_hint,
                ),
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.tune,
                color: AppColors.primary,
              ),
              onPressed: () {
                BlocProvider.of<DashboardBloc>(context).add(OpenFilters());
              },
            ),
          ],
        ),
      ),
    );
  }
}

class PopularSetsHeader extends StatelessWidget {
  const PopularSetsHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: Dimensions.PADDING_MAIN_EDGE,
          top: Dimensions.PADDING_NORMAL,
          right: Dimensions.PADDING_MAIN_EDGE),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            S.current.dashboard_popular_sets_title,
            style: TextStyle(
              fontSize: Dimensions.FONT_BIG,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            S.current.dashboard_popular_sets_see_all_button,
            style: TextStyle(
              color: AppColors.gray,
              fontSize: 12.0,
            ),
          ),
        ],
      ),
    );
  }
}

class PopularSetsList extends StatelessWidget {
  final List<PopularSet> _popularSets;

  const PopularSetsList(
    this._popularSets, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 286,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _popularSets.length,
        padding: const EdgeInsets.all(Dimensions.PADDING_NORMAL),
        itemBuilder: (_, int index) {
          return PopularSetItem(_popularSets[index]);
        },
      ),
    );
  }
}

class PopularSetItem extends StatelessWidget {
  final PopularSet _popularSet;

  const PopularSetItem(
    this._popularSet, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double dividerHeight = 10;
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: Dimensions.PADDING_NORMAL),
      child: Container(
        width: 240,
        child: Card(
          elevation: 8.0,
          shadowColor: AppColors.cardShadow,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Dimensions.PADDING_NORMAL),
          ),
          child: Padding(
            padding: const EdgeInsets.all(Dimensions.PADDING_SMALL),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Stack(
                  alignment: Alignment.topRight,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius:
                          BorderRadius.circular(Dimensions.PADDING_SMALL),
                      child: CachedNetworkImage(
                          width: 240,
                          height: 144,
                          imageUrl: _popularSet.imageUrl,
                          placeholder: (context, url) =>
                              CircularProgressIndicator()),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(Dimensions.PADDING_SMALL),
                      child: Icon(
                        Icons.favorite,
                        color: AppColors.white,
                        size: 20,
                      ),
                    )
                  ],
                ),
                const Divider(
                  color: Colors.transparent,
                  height: dividerHeight,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(_popularSet.name),
                    Text(
                      _popularSet.weight,
                      style: TextStyle(
                        color: AppColors.gray,
                      ),
                    ),
                  ],
                ),
                const Divider(
                  color: Colors.transparent,
                  height: dividerHeight,
                ),
                Text(
                  _popularSet.description,
                  style: TextStyle(
                    color: AppColors.gray,
                  ),
                ),
                const Divider(
                  color: Colors.transparent,
                  height: dividerHeight,
                ),
                Text(
                  _popularSet.price,
                  style: TextStyle(
                      color: AppColors.primary,
                      fontWeight: FontWeight.w600,
                      fontSize: Dimensions.FONT_NORMAL),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
