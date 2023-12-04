import 'package:commission_station/app/data/model/json_model/article_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'article_service.g.dart';

@RestApi(baseUrl: "http://localhost:8080")
abstract class ArticelService {
  factory ArticelService(Dio dio, {String baseUrl}) = _ArticelService;

  @GET('/api/articles')
  Future<Article> getArticle();

  @POST('/api/articles')
  Future<void> postArticle(@Body() Article article);
}
