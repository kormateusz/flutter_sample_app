import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../injector.dart';

abstract class BasePage<T extends Bloc> extends StatelessWidget {
  final T bloc = get<T>();
}
