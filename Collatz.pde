class Collatz{
   //Collatz(float w){
   //   translate(w, height);
   //}
   void weedGen(float w){
    for (int i =1; i<20; i++) {
    IntList list = new IntList();

    int num=i;
    while (num!=1) {
      num=CollatzCon(num);
      list.append(num);
     // print(num+"\n");
    }

    list.append(1);
    list.reverse();

    int len=10;
    float angle=PI/5;
    resetMatrix();
    translate(w,height);

    for (int j=0; j<list.size(); j++) {
      int values =list.get(j);
      if (values%2==0) {
        rotate(random(angle));
      } else {
        rotate(-random(angle));
      }
      strokeWeight(3);
      stroke(0, 190, 71);
      line(0, 0, 0, (-len));
      //stroke(255);
      //noFill();
      //rect(-50, 100, 40, 10, 10);
      translate(0, -len);
    }
  }
  }
  int CollatzCon(int n){
    if (n%2==0) {
      return n/2;
    } else {
      return (3*n + 1)/2;
    }
  }
}
