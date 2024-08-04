

#[derive(Drop, Copy)]
struct Rectangle {
    l: u32,
    w: u32
}
#[derive(Drop, Copy)]
struct Square{
    w: u32,
    h: u32
}
#[derive(Drop, Copy)]
struct Circle {
    r: u32
    
}
#[derive(Drop, Copy)]
struct Triangle {
    b: u32,
    h: u32
}

trait Geometry <T> {
    fn print(self: @T);
    fn calculate_perimeter(self: @T);
    fn calculate_area(self: @T);
}

impl RectangleGeometryImpl of Geometry<Rectangle>{
    fn print(self: @Rectangle){
      println!("This rectangle is {}x{}", self.l, self.w);
    }

    fn calculate_perimeter(self: @Rectangle){
     let perimeter = 2_u32 * (*self.l + *self.w);
     println!("This rectangle has a perimeter of: {}", perimeter);
    }

    fn calculate_area(self: @Rectangle){
        let area = *self.l * *self.w;
        println!("This rectangle has an area of : {}", area);

    }
}

impl SquareGeometryImpl of Geometry<Square>{
    fn print(self: @Square){
      println!("This square is {}x{}", self.w, self.h);
    }

    fn calculate_perimeter(self: @Square){
     let perimeter = 2_u32 * (*self.w + *self.h);
     println!("This square has a perimeter of: {}", perimeter);
    }

    fn calculate_area(self: @Square){
        let area = *self.w * *self.h;
        println!("This square has an area of : {}", area);

    }
}


fn main() {
    let rect = Rectangle {
        l:4,
        w:2
        
    };
    
    rect.print();
    rect.calculate_perimeter();
    rect.calculate_area();

    let square = Square {
        w:20,
        h:20
      
      };
  
       square.print();
       square.calculate_perimeter();
       square.calculate_area();
  
}

  