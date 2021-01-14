import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sample_app/common/resources/colors.dart';
import 'package:flutter_sample_app/common/resources/dimensions.dart';
import 'package:flutter_sample_app/generated/l10n.dart';
import 'package:flutter_sample_app/models/filter.dart';
import 'package:flutter_sample_app/ui/base_page.dart';
import 'package:flutter_sample_app/ui/filters/filters_bloc.dart';
import 'package:flutter_sample_app/ui/filters/filters_event.dart';
import 'package:flutter_sample_app/ui/filters/filters_state.dart';

class FiltersPage extends BasePage<FiltersBloc> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => bloc,
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(Dimensions.PADDING_MAIN_EDGE),
          child: BlocBuilder<FiltersBloc, FiltersState>(
            builder: (BuildContext context, state) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        S.current.filters_title,
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.clear),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      )
                    ],
                  ),
                  CategoryHeader(S.current.filters_category_header),
                  Wrap(
                    spacing: Dimensions.PADDING_SMALL,
                    runSpacing: Dimensions.PADDING_SMALL,
                    children: [
                      for (var filter in state.categoryFilters)
                        FilterButton(
                          filter,
                          onClick: (filter) =>
                              bloc.add(CategoryFilterClick(filter)),
                        )
                    ],
                  ),
                  CategoryHeader(S.current.filters_types_header),
                  Wrap(
                    spacing: Dimensions.PADDING_SMALL,
                    runSpacing: Dimensions.PADDING_SMALL,
                    children: [
                      for (var filter in state.typesFilters)
                        FilterButton(
                          filter,
                          isSmall: true,
                          onClick: (filter) =>
                              bloc.add(TypesFilterClick(filter)),
                        )
                    ],
                  ),
                  CategoryHeader(S.current.filters_price_header),
                  Wrap(
                    spacing: Dimensions.PADDING_SMALL,
                    runSpacing: Dimensions.PADDING_SMALL,
                    children: [
                      for (var filter in state.priceFilters)
                        FilterButton(
                          filter,
                          onClick: (filter) =>
                              bloc.add(PriceFilterClick(filter)),
                        )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: Dimensions.PADDING_LARGE,
                    ),
                    child: ButtonTheme(
                      height: 56.0,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.0)),
                        color: AppColors.primary,
                        child: Text(
                          S.current.filters_apply_filters_button,
                          style: TextStyle(color: AppColors.white),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                  ),
                  TextButton(
                    child: Text(S.current.filters_clear_filters_button),
                    onPressed: () {
                      bloc.add(ClearFilters());
                    },
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class FilterButton extends StatelessWidget {
  final Filter filter;
  final Function(Filter) onClick;
  final bool isSmall;

  const FilterButton(this.filter, {Key key, this.onClick, this.isSmall = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var paddingSmall =
        isSmall ? Dimensions.PADDING_TINY : Dimensions.PADDING_SMALL;
    var paddingNormal =
        isSmall ? Dimensions.PADDING_SMALL : Dimensions.PADDING_NORMAL;

    return GestureDetector(
      onTap: () {
        onClick(filter);
      },
      child: Container(
        padding: EdgeInsets.all(paddingSmall),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: filter.isSelected ? AppColors.primary : AppColors.cardShadow,
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(
              paddingNormal, paddingSmall, paddingNormal, paddingSmall),
          child: Text(
            filter.label,
            style: TextStyle(
                fontSize: isSmall ? Dimensions.FONT_SMALL : 14.0,
                color: filter.isSelected ? AppColors.white : AppColors.gray),
          ),
        ),
      ),
    );
  }
}

class CategoryHeader extends StatelessWidget {
  final String _label;

  const CategoryHeader(
    this._label, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: Dimensions.PADDING_BIG,
        bottom: Dimensions.PADDING_NORMAL,
      ),
      child: Text(
        _label,
        style: TextStyle(
            fontSize: Dimensions.FONT_SMALL, fontWeight: FontWeight.w900),
      ),
    );
  }
}
