/*
  Exercise 5 – Async, Future, Null Safety & Streams
  Goal: Work with async/await, Futures, null-safety operators,
        and Streams.
*/

import 'dart:async';

Future<void> main() async {
  // FUTURE + ASYNC/AWAIT
  print("Loading data...");

  // await waits until Future completes
  String data = await fetchDataFromServer();
  print("Data received: $data");

  // --NULL SAFETY (?, ??, !)--
  // Nullable variable
  String? username;

  // If username is null, print "Guest"
  print("Username: ${username ?? "Guest"}");

  // Assign value
  username = "Đức Duy";

  // Use ! to confirm not null
  print("Username length: ${username!.length}");

  // --STREAM--
  print("\nStreaming numbers:");

  Stream<int> numberStream = countStream(5);

  // Listen to stream values using await for
  await for (int value in numberStream) {
    print("Stream value: $value");
  }

  print("Stream completed.");
}

// Simulate fetching data from server
Future<String> fetchDataFromServer() async {
  // Delay 2 seconds to simulate loading
  await Future.delayed(Duration(seconds: 2));

  return "Fake Server Data (Success)";
}

// Create a stream from 1 to max
Stream<int> countStream(int max) async* {
  for (int i = 1; i <= max; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i; // send value into stream
  }
}