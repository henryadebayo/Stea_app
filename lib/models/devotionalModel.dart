class DevotionalModel {
  final String id;
  final String devotionalName;
  final String devotionalDescription;
  final String devotionalPath;

  DevotionalModel({
    this.id,
    this.devotionalName,
    this.devotionalDescription,
    this.devotionalPath,
});
 factory DevotionalModel.fromJson(Map<String, dynamic> json)=>
   DevotionalModel(
     id: json['id'],
     devotionalName: json["name"],
     devotionalDescription: json['description'],
     devotionalPath: json['pdfPath'],
   );

}