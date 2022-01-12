//本程式架構僅供參考
class CalculatorBrain{
  static double us_dollar=0; //美金值
  static double jp_dollar=0; //日圓值
  static double us_rate=0; //美金匯率
  static double jp_rate=0; //日圓匯率
  static void calculateRate(double nt,double us_rate, double jp_rate){ //計算換算後的結果
    //TODO:計算台幣換算美金與日圓後的結果
    jp_dollar=nt*us_rate;
        us_dollar=nt*jp_rate;
  }

  //TODO:get美金值的字串
static String getUs(){
    return us_dollar.toString();
}
  //TODO:get日圓值的字串

  static String getjp(){
    return jp_dollar.toString();
  }
}
