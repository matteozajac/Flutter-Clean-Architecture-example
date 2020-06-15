import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttercleanarchitecture/data/network/posts_service.dart';
import 'package:fluttercleanarchitecture/domain/entities/post.dart';
import 'package:fluttercleanarchitecture/data/mappers/post_mapper.dart';

class PostsNetworkDataSource {
  final PostsService postsService;

  PostsNetworkDataSource({@required this.postsService});

  Future<List<Post>> getPosts() async {
    final response = await postsService.getPosts();
    final data = json.decode(response.body) as List;

    return data.map((e) => Post().fromJson(e)).toList();
  }
}
