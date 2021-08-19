void main(List<String> arguments) {
  Person p;

  try {
    p = Person(name: 'Yusril');
  } catch (e) {
    print(e);
  }

  print('hello');
}

class Person {
  final String name;
  final int age;

  Person({required this.name, this.age = 0}) {
    // assertion error! if given value doesn't matches!
    // ignore: unnecessary_null_comparison
    assert(name != null, 'You must give the person name');
  }
}
