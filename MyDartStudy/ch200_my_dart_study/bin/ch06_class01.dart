// 클래스(class)
class Tv {
  String name;
  bool isPower = false;
  int? channel;
  
  //Tv(String name, int channel) { this.name = name; this.channel = channel; }

  //Tv(String name, int channel): name = name, channel = channel;
  Tv(this.name, this.channel);
}