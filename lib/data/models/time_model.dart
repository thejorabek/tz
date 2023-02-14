class TimeModel {
  String? abbreviation;
  String? clientIp;
  String? datetime;
  int? dayOfWeek;
  int? dayOfYear;
  bool? dst;
  Null? dstFrom;
  int? dstOffset;
  Null? dstUntil;
  int? rawOffset;
  String? timezone;
  int? unixtime;
  String? utcDatetime;
  String? utcOffset;
  int? weekNumber;

  var week;

  TimeModel(
      {this.abbreviation,
      this.clientIp,
      this.datetime,
      this.dayOfWeek,
      this.dayOfYear,
      this.dst,
      this.dstFrom,
      this.dstOffset,
      this.dstUntil,
      this.rawOffset,
      this.timezone,
      this.unixtime,
      this.utcDatetime,
      this.utcOffset,
      this.weekNumber});

  TimeModel.fromJson(Map<String, dynamic> json) {
    abbreviation = json['abbreviation'] ?? '';
    clientIp = json['client_ip'] ?? '';
    datetime = json['datetime'] ?? '';
    dayOfWeek = json['day_of_week'] ?? 0;
    dayOfYear = json['day_of_year'] ?? 0;
    dst = json['dst'] ?? false;
    dstFrom = json['dst_from'];
    dstOffset = json['dst_offset'] ?? 0;
    dstUntil = json['dst_until'];
    rawOffset = json['raw_offset'] ?? 0;
    timezone = json['timezone'] ?? '';
    unixtime = json['unixtime'] ?? 0;
    utcDatetime = json['utc_datetime'] ?? '';
    utcOffset = json['utc_offset'] ?? '';
    weekNumber = json['week_number'] ?? 0;
  }
}
