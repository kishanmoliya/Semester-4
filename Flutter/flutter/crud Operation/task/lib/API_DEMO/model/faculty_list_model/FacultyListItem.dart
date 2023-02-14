import 'dart:convert';

class FacultyListItem {
  FacultyListItem({
      String? facultyID, 
      String? facultyName, 
      String? facultyDesignation, 
      String? facultyEducationQualification, 
      String? facultyExperience, 
      String? facultyWorkingSince, 
      String? facultyImage,}){
    _facultyID = facultyID;
    _facultyName = facultyName;
    _facultyDesignation = facultyDesignation;
    _facultyEducationQualification = facultyEducationQualification;
    _facultyExperience = facultyExperience;
    _facultyWorkingSince = facultyWorkingSince;
    _facultyImage = facultyImage;
}

  FacultyListItem.fromJson(dynamic json) {
    _facultyID = json['FacultyID'];
    _facultyName = json['FacultyName'];
    _facultyDesignation = json['FacultyDesignation'];
    _facultyEducationQualification = json['FacultyEducationQualification'];
    _facultyExperience = json['FacultyExperience'];
    _facultyWorkingSince = json['FacultyWorkingSince'];
    _facultyImage = json['FacultyImage'];
  }
  String? _facultyID;
  String? _facultyName;
  String? _facultyDesignation;
  String? _facultyEducationQualification;
  String? _facultyExperience;
  String? _facultyWorkingSince;
  String? _facultyImage;
FacultyListItem copyWith({  String? facultyID,
  String? facultyName,
  String? facultyDesignation,
  String? facultyEducationQualification,
  String? facultyExperience,
  String? facultyWorkingSince,
  String? facultyImage,
}) => FacultyListItem(  facultyID: facultyID ?? _facultyID,
  facultyName: facultyName ?? _facultyName,
  facultyDesignation: facultyDesignation ?? _facultyDesignation,
  facultyEducationQualification: facultyEducationQualification ?? _facultyEducationQualification,
  facultyExperience: facultyExperience ?? _facultyExperience,
  facultyWorkingSince: facultyWorkingSince ?? _facultyWorkingSince,
  facultyImage: facultyImage ?? _facultyImage,
);
  String? get facultyID => _facultyID;
  String? get facultyName => _facultyName;
  String? get facultyDesignation => _facultyDesignation;
  String? get facultyEducationQualification => _facultyEducationQualification;
  String? get facultyExperience => _facultyExperience;
  String? get facultyWorkingSince => _facultyWorkingSince;
  String? get facultyImage => _facultyImage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['FacultyID'] = _facultyID;
    map['FacultyName'] = _facultyName;
    map['FacultyDesignation'] = _facultyDesignation;
    map['FacultyEducationQualification'] = _facultyEducationQualification;
    map['FacultyExperience'] = _facultyExperience;
    map['FacultyWorkingSince'] = _facultyWorkingSince;
    map['FacultyImage'] = _facultyImage;
    return map;
  }

}