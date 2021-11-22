/// id : 230102222612
/// name : "هوانیروز"
/// cityId : 2301021576
/// location : "51.252528851066,35.7341195854307"
/// fullName : "هوانیروز ,  منطقه 22"
/// nameLat : "havaniruz"

class Area {
  int? id;
  String? name;
  int? cityId;
  String? location;
  String? fullName;
  String? nameLat;

  Area({
      this.id, 
      this.name, 
      this.cityId, 
      this.location, 
      this.fullName, 
      this.nameLat});

  Area.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    cityId = json['cityId'];
    location = json['location'];
    fullName = json['fullName'];
    nameLat = json['nameLat'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['cityId'] = cityId;
    map['location'] = location;
    map['fullName'] = fullName;
    map['nameLat'] = nameLat;
    return map;
  }

}