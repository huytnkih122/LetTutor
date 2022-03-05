import 'package:flutter/material.dart';
import 'package:LetTutor/shared/shared.dart';
import 'package:LetTutor/shared/widgets/msg/msg_box.dart';

class InboxScreen extends StatefulWidget {
  const InboxScreen({Key? key}) : super(key: key);

  @override
  _InboxScreenState createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen> with TickerProviderStateMixin {
  final List<MsgBox> _messages = [];
  final FocusNode _focusNode = FocusNode();
  final _textController = TextEditingController();
  bool _isComposing = false;
  bool _isSelf = true;

  @override
  void initState() {
    super.initState();
    _messages.insert(
        0,
        SendMsgBox(
            message: "Hello",
            animationController: _buildAnimationController()));
    _messages.insert(
        0,
        ReceiveMsgBox(
            message: "Hi, how are you",
            animationController: _buildAnimationController()));
    _messages.insert(
        0,
        SendMsgBox(
            message: "I am great how are you doing",
            animationController: _buildAnimationController()));
    _messages.insert(
        0,
        ReceiveMsgBox(
            message: "I am also fine",
            animationController: _buildAnimationController()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Inbox'),
      ),
      body: Container(
        color:  Colors.black,
      ),
    );
  }

  Widget _buildTextComposer() {
    return IconTheme(
      data: IconThemeData(color: Theme.of(context).colorScheme.secondary),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            Flexible(
              child: TextField(
                controller: _textController,
                onChanged: (text) {
                  setState(() {
                    _isComposing = text.isNotEmpty;
                  });
                },
                onSubmitted: _isComposing ? _handleSubmitted : null,
                decoration:
                    const InputDecoration.collapsed(hintText: 'Send a message'),
                focusNode: _focusNode,
              ),
            ),
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 4.0),
                child: IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: _isComposing
                      ? () => _handleSubmitted(_textController.text)
                      : null,
                ))
          ],
        ),
      ),
    );
  }

  void _handleSubmitted(String text) {
    _textController.clear();
    setState(() {
      _isComposing = false;
    });

    var message = _isSelf
        ? SendMsgBox(
            message: text,
            animationController: _buildAnimationController(),
          )
        : ReceiveMsgBox(
            message: text,
            animationController: _buildAnimationController(),
          );

    setState(() {
      _messages.insert(0, message);
    });

    _focusNode.requestFocus();
    message.animationController.forward();

    _isSelf = !_isSelf;
  }

  AnimationController _buildAnimationController() {
    return AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
  }
}

