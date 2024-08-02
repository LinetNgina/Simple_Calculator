

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
    r: u32,
    
}
#[derive(Drop, Copy)]
struct Triangle {
    b: u32,
    h: u32
}

trait Geometry <T> |{
    fn print(self: @T);
    fn calculate_perimeter(self: @T);
    fn calculate_area(self: @T);
}

impl RectangleGeometryImpl<Rectangle>{
    fn print(self: @T){
      println!("This rectangle is {}x{}", self.l, self.w);
    }

    fn calculate_perimeter(self: @T){
     let perimeter = 2 *(self.l + self.w);
     println!("The rectangle has a perimeter of: {}", perimeter);
    }

    fn calculate_area(self: @T){

    }
}


fn main() {
   
}

