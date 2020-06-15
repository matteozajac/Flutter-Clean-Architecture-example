import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercleanarchitecture/domain/entities/post.dart';
import 'package:fluttercleanarchitecture/domain/usecases/get_posts.dart';
import 'package:fluttercleanarchitecture/domain/usecases/usecase.dart';

class PostsBloc extends Bloc<PostsBlocEvent, PostsBlocState> {
  final GetPosts getPosts;

  PostsBloc({@required this.getPosts});

  @override
  PostsBlocState get initialState => LoadingState();

  @override
  Stream<PostsBlocState> mapEventToState(PostsBlocEvent event) async* {
    if (event is InitEvent) {
      final posts = await getPosts.call(NoParams());
      yield DataState(posts);
    }
  }
}

abstract class PostsBlocEvent {}

class InitEvent extends PostsBlocEvent {}

abstract class PostsBlocState {}

class LoadingState extends PostsBlocState {}

class DataState extends PostsBlocState {
  final List<Post> posts;

  DataState(this.posts);
}
