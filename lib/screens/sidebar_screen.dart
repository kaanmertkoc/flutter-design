import 'package:code_design/components/sidebar_row.dart';
import 'package:code_design/constants.dart';
import 'package:code_design/model/sidebar.dart';
import 'package:flutter/material.dart';

class SidebarScreen extends StatelessWidget {
  const SidebarScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: kSidebarBackgroundColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(34.0),
          ),
        ),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width * 0.85,
        padding: EdgeInsets.symmetric(
          vertical: 35.0,
          horizontal: 20.0,
        ),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('asset/images/myPicture.jpg'),
                    radius: 21.0,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Kaan Mert Koç",
                        style: kHeadlineLabelStyle,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text("License ends on 21 July 2021",
                          style: kSearchPlaceholderStyle),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
              ),
              SidebarRow(
                item: sidebarItem[0],
              ),
              SizedBox(
                height: 32.0,
              ),
              SidebarRow(
                item: sidebarItem[1],
              ),
              SizedBox(
                height: 32.0,
              ),
              SidebarRow(
                item: sidebarItem[2],
              ),
              SizedBox(
                height: 32.0,
              ),
              SidebarRow(
                item: sidebarItem[3],
              ),
              SizedBox(
                height: 32.0,
              ),
              Spacer(),
              Row(
                children: [
                  Image.asset(
                    'asset/icons/icon-logout.png',
                    width: 17.0,
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  Text(
                    "Log out",
                    style: kSecondaryCalloutLabelStyle,
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
