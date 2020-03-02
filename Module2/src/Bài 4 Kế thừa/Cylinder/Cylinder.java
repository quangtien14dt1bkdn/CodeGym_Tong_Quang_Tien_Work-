package baitap.Cylinder;

public class Cylinder extends Circle {
   Circle circle = new Circle(3,"red");
   private double height;

   public double getVol() {
      this.vol = circle.getArea() * this.height;
      return this.vol;
   }

   public void setVol(double vol) {
      this.vol = vol;
   }

   private double vol;

   public double getHeight() {
      return height;
   }

   public void setHeight(double height) {
      this.height = height;
   }
}
