class devotional {
  final String id;
  final String devotionalName;
  final String devotionalDescription;
  final String devotionalPath;

  devotional({
    this.id,
    this.devotionalName,
    this.devotionalDescription,
    this.devotionalPath,
});
 factory devotional.fromJson(Map<String, dynamic> json)=>
   devotional(
     id: json['id'],
     devotionalName: json["name"],
     devotionalDescription: json['description'],
     devotionalPath: json['pdfPath'],
   );

}