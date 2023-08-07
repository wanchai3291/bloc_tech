import 'package:bloc/bloc.dart';
import 'package:bloc_example/repo/todo.model.dart';

import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import '../repo/todo.dart';
part 'sample_event.dart';
part 'sample_state.dart';

class SampleBloc extends Bloc<SampleEvent, SampleState> {
  final TodoRepository _todoRepository;

  SampleBloc(this._todoRepository) : super(SampleInitial()) {
    on<LoadSampleEvent>((event, emit) async {
      emit(SampleLoading());
      try {
        final posts = await _todoRepository.getPosts();
        emit(SampleLoaded(posts));
      } catch (e) {
        emit(SampleError(e.toString()));
      }
    });
  }
}
