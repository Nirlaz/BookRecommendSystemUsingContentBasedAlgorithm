import 'package:book_recommend/data/api/api_client.dart';
import 'package:get/get.dart';

class BookListRepo extends GetxService{
  final ApiClient apiClient;
  BookListRepo({required this.apiClient});
  Future<Response> getbooklist() async{
  return await apiClient.getData("");
  }
}