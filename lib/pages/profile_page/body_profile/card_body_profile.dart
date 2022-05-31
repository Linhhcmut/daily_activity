import 'package:flutter/material.dart';

class CardWidgetProfile extends StatelessWidget {
  final String nameCard;
  final String title;
  final String content;

  CardWidgetProfile({this.content, this.nameCard, this.title});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4.0,
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 7, left: 7),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Icon(
                      Icons.location_on,
                      color: Color(0xffc2c2c2),
                    ),
                    SizedBox(width: 3),
                    Text(
                      nameCard,
                      style: TextStyle(
                        color: Color(0xffc2c2c2),
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(25, 13, 25, 10),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Icon(
                            Icons.home,
                            size: 22,
                            color: Color(0xff12175E),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              title,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Color(0xff12175E)),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          SizedBox(width: 32),
                          Expanded(
                            child: Text(
                              content,
                              style: TextStyle(
                                color: Colors.black38,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
