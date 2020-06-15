import 'package:chopper/chopper.dart';

part 'posts_service.chopper.dart';

@ChopperApi(baseUrl: '/posts')
abstract class PostsService extends ChopperService {
  static PostsService create([ChopperClient client]) => _$PostsService(client);

  @Get()
  Future<Response> getPosts();
}
