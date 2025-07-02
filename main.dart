
enum PersianMonth {
  farvardin,
  ordibehesht,
  khordad,
  tir,
  mordad,
  shahrivar,
  mehr,
  aban,
  azar,
  dey,
  bahman,
  esfand,
}

extension PersianMonthExtension on PersianMonth {

  String get name {
    switch (this) {
      case PersianMonth.farvardin:
        return 'فروردین';
      case PersianMonth.ordibehesht:
        return 'اردیبهشت';
      case PersianMonth.khordad:
        return 'خرداد';
      case PersianMonth.tir:
        return 'تیر';
      case PersianMonth.mordad:
        return 'مرداد';
      case PersianMonth.shahrivar:
        return 'شهریور';
      case PersianMonth.mehr:
        return 'مهر';
      case PersianMonth.aban:
        return 'آبان';
      case PersianMonth.azar:
        return 'آذر';
      case PersianMonth.dey:
        return 'دی';
      case PersianMonth.bahman:
        return 'بهمن';
      case PersianMonth.esfand:
        return 'اسفند';
    }
  }


  int get dayCount {
    switch (this) {
      case PersianMonth.farvardin:
      case PersianMonth.ordibehesht:
      case PersianMonth.khordad:
      case PersianMonth.tir:
      case PersianMonth.mordad:
      case PersianMonth.shahrivar:
        return 31;
      case PersianMonth.mehr:
      case PersianMonth.aban:
      case PersianMonth.azar:
      case PersianMonth.dey:
      case PersianMonth.bahman:
        return 30;
      case PersianMonth.esfand:
        return 29; 
    }
  }

  /// تعداد روز با در نظر گرفتن کبیسه بودن سال (برای اسفند)
  int dayCountWithLeap(bool isLeapYear) {
    if (this == PersianMonth.esfand) {
      return isLeapYear ? 30 : 29;
    }
    return dayCount;
  }
}

// مثال استفاده
void main() {
  PersianMonth month = PersianMonth.tir;

  print('نام ماه: ${month.name}');
  print('تعداد روزهای ماه: ${month.dayCount}');
}

