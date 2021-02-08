import 'package:flutter/material.dart';
import 'package:recipes/utilities/tools_utilities.dart';

class ContactUsForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var nameTextEditingController = TextEditingController();

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          _customTextField(
            maxLength: 1,
            controller: nameTextEditingController,
            hintText: "Enter your name",
          ),
          _customTextField(
            maxLength: 1,
            controller: nameTextEditingController,
            hintText: "Enter your email",
          ),
          _customTextField(
            maxLength: 1,
            controller: nameTextEditingController,
            hintText: "Enter your number",
          ),
          _customTextField(
            maxLength: 2,
            controller: nameTextEditingController,
            hintText: "Enter your message",
          ),
          SizedBox(
            height: 10,
          ),
          SendButton(),
        ],
      ),
    );
  }

  Widget _customTextField({controller, maxLength, hintText}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: controller,
        maxLines: maxLength,
        cursorColor: ToolsUtilities.secondColor,
        decoration: InputDecoration(
          focusColor: ToolsUtilities.secondColor,
          hoverColor: ToolsUtilities.secondColor,
          hintText: hintText,
          hintStyle: TextStyle(
            color: ToolsUtilities.secondColor,
          ),
        ),
      ),
    );
  }
}

class SendButton extends StatelessWidget {
  const SendButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        color: ToolsUtilities.mainColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: FlatButton.icon(
        onPressed: () {},
        icon: Icon(
          Icons.email,
          color: ToolsUtilities.whiteColor,
          size: 25,
        ),
        label: Text(
          "Send Message",
          style: TextStyle(
            color: ToolsUtilities.whiteColor,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
