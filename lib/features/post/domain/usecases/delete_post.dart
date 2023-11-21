import 'package:dartz/dartz.dart';
import '../repositories/post_repository.dart';
import '../../../../core/failures/failures.dart';

class DeletePostUseCase {
  final PostsRepository repository;
  DeletePostUseCase(this.repository);

  Future<Either<Failure, Unit>> call(int PostId) async {
    return await repository.deletePost(PostId);
  }
}
