enum MonthFormat { digits3, full }

String monthConvert(
    {MonthFormat monthFormat = MonthFormat.full, int month = 1}) {
  List<String> monthList = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December",
  ];

  return (monthFormat == MonthFormat.digits3)
      ? monthList[month - 1].substring(0, 3)
      : monthList[month - 1];
}
