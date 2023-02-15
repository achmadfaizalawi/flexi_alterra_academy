class Matematika{
  int? _x;
  int? _y;

  set setX(value) => _x = value;
  set setY(value) => _y = value;

  int get x => _x ?? 0;
  int get y => _y ?? 0; 

  Matematika(){
    hasil();
  }

  int hasil(){
    return 0;
  }
}