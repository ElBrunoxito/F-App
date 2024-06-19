class DetalleHistorial {
  int id;
  String month;
  String status;
  int amount;
  DateTime date;

  DetalleHistorial({
    required this.id,
    required this.month,
    required this.status,
    required this.amount,
    required this.date,
  });

  factory DetalleHistorial.fromJson(Map<String, dynamic> json) => DetalleHistorial(
        id: json["id"],
        month: json["month"],
        status: json["status"],
        amount: json["amount"],
        date: DateTime.parse(json["date"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "month": month,
        "status": status,
        "amount": amount,
        "date":
            "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
      };
}
