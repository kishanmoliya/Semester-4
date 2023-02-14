import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: "https://630ed8a23792563418824a76.mockapi.io/")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/facultyAngular")
  Future<dynamic> getUsers();

  @GET("/facultyAngular/{id}")
  Future<dynamic> getByID(@Path('id') id);

  @DELETE("/facultyAngular/{id}")
  Future<dynamic> deleteFaculty(@Path('id') id);

  @POST("/facultyAngular")
  @FormUrlEncoded()
  Future<dynamic> addFaculty(
    @Field('FacultyName') name,
    @Field('FacultyDesignation') designation,
    @Field('FacultyExperience') experience,
  );
}
