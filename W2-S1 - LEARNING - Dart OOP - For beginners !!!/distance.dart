void main(List<String> args) {
  Distance d1 = Distance.meter(100);
  Distance d2 = Distance.kms(3.4);

  print((d1 + d2).kms);
}
class Distance {
   late final double num;
   late final double d2;
   late final double _meter;

   double get kms => this._meter / 1000;

   Distance(this._meter);

   Distance.meter(double meter){
    _meter = meter;
   }
   Distance.cms(double cms){
    _meter = cms / 100;
   }
   Distance.kms(double kms){
    _meter = kms * 1000;

   }
   Distance operator +(Distance other){
    return Distance(this._meter + other._meter);
   }
   @override
  String toString() {
    // TODO: implement toString
    return 'calculated distance is: ${num}';
  }
}
