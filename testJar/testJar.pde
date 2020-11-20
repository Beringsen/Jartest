Knapjar n = new Knapjar();

Knapjar.Button buttonTerning6 = n.new Button(10, 20, 150, 50, 5,"Slå med 6s terning!",this);
Knapjar.Button buttonTerning10 = n.new Button(340, 20, 150, 50, 5,"Slå med 10s terning!",this);

int sum;
int terningeKast;

void setup() {
  size(500, 300);


  buttonTerning6.addAction(new Knapjar.Action() {   
    public void execute() {
      terningeKast = int(random(1, 6));
      sum += terningeKast;
    }
  }
  );

  buttonTerning10.addAction(new Knapjar.Action() {   
    public void execute() {
      terningeKast = int(random(1, 10));
      sum += terningeKast;
    }
  }
  );
}

void draw() {
  clear();
  background(255, 204, 0);
  buttonTerning6.display();
  buttonTerning10.display();
  fill(102,0,51);
  textAlign(CENTER);
  text("Du har kastet " + terningeKast, width/2, 200);
  text("Samlet sum    " + sum, width/2, 250);
}

void mousePressed() {
  buttonTerning6.click();
  buttonTerning10.click();
}
