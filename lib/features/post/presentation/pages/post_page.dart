import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestion_post/core/widgets/loading_widget.dart';
import 'package:gestion_post/features/post/presentation/bloc/posts/posts_bloc.dart';
import 'package:gestion_post/features/post/presentation/widgets/posts_widget/message_display_widget.dart';
import 'package:gestion_post/features/post/presentation/widgets/posts_widget/posts_list_widget.dart';

class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Posts')),
        body: Center(
          child: const Text('Bonjour de post'),
        ));
  }
}

//   AppBar _buildAppBar() => AppBar(title: const Text('Posts'));

//   Widget _buildBody() {
//     return Padding(
//       padding: const EdgeInsets.all(10),
//       child: BlocBuilder<PostsBloc, PostsState>(builder: (context, state) {
//         if (state is LoadingPostsState) {
//           return const LoadingWidget();
//         } else if (state is LoadedPostsState) {
//           return RefreshIndicator(
//               onRefresh: () => _onRefresh(context),
//               child: PostListWidget(posts: state.posts));
//         } else if (state is ErrorPostsState) {
//           return MessageDisplayWidget(message: state.message);
//         } else {
//           return const LoadingWidget();
//         }
//       }),
//     );
//   }

//   Future<void> _onRefresh(BuildContext context) async {
//     BlocProvider.of<PostsBloc>(context).add(RefreshPostsEvent());
//   }

//   Widget _buildFloatingBtn(BuildContext context) {
//     return FloatingActionButton(
//       onPressed: () {
//         Navigator.push(
//             context,
//             MaterialPageRoute(
//                 builder: (_) => const PostAddUpdatePage(
//                       isUpdatePost: false,
//                     )));
//       },
//       child: const Icon(Icons.add),
//     );
//   }
// }
