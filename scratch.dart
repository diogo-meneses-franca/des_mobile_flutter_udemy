import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String task2Res = await task2();
  task3(task2Res);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future<String> task2() async {
  Duration duration = Duration(seconds: 3);
  String result = '';
  await Future.delayed(duration, () {
    result = 'task 2 data';
    print('Task 2 complete');
  });
  return result;
}

void task3(String task2Result) {
  String result = 'task 3 data';
  print('Task 3 complete with $task2Result');
}
