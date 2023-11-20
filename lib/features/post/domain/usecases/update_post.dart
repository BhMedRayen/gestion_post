import 'package:dartz/dartz.dart';
import 'package:gestion_post/features/post/domain/entities/post.dart';
import '../repositories/post_repository.dart';
import '../../../../core/failures/failures.dart';

class UpdatePostUseCase {
  final PostsRepository repository;

  UpdatePostUseCase(this.repository);
  Future<Either<Failure, Unit>> call(Post post) async {
    return await repository.updatePost(post);
  }
}
