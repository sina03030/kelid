/// id : 103011120
/// name : "بندرانزلی"
/// stateId : 25
/// location : "49.4760015280797,37.4668646675042"
/// fullName : "بندرانزلی"
/// nameLat : "bandare-anzali"

class City {
  int? id;
  String? name;
  int? stateId;
  String? location;
  String? fullName;
  String? nameLat;

  City({
      this.id, 
      this.name, 
      this.stateId, 
      this.location, 
      this.fullName, 
      this.nameLat});

  City.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    stateId = json['stateId'];
    location = json['location'];
    fullName = json['fullName'];
    nameLat = json['nameLat'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['stateId'] = stateId;
    map['location'] = location;
    map['fullName'] = fullName;
    map['nameLat'] = nameLat;
    return map;
  }

}