import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialIconButtons extends StatefulWidget {
  const SocialIconButtons({
    Key key,
  }) : super(key: key);

  @override
  _SocialIconButtonsState createState() => _SocialIconButtonsState();
}

class _SocialIconButtonsState extends State<SocialIconButtons> {
  // ignore: unused_field
  Future<void> _launched;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            socialIconButton(
              icon: FontAwesomeIcons.facebook,
              url: 'https://www.facebook.com/devfalah',
            ),
            socialIconButton(
              icon: FontAwesomeIcons.instagram,
              url: 'https://www.instagram.com/devfalah',
            ),
            socialIconButton(
                icon: FontAwesomeIcons.twitter,
                url: 'https://twitter.com/devfalah'),
            socialIconButton(
                icon: FontAwesomeIcons.telegram,
                url: 'https://twitter.com/devfalah'),
            socialIconButton(
                icon: FontAwesomeIcons.whatsapp,
                url: 'https://twitter.com/devfalah'),
            socialIconButton(
                icon: FontAwesomeIcons.globe,
                url: 'https://twitter.com/devfalah'),
          ],
        ),
      ),
    );
  }

  IconButton socialIconButton({icon, url}) {
    return IconButton(
        icon: Icon(icon),
        onPressed: () {
          setState(() {
            _launched = _launchInBrowser(
              url: url,
            );
          });
        });
  }

  Future<void> _launchInBrowser({String url}) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }
}
