part of 'sample_bloc.dart';

@immutable
sealed class SampleState {
  const SampleState();

  @override
  List<Object> get props => [];
}

final class SampleInitial extends SampleState {}

class SampleLoading extends SampleState {}

class SampleLoaded extends SampleState {
  final List<Todo> data;
  const SampleLoaded(this.data);
}

class SampleError extends SampleState {
  final String error;

  const SampleError(this.error);
}
