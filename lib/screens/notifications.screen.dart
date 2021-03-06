import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
var MOCK_NOTIFICATIONS = <NotificationDTO>[
  new NotificationDTO(
      'John has approved your reservation request',
      'John',
      1,
      DateTime.now().toIso8601String().split('.')[0].replaceAll('T', ' '),
      false,
      image),
  new NotificationDTO(
      'Ivonne has declined your reservation request',
      'Ivonne',
      2,
      DateTime.now().toIso8601String().split('.')[0].replaceAll('T', ' '),
      false,
      image),
  new NotificationDTO(
      'Cheree sent you a reservation request',
      'Cheree',
      3,
      DateTime.now().toIso8601String().split('.')[0].replaceAll('T', ' '),
      true,
      image),
  new NotificationDTO(
      'Chris sent you a reservation request',
      'Chris',
      4,
      DateTime.now().toIso8601String().split('.')[0].replaceAll('T', ' '),
      true,
      image),
  new NotificationDTO(
      'Your reservation request has expired for a trip published by Tom',
      null,
      5,
      DateTime.now().toIso8601String().split('.')[0].replaceAll('T', ' '),
      false,
      image),
  new NotificationDTO(
      'Your reservation request has expired for a trip published by Tom',
      null,
      6,
      DateTime.now().toIso8601String().split('.')[0].replaceAll('T', ' '),
      false,
      image),
  new NotificationDTO(
      'Your reservation request has expired for a trip published by Tom',
      null,
      7,
      DateTime.now().toIso8601String().split('.')[0].replaceAll('T', ' '),
      false,
      image),
];
const image =
    "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";

class NotificationsScreenWidget extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return NotificationsScreenStateWidget();
  }
}

class NotificationsScreenStateWidget extends State<NotificationsScreenWidget>{
  List<NotificationDTO> notifications = MOCK_NOTIFICATIONS;
  @override
  Widget build(BuildContext context) {
      return Scaffold(
          body: ListView(
        children: notifications.map((e) => getNotificationCard(e)).toList(),
      ));
  }
  Widget getNotificationCard(NotificationDTO notification) {
    return Center(
        child: Container(
            padding: EdgeInsetsDirectional.fromSTEB(5, 10, 5, 10),
            child: Card(
              // margin: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    ListTile(
                      contentPadding:
                      EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                      leading: IconButton(
                          onPressed: () {
                            setState(() {
                              var updatedNotification = notifications.firstWhere((element) => element == notification);
                              updatedNotification.seen = !updatedNotification.seen;
                              notifications[notifications.indexOf(notification)] = updatedNotification;
                            });
                          },
                          icon: Icon(
                            notification.seen
                                ? Icons.notifications_none_rounded
                                : Icons.notifications_active_rounded,
                            color: notification.seen
                                ? Colors.blueGrey[900]
                                : Color.fromRGBO(225, 0, 117, 1),
                          )),
                      title: Text(notification.body),
                      subtitle: Text(notification.dateReceived),
                      // isThreeLine: true,
                      trailing: circleImage(notification),
                    )
                  ],
                ))));
  }
}

class NotificationDTO {
  NotificationDTO(this.body, this.fromName, this.fromId, this.dateReceived,
      this.seen, this.fromImage);
  String body;
  String fromName;
  int fromId;
  String dateReceived;
  bool seen;
  String fromImage;
}

circleImage(NotificationDTO notificationDTO) {
  var convertedImage;
  if (notificationDTO.fromImage != null && notificationDTO.fromImage != "") {
    convertedImage = Image.memory(base64Decode(notificationDTO.fromImage));
  }

  return Container(
      height: 50,
      width: 50,
      child: ClipOval(child: convertedImage),
      decoration:
          new BoxDecoration(color: Colors.white, shape: BoxShape.circle));
}
