

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

// Geometric Operations
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

impl CircleGeometryImpl of Geometry<Circle>{
    fn print(self: @Circle){
      println!("This circle has a radius of {}", self.r);
    }

    fn calculate_perimeter(self: @Circle){
     let perimeter = 2_u32 *3_u32 * *self.r; // Assuming Pi = 3
     println!("This circle has a perimeter of: {}", perimeter);
    }

    fn calculate_area(self: @Circle){
        let area = 3_u32 * *self.r * *self.r;
        println!("This circle  has an area of : {}", area);

    }
}



impl TriangleGeometryImpl of Geometry<Triangle>{
    fn print(self: @Triangle){
      println!("This triangle has a base of {} and height of {}", self.b, self.h);
    }

    fn calculate_perimeter(self: @Triangle){
     let perimeter = 3_u32 * *self.b; // assuming all sides are equal
     println!("This tiangle has a perimeter of: {}", perimeter);
    }

    fn calculate_area(self: @Triangle){
        let area = *self.b * *self.h / 2_u32;
        println!("This triangle has an area of : {}", area);

    }
}

// Arithmetic operations trait
trait Arithmetic {
    fn add(self: u32, other: u32) -> u32;
    fn subtract(self: u32, other: u32) -> u32;
    fn multiply(self: u32, other: u32) -> u32;
    fn divide(self: u32, other: u32) -> u32;
}

impl ArithmeticImpl of Arithmetic {
    fn add(self: u32, other: u32) -> u32 {
        self + other
    }

    fn subtract(self: u32, other: u32) -> u32 {
        self - other
    }

    fn multiply(self: u32, other: u32) -> u32 {
        self * other
    }

    fn divide(self: u32, other: u32) -> u32 {
        if other != 0 {
            self / other
        } else {
            // Handle division by zero
            0
        }
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

       let circle = Circle {
        r:10,
      
      };
  
       circle.print();
       circle.calculate_perimeter();
       circle.calculate_area();



    let triangle  = Triangle {
        b:15,
        h:15
      
      };
  
       triangle.print();
       triangle.calculate_perimeter();
       triangle.calculate_area();


       let a: u32 = 10;
       let b: u32 = 5;
    
       println!("Addition: {}", a.add(b));
       println!("Subtraction: {}", a.subtract(b));
       println!("Multiplication: {}", a.multiply(b));
       println!("Division: {}", a.divide(b));
  
}

  