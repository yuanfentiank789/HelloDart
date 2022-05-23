
void main(List<String> arguments) {
//  testOperator();
//enableFlags(hidden: false, bold: true);
//testTryCatch();

}


testTryCatch() {
  try {
    testThrow();
  } on String catch (e) {
    print('exception with on: $e');
  } catch (e) {
    print('exception: $e');
  }
}

testThrow() {
  throw 'a string'; //可以throw任何非null对象，但更推荐Error和Exception或他们的子类
}

void enableFlags({required bool bold, required bool hidden}) {
  print('bold is $bold, hidden is $hidden');
}

void testOperator() {
  final v = Vector(2, 3);
  final w = Vector(2, 2);

  assert(v + w == Vector(4, 5));
  assert(v - w == Vector(0, 1));
}

class Vector {
  final int x, y;

  Vector(this.x, this.y);

  Vector operator +(Vector v) => Vector(x + v.x, y + v.y);

  Vector operator -(Vector v) => Vector(x - v.x, y - v.y);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Vector &&
              runtimeType == other.runtimeType &&
              x == other.x &&
              y == other.y;

  @override
  int get hashCode =>
      x.hashCode ^
      y.hashCode;


}
