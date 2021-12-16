import 'package:breview/util/Constants.dart';
import 'package:breview/widgets/BlogsWidget.dart';
import 'package:flutter/material.dart';

class BlogsProfileWidget extends StatelessWidget {
  final String profilePictureUrl, username, image, likes;

  const BlogsProfileWidget({
    Key key,
    @required this.profilePictureUrl,
    @required this.username,
    @required this.image,
    @required this.likes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 12),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.94,
        decoration: BoxDecoration(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 2, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Constants.BLUE_COLOR,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(1, 1, 1, 1),
                      child: Container(
                        width: 40,
                        height: 40,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                          this.profilePictureUrl,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                          child: Text(
                            this.username,
                            style: TextStyle(
                              fontFamily: 'Lexend Deca',
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        IconButton(
                          hoverColor: Colors.transparent,
                          icon: Icon(
                            Icons.keyboard_control,
                            color: Color(0xFF262D34),
                            size: 20,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            BlogsWidget(image: this.image, likes: this.likes),
          ],
        ),
      ),
    );
  }
}
