import 'package:flutter/material.dart';
import 'package:fluttercleanarchitecture/domain/entities/post.dart';
import 'package:fluttercleanarchitecture/domain/repositories/posts_repository.dart';
import 'package:fluttercleanarchitecture/domain/usecases/usecase.dart';

class GetPosts extends UseCase<List<Post>, NoParams> {
  final PostsRepository postsRepository;

  GetPosts({@required this.postsRepository});

  @override
  Future<List<Post>> call(NoParams params) async {
    return postsRepository.get();
  }
}
