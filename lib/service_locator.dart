import 'package:chopper/chopper.dart';
import 'package:fluttercleanarchitecture/data/network/posts_network_data_source.dart';
import 'package:fluttercleanarchitecture/data/network/posts_service.dart';
import 'package:fluttercleanarchitecture/domain/repositories/posts_repository.dart';
import 'package:fluttercleanarchitecture/domain/usecases/get_posts.dart';
import 'package:fluttercleanarchitecture/presentation/screens/posts/posts_bloc.dart';
import 'package:get_it/get_it.dart';

import 'data/repositories/posts_repository_impl.dart';

Future<void> init() async {
  GetIt.I.registerFactory<PostsBloc>(() => PostsBloc(getPosts: GetIt.I()));

  GetIt.I.registerLazySingleton<PostsRepository>(
      () => PostsRepositoryImpl(postsNetworkDataSource: GetIt.I()));

  GetIt.I.registerLazySingleton<PostsNetworkDataSource>(
      () => PostsNetworkDataSource(postsService: GetIt.I()));

  GetIt.I.registerLazySingleton<PostsService>(
      () => PostsService.create(GetIt.I()));

  GetIt.I.registerLazySingleton<ChopperClient>(
      () => ChopperClient(baseUrl: 'https://jsonplaceholder.typicode.com'));

  GetIt.I.registerLazySingleton<GetPosts>(
      () => GetPosts(postsRepository: GetIt.I()));
}
