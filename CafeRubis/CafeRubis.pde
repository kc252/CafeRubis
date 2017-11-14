ArrayList <Product> products = new ArrayList <Product>();
ArrayList <Product> bill = new ArrayList <Product>();

Product p = new Product("", 0);

float buttonWidth = 210;
float buttonHeight = 50;
boolean clicked = false;

void setup() {
  size(800,600);
  loadData();
  
}

void draw(){

  displayProducts();
  displayBill();
  
}

void loadData(){
    
    Table table = loadTable("cafe.csv", "header");
    
    for(TableRow r:table.rows())
    {
     Product product = new Product(r); 
     products.add(product);
    }
  }
  
  
  void printProducts(){
   
    for(int i = 0 ; i < products.size() ; i ++)
  {
    Product p = products.get(i);
    println(p.toString());
  }
}
  
  void displayProducts(){
    
    float border = width*0.1f;
    float border2 = width*0.01f;
    
    textSize(30);
    stroke(255);
    fill(0);
    textAlign(TOP,CENTER);
    text("Cafe Rubis Till System", border*3, border*0.5);
    
   noStroke();
  
  if (clicked)
  {
    bill.add(p);
    fill(225);
  }
  else
  {
    fill(255);
  }
      for(int i = 1; i <= products.size(); i++){
    rect(width/border2, height/border2*i, buttonWidth, buttonHeight);
      }
      
      for(int j = 0; j < products.size(); j++){
        fill(0);
        textSize(16);
        Product p = products.get(j);
        text( p.toString(), width/border2*1.08, height/border2*j+1*100);
        
      }
  }
  
  void displayBill(){
    
     fill(255);
     rect(450, 80, buttonWidth+30, buttonHeight+450);
    
  }
  
void mousePressed()
{
  float tlx = width / 10 - buttonWidth/10;
  float tly = height / 7 - buttonHeight/7;
  if (mouseX > tlx && mouseX < tlx + buttonWidth
    && mouseY > tly && mouseY < tly + buttonHeight
    )
    {
      clicked = true;    
    }
}


void mouseReleased()
{
  clicked = false;
}
/*

Kevin Campbell
D17126544

*/