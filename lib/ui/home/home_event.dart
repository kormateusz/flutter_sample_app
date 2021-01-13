abstract class HomeEvent {}

class PageSelected implements HomeEvent {
  final int index;

  PageSelected(this.index);
}
