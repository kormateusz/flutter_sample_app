class Filter {
  final String label;
  final bool isSelected;

  Filter(this.label, this.isSelected);

  Filter copyWith({String label, bool isSelected}) =>
      Filter(label ?? this.label, isSelected ?? this.isSelected);
}
