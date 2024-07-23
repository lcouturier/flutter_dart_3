enum Day {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday;

  Day operator +(int days) {
    final numberOfItems = Day.values.length;
    final index = (this.index + days) % numberOfItems;
    return Day.values[index];
  }

  Day operator -(int days) {
    final numberOfItems = Day.values.length;
    final index = (this.index - days + numberOfItems) % numberOfItems;
    return Day.values[index];
  }

  Day get next => this + 1;
  Day get previous => this - 1;
  bool get isWeekend => this == Day.saturday || this == Day.sunday;
  bool get isWeekday => !isWeekend;
}
