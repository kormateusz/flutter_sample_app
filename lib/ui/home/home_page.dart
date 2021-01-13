import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sample_app/ui/base_page.dart';
import 'package:flutter_sample_app/ui/cart/cart_page.dart';
import 'package:flutter_sample_app/ui/dashboard/dashboard_page.dart';
import 'package:flutter_sample_app/ui/favorite/favorite_page.dart';
import 'package:flutter_sample_app/ui/home/home_bloc.dart';
import 'package:flutter_sample_app/ui/home/home_state.dart';
import 'package:flutter_sample_app/ui/profile/profile_page.dart';

import '../../common/resources/colors.dart';
import 'home_event.dart';

class HomePage extends BasePage<HomeBloc> {
  final List<Widget> _pages = <Widget>[
    DashboardPage(),
    FavoritePage(),
    CartPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => bloc,
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (BuildContext context, HomeState state) {
          return Scaffold(
              bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    title: SizedBox(),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.favorite_border),
                    title: SizedBox(),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_basket),
                    title: SizedBox(),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person_outline),
                    title: SizedBox(),
                  ),
                ],
                currentIndex: state.navigationBarIndex,
                selectedItemColor: AppColors.primary,
                onTap: (int index) {
                  bloc.add(PageSelected(index));
                },
              ),
              body: SafeArea(
                child: Container(
                    color: AppColors.background,
                    child: _pages[state.navigationBarIndex]),
              ));
        },
      ),
    );
  }
}
