import 'package:flutter/material.dart';
import '../theming/text_style.dart';
import 'web_veiw.dart';

class LinkText extends StatelessWidget {
  final String linkUrl;
  final String linkName;

  const LinkText({
    super.key,
    required this.linkUrl,
    required this.linkName,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          PageRouteBuilder(
            transitionDuration: const Duration(milliseconds: 500),
            pageBuilder: (context, animation, secondaryAnimation) =>
                ScaleTransition(
              scale: Tween<double>(
                begin: 0.0, // Starting scale
                end: 1.0, // Ending scale
              ).animate(animation),
              child: WebViewWidgets(
                webViewUrl: linkUrl,
              ),
            ),
          ),
        );
      },
      child: Text(
        linkName,
        style: TextStyles.font13BlueMediumOrienta,
      ),
    );
  }
}
