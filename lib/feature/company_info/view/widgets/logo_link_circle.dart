import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

import '../../../../core/widgets/web_veiw.dart';

class LogosLinkCircle extends StatelessWidget {
  final String link;
  final String logo;

  const LogosLinkCircle({
    super.key,
    required this.link,
    required this.logo,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        PersistentNavBarNavigator.pushNewScreen(context,
            withNavBar: false,
            pageTransitionAnimation: PageTransitionAnimation.sizeUp,
            screen: WebViewWidgets(webViewUrl: link));
      },
      child: CircleAvatar(
        radius: 35,
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                logo,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
