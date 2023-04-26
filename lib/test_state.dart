part of 'test_cubit.dart';

@immutable
abstract class TestState {}

class TestInitial extends TestState {}
class Testloading extends TestState {}
class TestSuccess extends TestState {
  final int output;
  TestSuccess(this.output);

}
class TestError extends TestState {}
