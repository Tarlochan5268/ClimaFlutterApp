import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async {
  task1();
  task3(await task2());
}

void task3(String task2Result) {
  print("Task3 also $task2Result");
}

Future<String> task2() async {
  String result;
  Duration duration = Duration(seconds: 2);
  //sleep(duration);
  await Future.delayed(duration, () {
    result = "Task 2 Result";
    print("Task2");
  });
  return result;
}

void task1() {
  print("Task1");
}
