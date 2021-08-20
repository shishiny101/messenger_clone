import 'package:flutter/material.dart';

Widget defaultButton({
  required final Function()? onPressed,
  bool isUpperCase = true,
  double width = double.infinity,
  Color background = Colors.blue,
  required String text,
}) =>
    Container(
      width: width,
      color: background,
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );

Widget buildChatItem() => Row(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage(
                  'https://scontent.fcai19-5.fna.fbcdn.net/v/t1.6435-9/178827428_2203831806418210_7098922380186026417_n.jpg?_nc_cat=102&ccb=1-3&_nc_sid=174925&_nc_eui2=AeHrICUYIXfWiS4DcYAluU7isFRmSVRBm92wVGZJVEGb3Zm_ggSsWEsWm_etiWYNa1kclPKrdYP5Yhji7Xb86rNY&_nc_ohc=Qd01qvMxWYAAX_pH6_K&_nc_ht=scontent.fcai19-5.fna&oh=d2b9de6596ecafe301502fa5a21d87ac&oe=6132CBA1'),
            ),
            CircleAvatar(
              radius: 8.0,
              backgroundColor: Colors.white,
            ),
            CircleAvatar(
              radius: 7.0,
              backgroundColor: Colors.green,
            ),
          ],
        ),
        SizedBox(
          width: 20.0,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Abderahman Elshishiy',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Hello, It\'s me, I\'ve been wondering if after all this time you\'d like to meet',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 6.0,
                    ),
                    child: Container(
                      width: 7.0,
                      height: 7.0,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Text(
                    '08:24 PM',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );

Widget buildStoryItem() => Container(
      width: 60.0,
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                    'https://scontent.fcai19-5.fna.fbcdn.net/v/t1.6435-9/178827428_2203831806418210_7098922380186026417_n.jpg?_nc_cat=102&ccb=1-3&_nc_sid=174925&_nc_eui2=AeHrICUYIXfWiS4DcYAluU7isFRmSVRBm92wVGZJVEGb3Zm_ggSsWEsWm_etiWYNa1kclPKrdYP5Yhji7Xb86rNY&_nc_ohc=Qd01qvMxWYAAX_pH6_K&_nc_ht=scontent.fcai19-5.fna&oh=d2b9de6596ecafe301502fa5a21d87ac&oe=6132CBA1'),
              ),
              CircleAvatar(
                radius: 8.0,
                backgroundColor: Colors.white,
              ),
              CircleAvatar(
                radius: 7.0,
                backgroundColor: Colors.green,
              ),
            ],
          ),
          SizedBox(
            height: 4.0,
          ),
          Text(
            'Abderahman mahmoud',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
