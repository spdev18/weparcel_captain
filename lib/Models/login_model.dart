class LoginModel {
  LoginModel({
    bool? success,
    String? message,
    Data? data,
  }) {
    _success = success;
    _message = message;
    _data = data;
  }

  LoginModel.fromJson(dynamic json) {
    _success = json['success'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  bool? _success;
  String? _message;
  Data? _data;

  bool? get success => _success;
  String? get message => _message;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }
}

class Data {
  Data({
    String? token,
    User? user,
  }) {
    _token = token;
    _user = user;
  }

  Data.fromJson(dynamic json) {
    _token = json['token'];
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
  }

  String? _token;
  User? _user;

  String? get token => _token;
  User? get user => _user;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['token'] = _token;
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    return map;
  }
}

class User {
  User({
    int? id,
    String? name,
    String? email,
    String? phone,
    String? userType,
    Deliveryman? deliveryman,
    Hub? hub,
    String? address,
    String? salary,
    String? status,
    String? statusName,
    String? image,
    String? createdAt,
    String? updatedAt,
  }) {
    _id = id;
    _name = name;
    _email = email;
    _phone = phone;
    _userType = userType;
    _deliveryman = deliveryman;
    _hub = hub;
    _address = address;
    _salary = salary;
    _status = status;
    _statusName = statusName;
    _image = image;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
  }

  User.fromJson(dynamic json) {
    _id = json['id'] is String ? int.tryParse(json['id']) : json['id'];
    _name = json['name'];
    _email = json['email'];
    _phone = json['phone'];
    _userType = json['user_type'];
    _deliveryman = json['deliveryman'] != null ? Deliveryman.fromJson(json['deliveryman']) : null;
    _hub = json['hub'] != null ? Hub.fromJson(json['hub']) : null;
    _address = json['address'];
    _salary = json['salary'];
    _status = json['status'];
    _statusName = json['statusName'];
    _image = json['image'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }

  int? _id;
  String? _name;
  String? _email;
  String? _phone;
  String? _userType;
  Deliveryman? _deliveryman;
  Hub? _hub;
  String? _address;
  String? _salary;
  String? _status;
  String? _statusName;
  String? _image;
  String? _createdAt;
  String? _updatedAt;

  int? get id => _id;
  String? get name => _name;
  String? get email => _email;
  String? get phone => _phone;
  String? get userType => _userType;
  Deliveryman? get deliveryman => _deliveryman;
  Hub? get hub => _hub;
  String? get address => _address;
  String? get salary => _salary;
  String? get status => _status;
  String? get statusName => _statusName;
  String? get image => _image;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['email'] = _email;
    map['phone'] = _phone;
    map['user_type'] = _userType;
    if (_deliveryman != null) {
      map['deliveryman'] = _deliveryman?.toJson();
    }
    if (_hub != null) {
      map['hub'] = _hub?.toJson();
    }
    map['address'] = _address;
    map['salary'] = _salary;
    map['status'] = _status;
    map['statusName'] = _statusName;
    map['image'] = _image;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }
}

class Hub {
  Hub({
    int? id,
    String? name,
    String? phone,
    String? address,
    String? currentBalance,
    int? status,
    String? createdAt,
    String? updatedAt,
  }) {
    _id = id;
    _name = name;
    _phone = phone;
    _address = address;
    _currentBalance = currentBalance;
    _status = status;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
  }

  Hub.fromJson(dynamic json) {
    _id = json['id'] is String ? int.tryParse(json['id']) : json['id'];
    _name = json['name'];
    _phone = json['phone'];
    _address = json['address'];
    _currentBalance = json['current_balance'];
    _status = json['status'] is String ? int.tryParse(json['status']) : json['status'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }

  int? _id;
  String? _name;
  String? _phone;
  String? _address;
  String? _currentBalance;
  int? _status;
  String? _createdAt;
  String? _updatedAt;

  int? get id => _id;
  String? get name => _name;
  String? get phone => _phone;
  String? get address => _address;
  String? get currentBalance => _currentBalance;
  int? get status => _status;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['phone'] = _phone;
    map['address'] = _address;
    map['current_balance'] = _currentBalance;
    map['status'] = _status;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }
}

class Deliveryman {
  Deliveryman({
    int? id,
    int? userId,
    int? status,
    String? deliveryCharge,
    String? pickupCharge,
    String? returnCharge,
    String? currentBalance,
    String? openingBalance,
    int? drivingLicenseImageId,
    String? createdAt,
    String? updatedAt,
  }) {
    _id = id;
    _userId = userId;
    _status = status;
    _deliveryCharge = deliveryCharge;
    _pickupCharge = pickupCharge;
    _returnCharge = returnCharge;
    _currentBalance = currentBalance;
    _openingBalance = openingBalance;
    _drivingLicenseImageId = drivingLicenseImageId;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
  }

  Deliveryman.fromJson(dynamic json) {
    _id = json['id'] is String ? int.tryParse(json['id']) : json['id'];
    _userId = json['user_id'] is String ? int.tryParse(json['user_id']) : json['user_id'];
    _status = json['status'] is String ? int.tryParse(json['status']) : json['status'];
    _deliveryCharge = json['delivery_charge'];
    _pickupCharge = json['pickup_charge'];
    _returnCharge = json['return_charge'];
    _currentBalance = json['current_balance'];
    _openingBalance = json['opening_balance'];
    _drivingLicenseImageId = json['driving_license_image_id'] is String
        ? int.tryParse(json['driving_license_image_id'])
        : json['driving_license_image_id'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }

  int? _id;
  int? _userId;
  int? _status;
  String? _deliveryCharge;
  String? _pickupCharge;
  String? _returnCharge;
  String? _currentBalance;
  String? _openingBalance;
  int? _drivingLicenseImageId;
  String? _createdAt;
  String? _updatedAt;

  int? get id => _id;
  int? get userId => _userId;
  int? get status => _status;
  String? get deliveryCharge => _deliveryCharge;
  String? get pickupCharge => _pickupCharge;
  String? get returnCharge => _returnCharge;
  String? get currentBalance => _currentBalance;
  String? get openingBalance => _openingBalance;
  int? get drivingLicenseImageId => _drivingLicenseImageId;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['user_id'] = _userId;
    map['status'] = _status;
    map['delivery_charge'] = _deliveryCharge;
    map['pickup_charge'] = _pickupCharge;
    map['return_charge'] = _returnCharge;
    map['current_balance'] = _currentBalance;
    map['opening_balance'] = _openingBalance;
    map['driving_license_image_id'] = _drivingLicenseImageId;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }
}