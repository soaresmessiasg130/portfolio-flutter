import 'package:flutter/material.dart';
import 'nav_button.dart';
import 'nav_header.dart';
import 'profile_info.dart';
import 'responsive_widget.dart';
import 'social_info.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Scaffold(
        backgroundColor: Colors.black,
        drawer: ResponsiveWidget.isSmallScreen(context)
            ? Drawer(
                child: ListView(
                  padding: const EdgeInsets.all(16),
                  children: <Widget>[
                    NavButton(
                      text: "about",
                      onPressed: () {},
                    ),
                    NavButton(
                      text: "work",
                      onPressed: () {},
                    ),
                    NavButton(
                      text: "contact",
                      onPressed: () {},
                    )
                  ],
                ),
              )
            : null,
        body: SingleChildScrollView(
          child: AnimatedPadding(
            duration: Duration(
              seconds: 1,
            ),
            padding: EdgeInsets.all(
              MediaQuery.of(context).size.height * 0.1,
            ),
            child: ResponsiveWidget(
              largeScreen: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  NavHeader(),
                  ProfileInfo(),
                  SocialInfo(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
