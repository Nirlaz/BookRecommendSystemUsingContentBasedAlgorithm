
import 'package:book_recommend/data/repository/booklist_repo.dart';
import 'package:get/get.dart';

class BooklistController extends GetxController{
  final BookListRepo bookListRepo;
  BooklistController({required this.bookListRepo});
  List<dynamic> _booklist=[];
  List<dynamic> get booklist => _booklist;
  Future<void> getBooklist()async {
    Response response = await bookListRepo.getbooklist();
    if(response.statusCode==200){
      _booklist=[];
     // _booklist.addAll();
      update();
    }else
      {


      }
  }
}