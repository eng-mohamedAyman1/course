class  GeometricObject{
  String color;
  bool filled;
  GeometricObject ({this.color="white",this.filled=false});
  String toString(){
    return " color = ${this.color}, filled = ${this.filled}";
  }

}