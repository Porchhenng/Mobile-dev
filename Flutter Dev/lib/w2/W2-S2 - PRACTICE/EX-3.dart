class MyDuration {

  late final int _milliseconds;

  int get milliseconds => _milliseconds;
  
   MyDuration({required int milliseconds}): _milliseconds = milliseconds;
   MyDuration.fromHours({required int hour}):
    _milliseconds = hour * 3600000;
   
   MyDuration.fromMinutes({required int minutes}):
    _milliseconds = minutes * 60000;
   

   MyDuration operator +(MyDuration other){
    return MyDuration(milliseconds: _milliseconds + other._milliseconds);
   }

    MyDuration operator -(MyDuration other){
    return MyDuration(milliseconds: other._milliseconds - milliseconds);
   }

   bool operator >(MyDuration other) => _milliseconds > other._milliseconds;
  // Display the duration in a readable format
  @override
  String toString() {
    int seconds = (_milliseconds / 1000).round();
    int minutes = (seconds / 60).floor();
    seconds = seconds % 60;
    int hours = (minutes / 60).floor();
    minutes = minutes % 60;
    return '$hours hours, $minutes minutes, $seconds seconds';
  }
}

void main() {
  MyDuration duration1 = MyDuration.fromHours(hour: 3); // 3 hours
  MyDuration duration2 = MyDuration.fromMinutes(minutes: 45); // 45 minutes
  print(duration1 + duration2); // 3 hours, 45 minutes, 0 seconds
  print(duration1>duration2); //true

  try {
    print(duration2 - duration1); // i put this to avoid error
  } catch (e) {
    print(e); 
  }
}
