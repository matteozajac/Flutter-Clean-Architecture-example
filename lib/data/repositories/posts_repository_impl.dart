import 'package:flutter/foundation.dart';
import 'package:fluttercleanarchitecture/data/network/posts_network_data_source.dart';
import 'package:fluttercleanarchitecture/domain/entities/post.dart';
import 'package:fluttercleanarchitecture/domain/repositories/posts_repository.dart';

class PostsRepositoryImpl implements PostsRepository {
  final PostsNetworkDataSource postsNetworkDataSource;

  PostsRepositoryImpl({@required this.postsNetworkDataSource});

  @override
  Future<List<Post>> get() async {
    return postsNetworkDataSource.getPosts();
  }
}
