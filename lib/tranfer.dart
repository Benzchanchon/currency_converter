class MyConverter{
  static double B2Y(double value){
    return value*3.8589;
  }
  static double B2USD(double value){
    return value*0.027800;
  }
  static double B2EUR(double value){
    return value*0.027000 ;
  }
  static double B2LAK(double value){ //กีบลาว
    return value*471.22;
  }
  static double B2KR(double value){ //วอน
    return value*36.530;
  }
  static double B2GBP(double value){ //ปอนอังกฤษ
    return value*0.027000;
  }
}