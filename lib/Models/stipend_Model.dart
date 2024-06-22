class Stipend {
  final String salary;
  final String? tooltip;
  final int salaryValue1;
  final int? salaryValue2;
  final String salaryType;
  final String currency;
  final String scale;
  final bool largeStipendText;

  Stipend({
    required this.salary,
    this.tooltip,
    required this.salaryValue1,
    this.salaryValue2,
    required this.salaryType,
    required this.currency,
    required this.scale,
    required this.largeStipendText,
  });

  factory Stipend.fromJson(Map<String, dynamic> json) {
    return Stipend(
      salary: json['salary'],
      tooltip: json['tooltip'],
      salaryValue1: json['salaryValue1'],
      salaryValue2: json['salaryValue2'],
      salaryType: json['salaryType'],
      currency: json['currency'],
      scale: json['scale'],
      largeStipendText: json['large_stipend_text'],
    );
  }
}
