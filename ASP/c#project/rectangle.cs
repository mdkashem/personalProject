using System;

namespace RectanglApp{
class Rectangle {
// member veriable 
double length;
double width;

public void AcceptDetails(){

length = 4.5;
width =3.5;


}// end acceptdetails
public double GetArea(){

return length*width;
}// end getA
public void Display() {
         Console.WriteLine("Length: {0}", length);
         Console.WriteLine("Width: {0}", width);
         Console.WriteLine("Area: {0}", GetArea());
      }

} // class end
class ExecuteRectangle {
      static void Main(string[] args) {
         Rectangle r = new Rectangle();
         r.AcceptDetails();
         r.Display();
         Console.ReadLine(); 
      }
   }



} //namespace end 