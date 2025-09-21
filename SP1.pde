// Flag variablerne
PImage russia, saudi, egypt, uruguay;
PImage portugal, spain, morocco, iran;
PImage france, australia, peru, denmark;
PImage argentina, iceland, croatia, nigeria;

// Størrelser og dannelse af variabler
int boksBredde = 340;
int boksHøjde = 50;
int stregBredde = 12;

void setup() {
  size(1000, 650);
  background(0, 51, 102);
  textSize(28);
  textAlign(LEFT, CENTER);

  // indlæs flag
  russia = loadImage("Russia.png");
  saudi = loadImage("saudi.png");
  egypt = loadImage("Egypt.png");
  uruguay = loadImage("Uruguay.png");
  portugal = loadImage("Portugal.png");
  spain = loadImage("Spain.png");
  morocco = loadImage("Morocco.png");
  iran = loadImage("Iran.png");
  france = loadImage("France.png");
  australia = loadImage("Australia.png");
  peru = loadImage("Peru.png");
  denmark = loadImage("Denmark.png");
  argentina = loadImage("Argentina.png");
  iceland = loadImage("Iceland.png");
  croatia = loadImage("Croatia.png");
  nigeria = loadImage("Nigeria.png");

  // midterlinje og stoppelse af stroke så teksten ikke driller med de andre
  strokeWeight(4);
  line(width/2, 0, width/2, height);
  noStroke();

  // gruppe overskrifter
  fill(0, 200, 255);
  text("GROUP A", 200, 60);
  text("GROUP C", 725, 60);

  fill(255, 255, 0);
  text("GROUP B", 200, 360);
  text("GROUP D", 725, 360);

  // Group A
  tegnLandMedFlag("RUSSIA", russia, 60, 120, color(0,150,255));
  tegnLandMedFlag("SAUDI ARABIA", saudi, 60, 180, color(0,150,255));
  tegnLandMedFlag("EGYPT", egypt, 60, 240, color(0,150,255));
  tegnLandMedFlag("URUGUAY", uruguay, 60, 300, color(0,150,255));

  // Group B
  tegnLandMedFlag("PORTUGAL", portugal, 60, 420, color(255,220,0));
  tegnLandMedFlag("SPAIN", spain, 60, 480, color(255,220,0));
  tegnLandMedFlag("MOROCCO", morocco, 60, 540, color(255,220,0));
  tegnLandMedFlag("IRAN", iran, 60, 600, color(255,220,0));

  // Group C
  tegnLandMedFlag("FRANCE", france, 600, 120, color(0,150,255));
  tegnLandMedFlag("AUSTRALIA", australia, 600, 180, color(0,150,255));
  tegnLandMedFlag("PERU", peru, 600, 240, color(0,150,255));
  tegnLandMedFlag("DENMARK", denmark, 600, 300, color(0,150,255));

  // Group D
  tegnLandMedFlag("ARGENTINA", argentina, 600, 420, color(255,220,0));
  tegnLandMedFlag("ICELAND", iceland, 600, 480, color(255,220,0));
  tegnLandMedFlag("CROATIA", croatia, 600, 540, color(255,220,0));
  tegnLandMedFlag("NIGERIA", nigeria, 600, 600, color(255,220,0));
}

// funktionen til at tegne boks
void tegnLandMedFlag(String navn, PImage flag, float x, float y, int farveBjælke) {
  
  // hvid boks
  fill(255);
  rect(x + 50, y - boksHøjde/2, boksBredde, boksHøjde);

  // farvet lille bjælke i højre side
  fill(farveBjælke);
  rect(x + 50 + boksBredde - stregBredde, y - boksHøjde/2, stregBredde, boksHøjde);

  // flag
  if (flag != null) {
    image(flag, x, y - 20, 40, 25);
  }

  // tekst
  fill(0);
  text(navn, x + 60, y);
}
