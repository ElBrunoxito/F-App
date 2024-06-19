class BusinessDetail {
  int id;
  String entity;
  String address;
  String informacion;
  String image;

  BusinessDetail({
    required this.id,
    required this.entity,
    required this.address,
    required this.informacion,
    required this.image
  });

  factory BusinessDetail.fromJson(Map<String, dynamic> json) => BusinessDetail(
        id: json["id"],
        entity: json["entity"],
        address: json["address"],
        informacion: json["informacion"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "entity": entity,
        "address": address,
        "informacion": informacion,
        "image":image
      };
}
