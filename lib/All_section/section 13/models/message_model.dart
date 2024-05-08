import 'package:new_start_review2/All_section/section%2013/components/constants.dart';

class Message{
  final String message;
  final String id ;

  Message(this.message,  this.id);
   factory Message.fromJson(jsonData){
     return jsonData[kMessage]["id"];
   }

}