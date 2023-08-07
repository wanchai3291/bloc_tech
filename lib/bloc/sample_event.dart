part of 'sample_bloc.dart';

@immutable
sealed class SampleEvent extends Equatable {}

class LoadSampleEvent extends SampleEvent {
  @override
  List<Object?> get props => [];
}
