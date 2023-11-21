part of 'add_update_delete_post_bloc.dart';

sealed class AddUpdateDeletePostState extends Equatable {
  const AddUpdateDeletePostState();
  
  @override
  List<Object> get props => [];
}

final class AddUpdateDeletePostInitial extends AddUpdateDeletePostState {}
