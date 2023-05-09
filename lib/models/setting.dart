class SettingModel {
  late String title;
  late String icon;
  late String route;

  SettingModel({ required this.title, required this.icon, required this.route });
}


class Notify {
  late String status;
  late String title;
  late String description;
  late String id;

  Notify({ required this.status, required this.title, required this.description, required this.id });
}

class Helpy {
  late String title;

  Helpy({ required this.title });
}