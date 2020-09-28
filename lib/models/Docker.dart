import 'package:flutter/foundation.dart';

class Docker {
  @required
  String name;
  @required
  String image;
  String createdAt;
  String reason;
  @required
  String status;

  Docker({this.reason, this.status, this.name, this.image, this.createdAt});
}
