<a name="iubc5"></a>
### **1. Dart概述**
dart官网：[https://dart.dev](https://dart.dev/get-dart)<br />dart中文网：[https://www.dartcn.com/](https://www.dartcn.com/)<br />Dart是谷歌开发的计算机编程语言，亮相于2011年10月，最新的版本是Dart2。Dart诞生的原因是谷歌的工程师出于对JavaScript的不满，诞生的初期也赢得了部分前端开发者的青睐。但是这时JavaScript借着NodeJS火了起来，在前端、后端、移动端无孔不入，Dart就渐渐被人遗忘了，可见Dart本身是具有很强的实力的，只是不大走运。谷歌并没有放弃Dart，不遗余力的推广Dart：谷歌的Angular提供了Dart版本，指定Dart为新系统Fuchsia的官方开发语言，Dart为移动UI框架Flutter的开发语言，因此Dart又重新回到了人们的视野中。<br />Dart通常情况下运行在DartVM上，但是在特定情况下它也可以编译成本地代码运行在硬件上，比如Flutter会将代码编译成指定平台的本地代码来提高性能。

<a name="nFAun"></a>
### 2. Dart特性和重要概念
Dart的特性主要有以下几点：

1. 执行速度快，Dart是AOT(Ahead Of Time)编译的，可以编译成快速的、可预测的本地代码，这使得Flutter几乎都可以使用Dart来编写。也可以采用JIT（Just In Time）编译。
1. 易于移植，Dart可编译成ARM和X86代码，这样Dart可以在Android、iOS和其他地方运行。
1. 容易上手，Dart充分吸收了高级语言特性，如果你已经熟悉C++、C、Java，可以在短短几天内用Dart来开发。
1. 易于阅读，Dart使Flutter不需要单独的声明式布局语言（XML或JSX），或者单独的可视化界面构建器，这是因为Dart的声明式编程布局易于阅读。
1. 避免抢占式调度，Dart可以在没有锁的情况下进行对象分配和垃圾回收，和JavaScript一样，Dart避免了抢占式调度和共享内存，因此不需要锁。

Dart的重要概念有以下几点：

1. 在Dart中，一切都是对象，每个对象都是一个类的实例，所有对象都继承自Object。
1. Dart在运行前解析所有的代码，指定数据类型和编译时常量，可以使代码运行地更快。
1. 与Java不同，Dart不具备关键字public、protected、private。如果一个标识符以下划线_开始，那么它和它的库都是私有的。
1. Dart支持顶级的函数如main()，也支持类或对象的静态和实例方法，还可以在函数内部创建函数。
1. Dart支持顶级的变量，也支持类或对象的静态变量和实例变量，实例变量有时称为字段或属性。
1. Dart支持泛型类型，如List（整数列表）或List（任何类型的对象列表）。
1. Dart工具可以报告两种问题：警告和错误。警告只是说明代码可能无法正常工作，但不会阻止程序执行。错误可以是编译时或运行时的。编译时错误会阻止代码执行; 运行时错误会导致代码执行时报出异常。
<a name="TtCbm"></a>
### 3. Dart开发环境搭建
学习Dart语法最好需要用一个编辑器来实践，这里推荐使用IntelliJ IDEA。

1. 下载安装Dart SDK，推荐采用命令行直接安装：

       
```bash
 brew tap dart-lang/dart
 brew install dart
 brew upgrade dart //升级
```

2. 安装Dart插件， 打开IntelliJ IDEA，菜单中点击File-->Settings-->plugins，在plugins的搜索框中搜索Dart并安装，然后重启IntelliJ IDEA。
2. 配置sdk路径，File-->Settings，在dart插件插件中按照下图配置Dart SDK。

![image.png](https://cdn.nlark.com/yuque/0/2022/png/25382485/1653113604118-d245f835-8d6f-4e5a-a5d0-b68cc8289943.png#clientId=ue6da0603-ef9f-4&crop=0&crop=0&crop=1&crop=1&from=paste&height=326&id=uecf81b92&margin=%5Bobject%20Object%5D&name=image.png&originHeight=652&originWidth=1610&originalType=binary&ratio=1&rotation=0&showTitle=false&size=93253&status=done&style=none&taskId=uf8d52498-08dd-4497-83ae-9a8a81c4d83&title=&width=805)

4. HelloWorld项目，File-->New Project-->Dart，选择控制台应用，一路Next；

![image.png](https://cdn.nlark.com/yuque/0/2022/png/25382485/1653113840936-e80be80d-1e83-4c36-a4d7-ce6bee7aab4d.png#clientId=ue6da0603-ef9f-4&crop=0&crop=0&crop=1&crop=1&from=paste&height=345&id=u8c5e0377&margin=%5Bobject%20Object%5D&name=image.png&originHeight=690&originWidth=1454&originalType=binary&ratio=1&rotation=0&showTitle=false&size=145311&status=done&style=none&taskId=ufd5d43b1-c0b4-4231-bec9-822bc934ea9&title=&width=727)

在项目中的bin/main.dart中加入如下测试代码,点击菜单的Run-->Run'main.dart'
```bash
void main() {
  print("Hello World");
}
```

遇到的问题：记得取消CheckedMode勾选，否则运行报错；<br />![image.png](https://cdn.nlark.com/yuque/0/2022/png/25382485/1653114397746-3468ede7-3939-4cc9-b855-f87bf20e9de6.png#clientId=ue6da0603-ef9f-4&crop=0&crop=0&crop=1&crop=1&from=paste&height=298&id=u678ba5b6&margin=%5Bobject%20Object%5D&name=image.png&originHeight=596&originWidth=1490&originalType=binary&ratio=1&rotation=0&showTitle=false&size=71350&status=done&style=none&taskId=u963f99b2-6d56-46d6-98e6-7d52d5baf79&title=&width=745)
<a name="cMnEI"></a>
### 4. Dart关键字
Dart语言关键字列表：<br />[https://www.dartcn.com/guides/language/language-tour](https://www.dartcn.com/guides/language/language-tour)<br />![image.png](https://cdn.nlark.com/yuque/0/2022/png/25382485/1653115740772-18f0af5b-4275-4aee-a81e-d41af3e8511c.png#clientId=ue6da0603-ef9f-4&crop=0&crop=0&crop=1&crop=1&from=paste&height=573&id=u9d5a0c81&margin=%5Bobject%20Object%5D&name=image.png&originHeight=1146&originWidth=1946&originalType=binary&ratio=1&rotation=0&showTitle=false&size=152599&status=done&style=none&taskId=ubdc872d8-3d8d-4bd1-bd3d-48debf38ad7&title=&width=973)

- 其中有些关键字是dart独有的，如[show](https://www.dartcn.com/guides/language/language-tour#%E5%AF%BC%E5%85%A5%E5%BA%93%E7%9A%84%E4%B8%80%E9%83%A8%E5%88%86)，[hide](https://www.dartcn.com/guides/language/language-tour#%E5%AF%BC%E5%85%A5%E5%BA%93%E7%9A%84%E4%B8%80%E9%83%A8%E5%88%86) ；
- [mixin](https://www.dartcn.com/guides/language/language-tour#%E4%B8%BA%E7%B1%BB%E6%B7%BB%E5%8A%A0%E5%8A%9F%E8%83%BDmixins) ，参考：[https://www.dartcn.com/guides/language/language-tour#%E4%B8%BA%E7%B1%BB%E6%B7%BB%E5%8A%A0%E5%8A%9F%E8%83%BDmixins](https://www.dartcn.com/guides/language/language-tour#%E4%B8%BA%E7%B1%BB%E6%B7%BB%E5%8A%A0%E5%8A%9F%E8%83%BDmixins)
- 值得注意的是，可以采用[operator](https://www.dartcn.com/guides/language/language-tour#%E9%87%8D%E5%86%99%E8%BF%90%E7%AE%97%E7%AC%A6)关键字重载运算符；
```bash
class Vector {
  final int x, y;

  Vector(this.x, this.y);

  Vector operator +(Vector v) => Vector(x + v.x, y + v.y);
  Vector operator -(Vector v) => Vector(x - v.x, y - v.y);

  // 运算符 == 和 hashCode 部分没有列出。 有关详情，请参考下面的注释。
  // ···
}

void main() {
  final v = Vector(2, 3);
  final w = Vector(2, 2);

  assert(v + w == Vector(4, 5));
  assert(v - w == Vector(0, 1));
}
```
> tips:assert默认关闭，需要在运行时携带启用assert参数： --enable-asserts
> ![image.png](https://cdn.nlark.com/yuque/0/2022/png/25382485/1653147821700-b5c9de6c-10df-4c20-916f-11ab9523ad8d.png#clientId=ue6da0603-ef9f-4&crop=0&crop=0&crop=1&crop=1&from=paste&height=26&id=u862c6aa7&margin=%5Bobject%20Object%5D&name=image.png&originHeight=52&originWidth=858&originalType=binary&ratio=1&rotation=0&showTitle=false&size=7388&status=done&style=none&taskId=u24b1b894-445b-4bec-b535-28bdf68180d&title=&width=429)


<a name="kRLs9"></a>
### 5. 基本数据类型
Dart的基本数据类型包括Number、String、Boolean、List、Set、Map、 Symbol、Runes。
<a name="Nj6jW"></a>
#### 5.1 Number
number类型为两类：

- int：整数值不大于64位，具体取决于平台。在Dart VM上，值可以是-2 ^63到2 ^63 - 1，如果编译为JavaScript，允许值为-2^53 to 2^53 - 1。
- double：64-bit (双精度) 浮点数，符合 IEEE 754 标准。
- int 和 double 都是 [num.](https://api.dartlang.org/stable/dart-core/num-class.html) 的亚类型。 num 类型包括基本运算 +， -， /， 和 *， 以及 abs()， ceil()， 和 floor()， 等函数方法。 （按位运算符，例如»，定义在 int 类中。） 如果 num 及其亚类型找不到你想要的方法， 尝试查找使用 [dart:math](https://api.dartlang.org/stable/dart-math) 库。

以下是将字符串转换为数字的方法，反之亦然：
```bash
// String -> int
var one = int.parse('1');
assert(one == 1);

// String -> double
var onePointOne = double.parse('1.1');
assert(onePointOne == 1.1);

// int -> String
String oneAsString = 1.toString();
assert(oneAsString == '1');

// double -> String
String piAsString = 3.14159.toStringAsFixed(2);
assert(piAsString == '3.14');
```
<a name="FKbAA"></a>
#### 5.2 String
Dart 字符串是 UTF-16 编码的字符序列。可以使用单引号或者双引号来创建字符串：
```bash
var s1 = '单引号适用于字符串文字';
var s2 = "双引号同样有效";
```


可以在字符串中使用表达式，用法是：${expression}。如果表达式是一个标识符，可以省略 {}。
```bash
var s = '乾坤大挪移';
assert('张无忌的$s' == '张无忌的乾坤大挪移');
```


使用三个单引号或者三个双引号可以创建多行字符串对象：
```bash
var s1 = '''
第一行
第二行
''';

var s2 = """第一行
第二行""";
```


<a name="j7wuM"></a>
#### 5.3 Boolean
Dart是强bool类型检查，只有true对象才被认为是true。
```bash
var name = '张无忌';
if (name) {
  print('明教教主');
}
```
上面的代码编译不能通过，因为name是一个字符串，而不是bool类型。
<a name="pQ8SI"></a>
#### 5.4 [List](https://www.dartcn.com/guides/language/language-tour#list)
下面是一个List 的示例(同JS的数组):
```bash
var list = [1, 2, 3];
```

List的第一个元素的索引是0，最后一个元素的索引是 list.length - 1 。
```bash
var list = [1, 2, 3, 4, 5, 6];
print(list.length);
print(list[list.length-1]);
```


<a name="Kt5S0"></a>
#### 5.5 Set
Dart中的Set是一组无序的集合。
```bash
var hero = {'张无忌', '风清扬', '张三丰', '独孤求败', '萧峰'};
```

要创建一个空集，可以在{}前面带有类型参数：
```bash
var heros= <String> {};
```

使用add()或addAll()方法将条目添加到现有集中：
```bash
var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
var elements = <String>{};
elements.add('fluorine');
elements.addAll(halogens);
```
<a name="jjnKH"></a>
#### <br />5.6 Map
Map是一个键值对相关的对象，键和值可以是任何类型的对象，每个键都是唯一的，而一个值则可以出现多次。
```bash
var player= {
// Keys      Values
  '20' : '斯诺',
  '3': '艾弗森',
  '40' : '希尔',
  '8' : '麦基',
  '55' : '穆托姆博'
};
```


使用Map构造函数也可以实现同样的功能：
```bash
  var player = new Map();
  player['20'] = '斯诺';
  player['3'] = '艾弗森';
  player['40'] = '希尔';
```
<a name="WeBKo"></a>
### 6. 变量
变量声明使用var关键字，未初始化的变量的初始值为null，即便是数字类型的变量也是null。
```bash
var name = 'liuwangshu';
```

name变量的类型被推断为String，也可以显示声明：
```bash
String name = 'liuwangshu' ; 
```

如果对象不限于单一类型，可以指定Object或dynamic类型。
```bash
Object name = 'liuwangshu' ; 
```

如果定义的变量不会变化，可以使用final或const来代替var，final变量只能设置一次。
```bash
final name = 'liuwangshu'
//name = 'zhangwuji' ; //会报错
```

const变量为编译时常量，如果const变量在类级别，可以使用static const。
```bash
const pi = 3.1415926;       
const area = pi * 60 * 60; 
```

const不仅仅用来定义常量，也可以使用const来创建常量的值。
```bash
var foo = const []; 
final bar = const []; 
const baz = [];//相当于`const []` 
```

<a name="VNUEP"></a>
### 7. 函数
Dart 是一门真正面向对象的语言， 甚至其中的函数也是对象，并且有它的类型 [Function](https://api.dartlang.org/stable/dart-core/Function-class.html) 。 这也意味着函数可以被赋值给变量或者作为参数传递给其他函数。 也可以把 Dart 类的实例当做方法来调用。 有关更多信息，参考 [Callable classes](https://www.dartcn.com/guides/language/language-tour#callable-classes).
<a name="uKwyB"></a>
#### 7.1 箭头函数
=> _expr_ 语法是 { return _expr_; } 的简写。 => 符号 有时也被称为 _箭头_ 语法。<br />如果函数中只有一句表达式，可以使用简写语法： 
```bash
bool isNoble(int atomicNumber) => _nobleGases[atomicNumber] != null;
```

<a name="oJipZ"></a>
#### 7.2 可选参数
> 函数有两种参数类型: required 和 optional。 required 类型参数在参数最前面， 随后是 optional 类型参数。 

可选参数可以是命名参数或者位置参数，但一个参数只能选择其中一种方式修饰；<br />**可选位置参数**<br />将参数放到 [] 中来标记参数是可选的：
```bash
getHttpUrl(String server, String path, [int port=80, int numRetries: 3]) {
  // ...
}
```

**可选命名参数**<br />调用方法的时候，可以使用 paramName: value 的形式来指定参数的名称，这样就可以根据paramName得知参数的含义，提高代码的可读性。<br />由 { } 包装的参数是命名的可选参数:
```bash
getHttpUrl(String server, String path, {int port: 80, int numRetries: 3}) {
  // ...
}
```

<a name="zOlUI"></a>
#### 7. 3 默认参数值
可以使用 = 来定义可选参数的默认值， 默认值必须是编译时常量。如果没有提供默认值，则默认值为 null。
```bash
String say(String from, String msg,
    [String device = 'carrier pigeon', String mood]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  if (mood != null) {
    result = '$result (in a $mood mood)';
  }
  return result;
}

assert(say('Bob', 'Howdy') ==
    'Bob says Howdy with a carrier pigeon');
```


<a name="tJwor"></a>
#### 7.4 main函数
每个应用都需要有个顶级的main() 函数来作为入口才能执行。main()函数的返回值为 void 并且有个可选的 List<String> 参数。
```bash
void main(){
  void printName(String name) {
    print('name is $name');
  }
 printName('liuwangshu');
}
```
<a name="AfHFO"></a>
#### 7.5 词法闭包
_闭包_ 即一个函数对象，即使函数对象的调用在它原始作用域之外， 依然能够访问在它词法作用域内的变量。<br />函数可以封闭定义到它作用域内的变量。 接下来的示例中， makeAdder() 捕获了变量 addBy。 无论在什么时候执行返回函数，函数都会使用捕获的 addBy 变量。
```bash
/// 返回一个函数，返回的函数参数与 [addBy] 相加。
Function makeAdder(num addBy) {
  return (num i) => addBy + i;
}

void main() {
  // 创建一个加 2 的函数。
  var add2 = makeAdder(2);

  // 创建一个加 4 的函数。
  var add4 = makeAdder(4);

  assert(add2(3) == 5);
  assert(add4(3) == 7);
}
```


<a name="qBJga"></a>
### 8. 流程控制语句
Dart的流程控制语句如下：

- if 和 else
- for循环
- while和do- while循环
- break和continue
- switch和case
- assert

这些语句的大部分都和Java差不多，这里主要讲解for循环和switch语句。
<a name="LHwT1"></a>
#### 8.1 for循环
标准的 for 循环：
```bash
  var message = new StringBuffer("张无忌");
  for (var i = 0; i < 3; i++) {
    message.write('!');
  }
```
List和Set等实现了Iterable接口的类还支持for-in形式的遍历:
```bash
var hero = ['张无忌', '风清扬', '张三丰', '独孤求败', '萧峰'];
for (var h in hero) {
  print(h);
}
```
<a name="vR0mC"></a>
#### 8.2 switch和case
Dart中Switch语句通过使用 == 来比较整型、字符串或者编译时常量。被比较的对象必须都是同一个类的实例（不能是其子类），并且这个类不允许覆写 ==。另外，枚举类型很适用于在Switch语句使用。
```bash
  String today='Friday';
  switch(today){
    case 'Monday':
      print('星期一');
      break;
    case 'Friday':
      print('星期五');
      break;
  }
```
<a name="dmcmb"></a>
### 9.捕获异常

- throw:可以throw任何非null对象，但更推荐Error和Exception或他们的子类；
- catch：捕获异常对象，函数可以指定1到2个参数， 第一个参数为抛出的异常对象， 第二个为堆栈信息；
- on：指定异常类型，捕获语句中可以同时使用 on 和 catch ，也可以单独分开使用；
- finally：不管是否抛出异常， finally 中的代码都会被执行。

```bash
void main(List<String> arguments) {
  try {
    testThrow();
  } on String catch(e){
    print('exception with on: $e');
  } catch (e) {
    print('exception: $e');
  }
}

testThrow(){
  throw 'a string';//可以throw任何非null对象，但更推荐Error和Exception或他们的子类
}
```

<a name="PL476"></a>
### 10.为类添加新的功能
Dart是一个面向对象编程语言，支持基于Mixin的继承机制。Mixin可以理解为多继承，在with关键字的后面为一个或者多个类。类似Java的单继承（extends），多实现（implement）。
```bash
class Person{
  run(){
    print('跑');
  }
}

class Wushu{
  use(){
  print('乾坤大挪移');
  }
}

class Zhangwuji extends Person with Wushu{
int age;
Zhangwuji(int age){
  this.age=age;
 }
}

void main() {
  var zhangwuji=new Zhangwuji(30);
  zhangwuji.run();
  zhangwuji.use();
}
```

<a name="J5q2J"></a>
### 11.库的使用
使用import来引入一个库，对于Dart语言内置的库，使用dart: scheme。对于第三方的库，可以使用文件系统路径或者 package: scheme。
```bash
import 'dart:io';
import 'package:mylib/mylib.dart';
import 'package:utils/utils.dart';
```

**导入库的一部分**<br />如果只使用库的一部分功能，则可以选择需要导入的部分内容。其中show代表只导入指定的部分，hide代表除了指定的部分都导入。
```bash
// 只导入foo
import 'package:lib1/lib1.dart' show foo;

// 除了foo，其他部分都导入
import 'package:lib2/lib2.dart' hide foo;
```

**延迟加载库**<br />延迟加载意味着应用程序可以在需要的时候再加载库，使用延迟加载库的场景主要有以下几点：

- 减少APP的初始启动时间。
- 执行A/B测试，例如尝试各种算法的不同实现。
- 加载很少使用的功能。

要延迟加载一个库，需要先使用 eferred as来导入：<br />import 'package:deferred/hello.dart' deferred as hello;

当需要使用的时候，调用loadLibrary() 函数来加载库：
```bash
greet() async {
  await hello.loadLibrary();
  hello.printGreeting();
}
```

<a name="QiiiY"></a>
### 12.Dart异步编程
<a name="E9OkJ"></a>
#### 12.1 异步编程技术
编程中的代码执行，通常分为同步与异步两种。简单说，同步就是按照代码的编写顺序，从上到下依次执行，这也是最简单的我们最常接触的一种形式。但是同步代码的缺点也显而易见，如果其中某一行或几行代码非常耗时，那么就会阻塞，使得后面的代码不能被立刻执行。<br />异步的出现正是为了解决这种问题，一般常见的解决方案有如下两种：

1. 多线程实现，有线程开销，同时需要处理多线程数据安全问题；
1. 基于事件的异步模型，单线程中存在一个事件循环和一个事件队列，事件循环不断的从事件队列中取出事件来执行。

Dart 是事件驱动的体系结构，该结构基于具有单个事件循环和两个队列的单线程执行模型。<br />![image.png](https://cdn.nlark.com/yuque/0/2022/png/25382485/1653287954552-cb0e46bf-bd09-4023-8dab-b9a3214e3074.png#clientId=ue6da0603-ef9f-4&crop=0&crop=0&crop=1&crop=1&from=paste&height=465&id=COdZ9&margin=%5Bobject%20Object%5D&name=image.png&originHeight=930&originWidth=1468&originalType=binary&ratio=1&rotation=0&showTitle=false&size=1010715&status=done&style=none&taskId=u46f01cc1-0846-4bb8-87c6-31bedbfbb3a&title=&width=734)

<a name="zCbrU"></a>
#### 12.2 Dart的事件循环
Dart 是事件驱动的体系结构，该结构基于具有单个事件循环和两个队列的单线程执行模型。<br />Dart 的两个队列分别是

- MicroTask queue 微任务队列
- Event queue 事件队列

Dart事件循环执行如上图所示

1. 先查看MicroTask队列是否为空，不是则先执行MicroTask队列
1. 一个MicroTask执行完后，检查有没有下一个MicroTask，直到MicroTask队列为空，才去执行Event队列
1. 在Evnet 队列取出一个事件处理完后，再次返回第一步，去检查MicroTask队列是否为空

我们可以看出，将任务加入到MicroTask中可以被尽快执行，但也需要注意，当事件循环在处理MicroTask队列时，Event队列会被卡住，应用程序无法处理鼠标单击、I/O消息等等事件。<br />![image.png](https://intranetproxy.alipay.com/skylark/lark/0/2022/png/22931/1653365168725-949f347e-a98a-4531-8b1f-d85e382aad25.png#clientId=u977236e1-8d4b-4&crop=0&crop=0&crop=1&crop=1&from=paste&height=391&id=uecef049e&margin=%5Bobject%20Object%5D&name=image.png&originHeight=675&originWidth=596&originalType=binary&ratio=1&rotation=0&showTitle=false&size=371834&status=done&style=none&taskId=u32e565b2-7a27-4be7-9ecb-cb88c152109&title=&width=345)

<a name="yDFV8"></a>
#### 12.3 队列任务添加
针对事件队列和微任务队列，Dart分别提供了API来向两个队列添加可执行任务：<br />**将任务添加到MicroTask队列有两种方法：**
```javascript
import  'dart:async';

void  myTask(){
    print("this is my task");
}

void  main() {
    // 1. 使用 scheduleMicrotask 方法添加
    scheduleMicrotask(myTask);

    // 2. 使用Future对象添加
    new  Future.microtask(myTask);
}
```

**将任务添加到Event队列：**
```javascript
import  'dart:async';

void  myTask(){
    print("this is my task");
}

void  main() {
    new  Future(myTask);
}
```
代码验证：
```javascript
import  'dart:async';

void  main() {
    print("main start");

    new  Future((){
        print("this is my task");
    });

    new  Future.microtask((){
        print("this is microtask");
    });

    print("main stop");
}
```
运行结果：
```javascript
main start
main stop
this is microtask
this is my task
```

<a name="GlvPY"></a>
#### 12.4 Future
Future类是对未来结果的一个代理，使用方法基本同JavaScript中的Promise。<br />Future的几种创建方法

- Future()：直接通过构造函数传入异步任务；
- Future.microtask()：构造微任务的Future；
- Future.sync() : 同步方法，会理解被执行；
- Future.value()：创建一个有值返回的Future。如果传入的参数又是Future，则创建的Future将等待返回的future完成后将相同类型的结果返回；类比Promise.resolve();
- Future.error:创建一个发生异常的Future，类比Promise.reject();
- Future.delayed()：延时任务，表示在延迟时间到了之后将任务加入到Event队列。


<a name="CPWdX"></a>
##### 12.4.1 延时任务
表示在延迟时间到了之后将任务加入到Event队列。需要注意的是，这并不是准确的，万一前面有很耗时的任务，那么你的延迟任务不一定能准时运行。
```javascript
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

```
<a name="ygKzW"></a>
##### 12.4.2 回调处理
创建完成Future对象后，可以通过then方法接收Future的结果：
```javascript
void testFuture() {
  Future(() {
    return 'future value';
  }).then((value) {
    print('onValue: $value');
  }, onError: (error) {
    print('onError $error');
  });
}
```
then方法的返回值也是一个Future，可以继续对这个对象调用then方法，注册接收结果的函数。后注册then函数接收的就是前一个then函数的返回值，如果前一个函数没有返回值，后面就接收到null值。
<a name="yudMF"></a>
##### 12.4.3 处理多个Future
使用**静态方法**wait 等待多个任务全部完成后回调。
```javascript
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

```
<a name="drmhp"></a>
#### 12.5 async和await
在Dart1.9中加入了async和await关键字，有了这两个关键字，我们可以更简洁的编写异步代码，而不需要调用Future相关的API.<br />将 async 关键字作为方法声明的后缀时，具有如下意义:

- 被修饰的方法会将一个 Future 对象作为返回值;
- 该方法会同步执行其中的方法的代码直到第一个 await 关键字，然后它暂停该方法其他部分的执行；
- 一旦由 await 关键字引用的 Future 任务执行完成，await的下一行代码将立即执行。

```javascript
testAwait() async{
  var result =  await getname();
  print('result is $result');
}

String getname() {
  return'zs';
}
```


<a name="eDKYZ"></a>
#### 参考：[https://cloud.tencent.com/developer/article/1507845](https://cloud.tencent.com/developer/article/1507845)
             [https://www.codenong.com/j5ec1efe16fb9a0436e4804e2/](https://www.codenong.com/j5ec1efe16fb9a0436e4804e2/)
<a name="I1wN7"></a>
### 13.让类可调用
如果Dart中的类实现了call()函数，那么这个类可以当做方法来调用。
```bash
class JointFunction {
  call(String a, String b, String c, String d) => '$a $b $c $d';
}

main() {
  var jf = new JointFunction();
  var out = jf("放","手","去","做");//1
  print('$out');
}
```
在上面的示例中，JointFunction类定义了一个call()函数，它接收三个字符串并拼接它们。这样在注释1处就可以调用JointFunction类了。
<a name="WtaZJ"></a>
### 14.创建实例
在Java中创建实例可以用new，在Dart中你可以选择用new，也可以选择不用：
```bash
Element element = Element();
```

对于Android开发来说用new可能更习惯一些，可读性也稍微好点，不用new的话显得更简洁，至于用不用new就看团队的要求和个人的习惯吧，没有绝对的好坏之分。
<a name="WgWbB"></a>
### 总结
Dart的知识点有很多，这里只介绍了一部分我认为需要重点掌握的部分，如果想了解更多，可以查看官方文档，关于Dart的学习可以结合Flutter边写边学，不要只抠Dart的细节。
