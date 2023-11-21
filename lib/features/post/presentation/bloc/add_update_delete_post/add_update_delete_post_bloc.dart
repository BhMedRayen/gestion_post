import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'add_update_delete_post_event.dart';
part 'add_update_delete_post_state.dart';

class AddUpdateDeletePostBloc extends Bloc<AddUpdateDeletePostEvent, AddUpdateDeletePostState> {
  AddUpdateDeletePostBloc() : super(AddUpdateDeletePostInitial()) {
    on<AddUpdateDeletePostEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
