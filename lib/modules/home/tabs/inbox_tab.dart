import 'package:flutter/material.dart';
import 'package:LetTutor/modules/home/tabs/ConversationList.dart';
import 'package:LetTutor/shared/shared.dart';
import 'package:LetTutor/shared/widgets/msg/msg_box.dart';
import 'package:LetTutor/model/ChatUser.dart';
class InboxTab extends StatefulWidget {
  const InboxTab({Key? key}) : super(key: key);

  @override
  _InboxTabState createState() => _InboxTabState();
}

class _InboxTabState extends State<InboxTab> with TickerProviderStateMixin {
  List<ChatUsers> chatUsers = [];
  final FocusNode _focusNode = FocusNode();
  final _textController = TextEditingController();
  bool _isComposing = false;
  bool _isSelf = true;

  @override
  void initState() {
    super.initState();
    chatUsers = [
    ChatUsers(name: "Jane Russel", messageText: "Awesome Setup", imageURL: "https://icdn.dantri.com.vn/thumb_w/640/2019/06/09/hot-girl-nong-nghiepdocx-1560089042813.jpeg", time: "Now"),
    ChatUsers(name: "Glady's Murphy", messageText: "That's Great", imageURL: "https://icdn.dantri.com.vn/thumb_w/640/2019/06/09/hot-girl-nong-nghiepdocx-1560089042813.jpeg", time: "Yesterday"),
    ChatUsers(name: "Jorge Henry", messageText: "Hey where are you?", imageURL: "images/userImage3.jpeg", time: "31 Mar"),
    ChatUsers(name: "Philip Fox", messageText: "Busy! Call me in 20 mins", imageURL: "images/userImage4.jpeg", time: "28 Mar"),
    ChatUsers(name: "Debra Hawkins", messageText: "Thankyou, It's awesome", imageURL: "images/userImage5.jpeg", time: "23 Mar"),
    ChatUsers(name: "Jacob Pena", messageText: "will update you in evening", imageURL: "images/userImage6.jpeg", time: "17 Mar"),
    ChatUsers(name: "Andrey Jones", messageText: "Can you please share the file?", imageURL: "images/userImage7.jpeg", time: "24 Feb"),
    ChatUsers(name: "John Wick", messageText: "How are you?", imageURL: "images/userImage8.jpeg", time: "18 Feb"),
  ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          shadowColor: Colors.blue,
          title: Text('Inbox'),
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          child: _buildListInbox(),
        ));
  }


  Widget _buildListInbox() {
    return ListView.builder(
  itemCount: chatUsers.length,
  shrinkWrap: true,
  padding: EdgeInsets.only(top: 16),
  physics: NeverScrollableScrollPhysics(),
  itemBuilder: (context, index){
    return ConversationList(
      name: chatUsers[index].name,
      messageText: chatUsers[index].messageText,
      imageUrl: chatUsers[index].imageURL,
      time: chatUsers[index].time,
      isMessageRead: (index == 0 || index == 3)?true:false,
    );
  },
);
  }
}
