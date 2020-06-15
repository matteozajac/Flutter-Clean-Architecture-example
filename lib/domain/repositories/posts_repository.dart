import 'package:fluttercleanarchitecture/domain/entities/post.dart';

abstract class PostsRepository {
  Future<List<Post>> get();
}
