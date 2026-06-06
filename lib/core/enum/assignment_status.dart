enum AssignmentStatus {
  inProfress,
  completed;

  String get apiValue => switch (this) {
    .inProfress => 'in_progress',
    .completed => 'completed',
  };

  bool get isCompleted => this == .completed;

  static AssignmentStatus fromApi(String value) =>
      value == 'completed' ? .completed : .inProfress;
}
