import 'package:flutter/material.dart';
import 'package:space_xplore/feature/company_info/view/widgets/logo_link_circle.dart';

import '../../../../core/helpers/text_helper.dart';
import '../../data/model/company_info_model.dart';

class CompanyInfoLogos extends StatelessWidget {
  final Links links;

  const CompanyInfoLogos({
    super.key,
    required this.links,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        LogosLinkCircle(
          link: links.website!,
          logo: Constants.spaceXLogoAssetPath,
        ),
        LogosLinkCircle(
          link: links.twitter!,
          logo: Constants.twitterLogoAssetPath,
        ),
        LogosLinkCircle(
          link: links.flickr!,
          logo: Constants.flickrLogoAssetPath,
        ),
      ],
    );
  }
}
