/* please implement your assign1 code in this file. */
PImage bg1;
PImage bg2;
PImage ship;
PImage hp;
PImage enemy;
PImage treasure;
int x; // hpline
int y,z; //treasure
int w;//enemy
int a;//bg1
int b;//bg1

void setup () {
  size(640,480) ;  // must use this size.
  bg1 = loadImage("img/bg1.png");
  bg2 = loadImage("img/bg2.png");
  ship = loadImage("img/fighter.png");
  hp = loadImage("img/hp.png");
  enemy = loadImage("img/enemy.png");
  treasure = loadImage("img/treasure.png");
  x =  floor(random(8,200));
  y =  floor(random(1,640));
  z =  floor(random(1,400));
  w = 1;
  b = 0;
  a = 640;
  
}

void draw() {
  image(bg2,b,0);
  image(bg1,a,0);
  image(ship,550,200);
  rect(8,19,x,20);
  fill(255,0,0);
  image(hp,3,15);
  image(treasure,y,z);
  w = w + 2;
  w %= 640;
  a += 1;
  b = a+1;
  a %= 640;
  b %= 640;
  image(enemy,w,50);
}
