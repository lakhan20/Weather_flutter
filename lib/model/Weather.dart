class Weather{
  final String location;
  final String current;

  Weather({

    required this.location,
    required this.current


});

  factory Weather.fromJson(Map<String,dynamic> json){
    return Weather(location: json['location']==null ? null:json['location'],
        current: json['current']==null ? null:json['current']
    );
  }



}