class Person {
  final String name;
  final int age;
  final String? email;

  Person({required this.name, required this.age, this.email});

  (bool, String) get hasMail => (email != null, email!);
}
