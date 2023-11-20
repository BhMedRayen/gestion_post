import 'package:dartz/dartz.dart';
import 'package:gestion_post/features/post/domain/entities/post.dart';
import '../repositories/post_repository.dart';
import '../../../../core/failures/failures.dart';

class GetAllPostUseCase {
  final PostsRepository repository;
  GetAllPostUseCase(this.repository);
  Future<Either<Failure, List<Post>>> call() async {
    return await repository.getAllPosts();
  }
}
