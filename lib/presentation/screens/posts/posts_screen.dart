import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercleanarchitecture/presentation/screens/posts/components/post_list_tile.dart';
import 'package:fluttercleanarchitecture/presentation/screens/posts/posts_bloc.dart';
import 'package:get_it/get_it.dart';

class PostsScreen extends StatefulWidget {
  static const String route = '/';

  @override
  _PostsScreenState createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Posts')),
      body: BlocBuilder<PostsBloc, PostsBlocState>(
          bloc: GetIt.I<PostsBloc>()..add(InitEvent()),
          builder: (context, state) {
            if (state is LoadingState) {
              return Center(child: CircularProgressIndicator());
            } else if (state is DataState) {
              final posts = state.posts;
              return ListView.builder(
                  itemCount: posts.length,
                  itemBuilder: (context, index) {
                    return PostListTile(post: posts[index]);
                  });
            }
            return Container();
          }),
    );
  }
}
