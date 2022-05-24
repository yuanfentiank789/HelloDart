import  'dart:async';

import 'dart:io';

void main(List<String> arguments) {
//  testOperator();
//enableFlags(hidden: false, bold: true);
//testTryCatch();
// testFuture();
// testLinkFuture();
// testDelayedFuture();
// testValueFuture();
// testErrorFuture1();
testErrorFuture2();
// testAsync();
// testWaitFutures();
}

void testWaitFutures(){
  print('main start');

  var task1 = Future((){
    print('task 1');
    return 1;
  });

  var task2 = Future((){
    print('task 2');
    return 2;
  });

  var task3 = Future((){
    print('task 3');
    return 3;
  });

  Future fut = Future.wait([task1, task2, task3]);
  fut.then((responses){
    print(responses);
  });

  print('main stop');
}

void testValueFuture(){
  Future.value(18).then((value) {
    print('hh:$value');
  });
}

void testErrorFuture1(){
  Future.error('error happened')
      .then((value) {
    print('onValue: $value');
  }, onError: (error) {
    print('onError $error');
  });
}

void testErrorFuture2(){
  Future.error('error happened')
      .then((value) {
    print('onValue: $value');
  }).catchError((e){
    print(e);
  });
}

void testDelayedFuture(){
  print('main start');

  Future.delayed(Duration(seconds:1),(){
    print('task delayed');
  });

  Future((){
    // 模拟耗时5秒
    sleep(Duration(seconds:5));
    print('5s task');
  });

  print('main stop');
}

void testFuture() {
  Future(() {
    return 'future value';
  }).then((value) {
    print('onValue: $value');
  }, onError: (error) {
    print('onError $error');
  });
}

testLinkFuture(){
  // 链式调用，可以跟多个then，注册多个回调
  Future((){
    print('async task');
    return 1;
  }).then((res){
    print('first async task complete $res');
    return 2;
  }).then((res){
    print('second async task complete $res');
  });

  print('main stop');
}

testAsync(){
  print('before future');
  var fut = testAwait();
  print(fut.runtimeType);
  print('after future');
}

testAwait() async{
  var result =  await getname();
  print('result is $result');
}

String getname() {
  return'zs';
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
