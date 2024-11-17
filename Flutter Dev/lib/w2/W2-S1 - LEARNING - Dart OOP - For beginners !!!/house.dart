void main(List<String> args) {
  
  
  House house = House(1, Color.red);
  Door door = Door(1);
  Chimney chimney = Chimney(1);
  RoofType roof = RoofType.Gable;
   List<Tree> trees = [];
 
  Window window = Window(1);
  Color color = Color.red;



  print('house: ${house}');
  print('door: ${door}');
  print('window: ${window}');
  print('${color}');
  print('${roof}');
  print('tree: ${trees}');
  print('Chimney: ${chimney}');


  

}
class House {

  int house = 0;
  Color color;
   List<Tree> trees = [];
  House(this.house,this.color);
  void addTree(Tree newTree)
  {
  this.trees.add(newTree);
  }



  
  @override
  String toString() {
    // TODO: implement toString
    return '${house}';
  }
}

class Chimney{
 int chimneyNum;
 Chimney(this.chimneyNum);

   @override
  String toString() {
    // TODO: implement toString
    return '${chimneyNum}';
  }

}

class Window {
 int? windowNum;
 Window(this.windowNum);

   @override
  String toString() {
    // TODO: implement toString
    return '${windowNum}';
  }

}
enum Color{
  red,
  blue,
  green
}
class Door {
  int door = 0;
  Door(this.door);

    @override
  String toString() {
    return '${door}';
  }

}

enum RoofType{
   Gable, 
   Hip,
   Shed,
   Mshape
}

class Tree{

  String type; 
  double height;

  Tree(this.type, this.height);



    @override
  String toString() {
    // TODO: implement toString
    return 'Tree type:${type} - height: ${height}';
  }
}

