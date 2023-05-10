import 'package:flutter/material.dart';
import 'package:e_library/shared/colors.dart';
import 'package:e_library/models/setting.dart';
import 'package:flutter_svg/flutter_svg.dart';


class SettingList extends StatefulWidget {
  final SettingModel setting;
  const SettingList({Key? key, required this.setting}) : super(key: key);

  @override
  State<SettingList> createState() => _SettingListState();
}

class _SettingListState extends State<SettingList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      decoration: const BoxDecoration(
        color: Color(0xff1F3B3A),
        borderRadius: BorderRadius.all(
          Radius.circular(12.0),
        ),
      ),
      child: ListTile(
        horizontalTitleGap: 0,
        title: Text(
          widget.setting.title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
            fontFamily: 'Quicksand bold',
          ),
        ),
        leading: SvgPicture.asset(
          "assets/icon/${widget.setting.icon}",
          height: 24,
          width: 24,
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 24.0,
          color: Colors.white,
        ),
        onTap: () {
          Navigator.pushNamed(context, widget.setting.route);
        },
      ),
    );
  }
}



class NotificationList extends StatefulWidget {
  final Notify notify;
  const NotificationList({Key? key, required this.notify}) : super(key: key);

  @override
  State<NotificationList> createState() => _NotificationListState();
}

class _NotificationListState extends State<NotificationList> {

  Map<String, IconData> statusIconMap = {
    'success': Icons.check,
    'received': Icons.menu_book,
    'completed': Icons.done_all,
    'pending': Icons.priority_high,
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      decoration: BoxDecoration(
        color: Color(0xFF335F5C),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10,10, 10, 10),
            child: Container(
              height: 60,
              width: 60,
              decoration: const BoxDecoration(
                  color: btnColor,
                  shape: BoxShape.circle
              ),
              child: Icon(
                statusIconMap[widget.notify.status],
                size: 46, color:
              Colors.white,),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5),
            width: MediaQuery.of(context).size.width - 130,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.notify.title,
                  style: const TextStyle(
                      fontFamily: 'Quick Sand',
                      color: whiteColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none
                  ),
                ),
                Text(
                  widget.notify.description,
                  style: const TextStyle(
                      fontFamily: 'Quick Sand',
                      color: greyColor,
                      fontSize: 13,
                      fontWeight: FontWeight.normal,
                      decoration: TextDecoration.none
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      widget.notify.id,
                      style: const TextStyle(
                          fontFamily: 'Quick Sand',
                          color: greyColor,
                          fontSize: 13,
                          fontWeight: FontWeight.normal,
                          decoration: TextDecoration.none
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}


class HelpList extends StatelessWidget {
  final Helpy help;
  const HelpList({Key? key, required this.help}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Color(0xFF44777B), width: 1.5)),
      ),
      child: ListTile(
        leading: SizedBox(
          width: MediaQuery.of(context).size.width - 40,
          child: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Text(
              help.title,
              style: const TextStyle(
                fontWeight: FontWeight.normal,
                fontFamily: 'Quick Sand',
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
        ),
        trailing: SvgPicture.asset('assets/Arrow_Right2.svg'),
      ),
    );
  }
}
