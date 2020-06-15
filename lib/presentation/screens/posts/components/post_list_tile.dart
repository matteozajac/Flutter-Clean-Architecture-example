import 'package:flutter/material.dart';
import 'package:fluttercleanarchitecture/domain/entities/post.dart';

class PostListTile extends StatelessWidget {
  final Post post;

  const PostListTile({@required this.post}) : super();

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(post.title, maxLines: 1),
      subtitle: Text(post.body, maxLines: 1),
      trailing: CircleAvatar(
        child: Text(post.id.toString()),
        backgroundColor: Colors.blue[100],
      ),
    );
  }
}
