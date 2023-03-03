import 'package:book_recommend/Controller/booklist_controller.dart';
import 'package:book_recommend/data/api/api_client.dart';
import 'package:book_recommend/data/repository/booklist_repo.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

Future<void> init() async{
  //api client
Get.lazyPut(()=>ApiClient(appBaseUrl: "https://www.dbestech.com"));
//repos
Get.lazyPut(() => BookListRepo(apiClient: Get.find()));
//controller
Get.lazyPut(() => BooklistController(bookListRepo: Get.find()));

}