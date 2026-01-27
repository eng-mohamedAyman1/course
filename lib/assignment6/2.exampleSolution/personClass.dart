class Person {
  String name;
  String address;

  Person(this.name, this.address);

  @override
  String toString() {
    return "Person: name = $name, address = $address";
  }
}