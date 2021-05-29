int lineLength=40;
float playerX;
float playerY;
int gold=0;
int playerScore=0;
int bulletSpeed=24;
int playerDeath=0;
int totalKills=0;
float enemySpeed=2;
int ultCharge=0;
float playerSpeed=1.5;
int healthPoints=100;
int ammo=0;
int ammoMax=0;
float speedMultiplier=1.0;
float playerKD=0;
int maxLevel=15;
int time;
int lvl2FireInterval=2600;
int enemyFireInterval=2500;
int assualtRifleInterval=200;
int savedScore=0;
int pistolReloadInterval=1400;
int shotgunReloadInterval=3400;
int assaultRifleReloadInterval=2500;
int laserReloadInterval=3000;
int pistolInterval=1000;
int shotgunInterval=1200;
int dragonMoveTime=1500;
int creationInterval=2000;
int shopInterval=400;
float reloadTime=0;
int lastReload=0;
int lastShopOpen=0;
int lastShot=0;
int lastCreated;
int magSize=1000;
float resistanceMultiplier=1.0;
int bulletOffX=0;
int bulletOffY=0;
int lvl1oHealth=8;
int lvl2oHealth=17;
int lvl3oHealth=13;
int lvl4oHealth=36;
int damageLevel=1;
int bulletSpeedLevel=1;
int reloadLevel=1;
int speedLevel=1;
int resistanceLevel=1;
int damageCost=5;
int bulletSpeedCost=5;
int resistanceCost=5;
int speedCost=5;
int reloadCost=5;
float speed=2;
float speedX=speed;
float speedY=speed;
float bulletSpeedMultiplier=1.0;
float reloadMultiplier=1;
int kills=0;
int direction;
int lastGrenade=0;
int boxX;
int boxY;
int buttonOffset=13;
int dimensionID=1;
int highScore=0;
float bloomMultiplier=1.0;
int bloomCost=5;
int bloomLevel=1;
int roundsShot=0;
int hitShot=0;
float damageMultiplier=1.0;
PImage TankUp;
PImage TankDown;
PImage TankLeft;
PImage TankRight;
PImage TankUpLeft;
PImage TankUpRight;
PImage TankDownLeft;
PImage TankDownRight;
PImage Barrel;
PImage Bullet;
PImage Grenade;
PImage heart;
PImage Terrain;
PImage buttonOn;
PImage buttonOff;
PImage terrainMenu;
PImage pistolImage;
PImage assaultRifleImage;
PImage shotgunImage;
PImage laserImage;
PImage itemFrameImage;
PImage itemFrameSelectImage;
PImage sonic;
PFont fontText;
PImage shopBackground;
PImage ammoBackground;
PImage titleBackground;
PImage[] deathExplosionImages=new PImage[16];
PImage[] grenadeExplosionImages=new PImage[10];
PImage[] dragonMaxImages=new PImage[8];
PImage[] dragonHurtImages=new PImage[8];
PImage[] dragonDeathImages=new PImage[15];
PImage[] fireBallImages=new PImage[6];
boolean[] keys=new boolean[128];
boolean[] weaponUnlock=new boolean[4]; //index 0 is the pistol, index 1 is the shotgun, index 2 is the  assult rifle, index 3 is the laser
boolean menu=true;
boolean pause=false;
boolean fullCharge=false;
boolean overButton=false;
boolean backgroundLeft=true;
boolean assaultRifleSelect=false;
boolean pistolSelect=false;
boolean shotgunSelect=false;
boolean laserSelect=false;
boolean shopOn=false;
boolean reloading=false;
float newX;
float newY;
float terrainX;
float terrainY;
FloatList grenadeX_list = new FloatList();
FloatList grenadeY_list = new FloatList();
FloatList grenadeRatioX_list = new FloatList();
FloatList grenadeRatioY_list = new FloatList();
FloatList grenadeDestinationX_list = new FloatList();
FloatList grenadeDestinationY_list = new FloatList();
FloatList grenadeState_list = new FloatList();
FloatList animationX_list = new FloatList();
FloatList animationY_list = new FloatList();
FloatList animationFrame_list = new FloatList();
FloatList animationID_list = new FloatList();
FloatList animationInfo_list = new FloatList();
FloatList animationInfo1_list = new FloatList();
FloatList animationState_list = new FloatList();
FloatList projectileX_list = new FloatList();
FloatList projectileY_list = new FloatList();
FloatList ratioX_list = new FloatList();
FloatList ratioY_list = new FloatList();
FloatList projectileID_list = new FloatList();
FloatList enemyX_list = new FloatList();
FloatList enemyY_list = new FloatList();
FloatList enemyLevel_list = new FloatList();
FloatList enemyHealth_list = new FloatList();
FloatList enemyTimeCheck_list = new FloatList();
IntList projectileMode_list = new IntList();
IntList enemyState_list = new IntList();
FloatList enemyShield_list = new FloatList();
FloatList particleX_list = new FloatList();
FloatList particleY_list = new FloatList();
FloatList partRatioX_list = new FloatList();
FloatList partRatioY_list = new FloatList();
FloatList destinationX_list = new FloatList();
FloatList destinationY_list = new FloatList();
IntList particleID_list = new IntList();
IntList particleState_list =  new IntList();
StringList buttonText_list = new StringList();
IntList buttonX_list = new IntList();
IntList buttonY_list = new IntList();
IntList buttonFunction_list = new IntList();
IntList buttonDimension_list = new IntList();
IntList buttonMode_list = new IntList();
PImage laser;
int laserLength=255;
float radius=25;
float minus=0;     //declare variables



void setup(){
  fullScreen();
  noCursor();
  frameRate(75);
  imageMode(CENTER);
  textAlign(CENTER);
  /*
  weaponUnlock[0]=true;
  weaponUnlock[1]=true;
  weaponUnlock[2]=true;
  weaponUnlock[3]=true;
  */
  textFont(createFont("ARCADECLASSIC.TTF",50)); //inputing custom font
  playerX=width/2;
  playerY=height/2;
  boxX=width/2;
  boxY=height/2;
  terrainX=width/2;
  terrainY=height/2;
  lastCreated=millis();
  sonic=loadImage("sonic.png");
  titleBackground=loadImage("titleBackground.png");
  titleBackground.resize(624,188);
  ammoBackground=loadImage("ammoBackground.png");              //setting up the images and resizing
  ammoBackground.resize(115,144);
  shopBackground=loadImage("blackBackground.png");
  shopBackground.resize(width,height);
  laserImage=loadImage("greenLaserImage.png");
  laserImage.resize(180,60);
  pistolImage=loadImage("pistolImage.png");
  pistolImage.resize(130,90);
  shotgunImage=loadImage("shotgunImage.png");
  shotgunImage.resize(176,45);
  assaultRifleImage=loadImage("assaultRifleImage.png");
  assaultRifleImage.resize(200,200);
  itemFrameImage=loadImage("itemFrameImage.png");
  itemFrameImage.resize(210,182);
  itemFrameSelectImage=loadImage("itemFrameSelectImage.png");
  itemFrameSelectImage.resize(210,182);
  buttonOn=loadImage("selectButtonOver.png");
  buttonOff=loadImage("selectButtonOff.png");
  terrainMenu=loadImage("Terrain.png");
  terrainMenu.resize(4032,2596);
  heart=loadImage("heart.png");
  heart.resize(20,20);
  TankUp=loadImage("TankUp.png");
  TankUp.resize(60,60);
  TankUpLeft=loadImage("TankUpLeft.png");
  TankUpLeft.resize(80,80);
  TankUpRight=loadImage("TankUpRight.png");
  TankUpRight.resize(80,80);
  TankDown=loadImage("TankDown.png");
  TankDown.resize(60,60);
  TankDownLeft=loadImage("TankDownLeft.png");
  TankDownLeft.resize(80,80);
  TankDownRight=loadImage("TankDownRight.png");
  TankDownRight.resize(80,80);
  TankLeft=loadImage("TankLeft.png");
  TankLeft.resize(60,60);
  TankRight=loadImage("TankRight.png");
  TankRight.resize(60,60);
  Barrel=loadImage("Barrel.png");
  Barrel.resize(26,60);
  Bullet=loadImage("bullet.png");
  Bullet.resize(8,8);
  Terrain=loadImage("Terrain.png");
  Terrain.resize(4032,2596);
  Grenade=loadImage("grenade.png");
  laser=loadImage("greenLaserImage.png");
  Grenade.resize(60,50);
  for (int i=0;i<deathExplosionImages.length;i++){                                 //loading up the PImage arrays
    deathExplosionImages[i]=loadImage("tile"+nf(i,3)+".png");
    deathExplosionImages[i].resize(150,150);
  }
  for (int i=0;i<grenadeExplosionImages.length;i++){
     grenadeExplosionImages[i]=loadImage("grenadeExplosion"+nf(i+2,3)+".png");
     grenadeExplosionImages[i].resize(200,200);
  }
  for (int i=0;i<dragonMaxImages.length;i++){
    dragonMaxImages[i]=loadImage("dragonMax"+i+".png");
    dragonMaxImages[i].resize(256,256);
  }
  for (int i=0;i<dragonHurtImages.length;i++){
    dragonHurtImages[i]=loadImage("dragonHurt"+i+".png");
    dragonHurtImages[i].resize(256,256);
  }
  for (int i=0;i<dragonDeathImages.length;i++){
    dragonDeathImages[i]=loadImage("dragonDeath"+i+".png");
    dragonDeathImages[i].resize(256,256);
  }
  for (int i=0;i<fireBallImages.length;i++){
    fireBallImages[i]=loadImage("fireBall"+i+".png");
    fireBallImages[i].resize(200,200);
  }
  for(int i=0;i<magSize;i++){
    clearList(i);
  }
  declareButton();                        //declaring all createButton() functions
  
  weaponUnlock[0]=true;                   //unlocking the first weapon - pistol
}

void draw(){
  background(255);
  time=millis();
  if(menu){                                //menu is pre game
    menuBackground();        //drawing menu
    buttonHover();            //checking if button is being hovered over
    drawDimension();         //drawing all entities existing in current dimensionID
    gunSights();             //gunSights aka mouse pointer
  }
  if(menu==false){               //game runs if menu is not open
    image(Terrain,boxX,boxY);    //drawing background
    if(pause==false){            //pauses game if in buyMenu
      noFill();
      predictBullet();           //function that enemyLevel3 utilizes
      reload();                  //reloading function
      movement();//movement
      weaponFire();//fire selected weapon
      updateBullet(); //moves bullets
      updateParticle();//moves paricles
      updateGrenade();//moves grenades
      deleteProjectile();//destroys projectile
      deleteParticle();//destroys particle
      createEnemy(); //creates adn enemy
      updateEnemy();//enemy functions/moves
      updateAnimation();//moves animations
      checkHit();//checks if enemy gets hit by projectile
      checkPlayerHit();//checks if player gets hit by projectile
      checkEnPlCollision();//checks if player is hit by enemy
      checkEnemyHealth();//checks enemy health
    }
    pause();
    buttonHover();
    laser(); //does calulations for the laser
    shield();//does calculations for the shield
    player();//draws player
    drawParticle();//draws particle
    drawEnemy();//draws enemy
    drawProjectile();
    drawAnimation();
    displayHealth();
    displayUlt();
    displayAmmo();
    displayHealthbar();
    displayScore();
    strokeWeight(5);
    float dx=mouseX-playerX;
    float dy=mouseY-playerY;
    float angle=atan2(dy, dx);
    newX=playerX+cos(angle) * lineLength;
    newY=playerY+sin(angle) * lineLength;
    stroke(0);
    stroke(100);
    drawBarrel();
    shop(); //checks if shop is open and draws if it is
    checkHealth();
    drawDimension();
    gunSights();
  }
}

void weaponFire(){
  if(mousePressed){
    if(reloading==false){//if the player in not reloading
      if(assaultRifleSelect){   //if player has assualt rifle equipted
        if(millis()>lastShot+assualtRifleInterval*bulletSpeedMultiplier && ammo>0){  //checks to see if its been enough time since lastShot and if there is enough ammo
          float xpixel=mouseX-playerX; //creates a bullet
          float ypixel=mouseY-playerY;
          float bulletAngle=atan2(ypixel,xpixel);
          bulletAngle+=int(random(-11*bloomMultiplier,10*bloomMultiplier))*PI/180;
          float xratio=cos(bulletAngle);
          float yratio=sin(bulletAngle);
          int zero=0;
          for(zero=0;zero<projectileX_list.size();zero++){
            if(projectileX_list.get(zero)==0){
              break;
            }
          }
          projectileX_list.set(zero,newX);
          projectileY_list.set(zero,newY);
          ratioX_list.set(zero,xratio);
          ratioY_list.set(zero,yratio);
          projectileMode_list.set(zero,0);
          ammo--; //takes away ammo
          roundsShot++;
          lastShot=millis(); //sets lastShot to millis to start timing again
        }
      }
      if(pistolSelect){//if player has pistol equipted
        if(millis()>lastShot+pistolInterval*bulletSpeedMultiplier && ammo>0){ //checks to see if its been enough time since lastShot and if there is enough ammo
          float xpixel=mouseX-playerX;//creates bullet
          float ypixel=mouseY-playerY;
          float bulletAngle=atan2(ypixel,xpixel);
          bulletAngle+=int(random(-7*bloomMultiplier,8*bloomMultiplier))*PI/180;
          float xratio=cos(bulletAngle);
          float yratio=sin(bulletAngle);
          int zero=0;
          for(zero=0;zero<projectileX_list.size();zero++){
            if(projectileX_list.get(zero)==0){
              break;
            }
          }
          projectileX_list.set(zero,newX);
          projectileY_list.set(zero,newY);
          ratioX_list.set(zero,xratio);
          ratioY_list.set(zero,yratio);
          projectileMode_list.set(zero,0);
          ammo--;
          roundsShot++;
          lastShot=millis();//sets lastShot to millis to start timing again
        }
      }
      if(shotgunSelect){//if player has shotgun equipted
        if(millis()>lastShot+pistolInterval*bulletSpeedMultiplier && ammo>0){//checks to see if its been enough time since lastShot and if there is enough ammo
          for(int e=0;e<8;e++){ //creates 8 pellets(bullets)
            float xpixel=mouseX-playerX;//creates bullet
            float ypixel=mouseY-playerY;
            float bulletAngle=atan2(ypixel,xpixel);
            bulletAngle+=int(random(-10,11))*PI/180;
            float xratio=cos(bulletAngle);
            float yratio=sin(bulletAngle);
            int zero=0;
            for(zero=0;zero<projectileX_list.size();zero++){
              if(projectileX_list.get(zero)==0){
                break;
              }
            }
            projectileX_list.set(zero,newX);
            projectileY_list.set(zero,newY);
            ratioX_list.set(zero,xratio);
            ratioY_list.set(zero,yratio);
            projectileMode_list.set(zero,0);
            lastShot=millis();//sets lastShot to millis to start timing again
          }
          ammo--;   //takes away ammo once
          roundsShot+=8;
        }
      }
    }
  }
}

void declareButton(){ //declaring all createButton() functions
  createButton("Play",1,1,width/2,height/2);  
  createButton("Tutorial",8,1,width/2,height/2+150);
  createButton("Back",3,5,width/2,height-100);
  createButton("Confirm Selection",2,2,width/2,height/2+400);
  createButton("Back",3,2,150,height/2+400);
  createButton("Upgrade",4,3,width/2,height/2-100);
  createButton("Upgrade ",5,3,width/2-400,height/2-100);
  createButton("Upgrade",6,3,width/2+400,height/2-100);
  createButton("Continue",7,4,width/2,height/2+400);
  createButton("Upgrade",9,3,width/2,height/2+410);
  createButton("Upgrade",10,3,width/2-400,height/2+410);
  createButton("Upgrade",11,3,width/2+400,height/2+410);
  createButton("Back",3,6,width-170,90);
}

void buttonInteraction(){ //checks if a button was pressed
  if(dimensionID==1 && mouseX>width/2-titleBackground.width/2 && mouseX<width/2+titleBackground.width/2 && mouseY>170-titleBackground.height/2 && mouseY<170+titleBackground.height/2){  //EASTER EGG
    dimensionID=6;
  }
  for(int i=0;i<buttonX_list.size();i++){ //for every button
    int len=((buttonText_list.get(i)).length()*25)+200; //size of button changes based on how long the word inside is so the area of detection needs to be modified also
    if(mouseX>buttonX_list.get(i)-len/2 && mouseX<buttonX_list.get(i)+len/2 && mouseY>buttonY_list.get(i)-40-buttonOffset && mouseY<buttonY_list.get(i)+40-buttonOffset && dimensionID==buttonDimension_list.get(i)){
      if(buttonFunction_list.get(i)==1){//checks what buttonFunction_list.get() is                                                       //checks to see if button is pressed on and if it is in the current dimension
        dimensionID=2;//function 1 changes dimension
      }
      if(buttonFunction_list.get(i)==2){
        menu=false;//function2 sets menu to false
        healthPoints=100;
      }
      if(buttonFunction_list.get(i)==3){
        dimensionID=1;//function3 changes dimension
      }
      if(buttonFunction_list.get(i)==4){
        if(gold>=damageCost*damageLevel){  //function4 (buy higher damage)
          damageMultiplier+=0.2;
          damageMultiplier=int(damageMultiplier*10);
          damageMultiplier=damageMultiplier/10;
          gold-=damageCost*damageLevel;
          damageLevel++;
        }
      }
      if(buttonFunction_list.get(i)==5){
        if(gold>=speedCost*speedLevel){ //function5 (buy higher speed)
          speedMultiplier+=0.2;
          speedMultiplier=int(speedMultiplier*10);
          speedMultiplier=speedMultiplier/10;
          gold-=speedCost*speedLevel;
          speedLevel++;
        }
      }
      if(buttonFunction_list.get(i)==6 && bulletSpeedLevel<maxLevel){
        if(gold>=bulletSpeedCost*bulletSpeedLevel){  //function6 (buy higher bullet speed)
          bulletSpeedMultiplier-=0.05;
          bulletSpeedMultiplier=int(bulletSpeedMultiplier*100);
          bulletSpeedMultiplier=bulletSpeedMultiplier/100;
          gold-=bulletSpeedCost*bulletSpeedLevel;
          bulletSpeedLevel++;
        }
      }
      if(buttonFunction_list.get(i)==7){
        dimensionID=2;     //function 7 exits stat screen and resets variables and changes dimension
        playerScore=0;
        kills=0;
        damageMultiplier=1;
        bulletSpeedMultiplier=1;
        speedMultiplier=1;
        gold=0;
        damageLevel=1;
        speedLevel=1;
        bulletSpeedLevel=1;
        resistanceLevel=1;
        roundsShot=0;
        hitShot=0;
        healthPoints=100;
      }
      if(buttonFunction_list.get(i)==8){
        dimensionID=5; //function 8 changes dimension
      }
      if(buttonFunction_list.get(i)==9 && resistanceLevel<maxLevel){
        if(gold>=resistanceCost*resistanceLevel){  //function6 (buy higher bullet speed)
          resistanceMultiplier-=0.05;
          resistanceMultiplier=int(resistanceMultiplier*100);
          resistanceMultiplier=resistanceMultiplier/100;
          gold-=resistanceCost*resistanceLevel;
          resistanceLevel++;
        }
      }
      if(buttonFunction_list.get(i)==10 && bloomLevel<maxLevel){
        if(gold>=bloomCost*bloomLevel){  //function10 (buy bloom reduction upgrade)
          bloomMultiplier-=0.05;
          bloomMultiplier=int(bloomMultiplier*100);
          bloomMultiplier=bloomMultiplier/100;
          gold-=bloomCost*bloomLevel;
          bloomLevel++;
        }
      }
      if(buttonFunction_list.get(i)==11 && reloadLevel<maxLevel){
        if(gold>=reloadCost*reloadLevel){  //function11 (buy reload reduction upgrade)
          reloadMultiplier-=0.05;
          reloadMultiplier=int(reloadMultiplier*100);
          reloadMultiplier=reloadMultiplier/100;
          gold-=reloadCost*reloadLevel;
          reloadLevel++;
        }
      }
    }
  }
}

boolean pointCircle(float playerX, float playerY, float ex, float ey, float radius) { //Check if either of the ends of the line are inside the circle

  float distX = playerX - ex;
  float distY = playerY - ey;  
  float distance = sqrt( (distX*distX) + (distY*distY) ); //pythagorean relationship to find the hypotnus
  if (distance <= radius) { //if the length of the hypotnus is smaller or equal to the radius of the enemy
    return true;
  }
  return false;
}

boolean lineCircle(float playerX, float playerY, float changingX, float changingY, float ex, float ey, float radius) { //To find a dot that is cloest to the enemy along the line/laser changingX and changingY are the two points of the line
  boolean inside1 = pointCircle(ex,ey, playerX,playerY,radius);//If the line/laser is in range of hitting the target
  boolean inside2 = pointCircle(changingX,changingY, playerX,playerY,radius);//If the line/laser is in range of hitting the target
  if (inside1 || inside2) return true; //If is true then calculate where the dot is
  float distX = playerX - changingX;
  float distY = playerY - changingY;
  float len = sqrt( (distX*distX) + (distY*distY) ); //Finds the total length of the line
  float dot = ( ((ex-playerX)*(changingX-playerX)) + ((ey-playerY)*(changingY-playerY)) ) / pow(len,2); //use the dot product formula to find the dot product of the two points
  float closestX = playerX + (dot * (changingX-playerX)); //Finds the closest dot's X value
  float closestY = playerY + (dot * (changingY-playerY)); //Finds the closest dot's Y value
  boolean onSegment = linePoint(playerX,playerY,changingX,changingY, closestX,closestY); //Check the collision between a dot and a line
  if (!onSegment) return false; //If the enemy is not even close then return false
  noFill();
  noStroke();
  ellipse(closestX, closestY, 20, 20); //Draws the dot along the invisible line
  distX = closestX - ex;
  distY = closestY - ey;
  float distance = sqrt( (distX*distX) + (distY*distY) ); //Use the pythergrean relationship to find the distance between the dot on the line and the ellipse/enemy 
  if (distance <= radius) { //Check if the point on the invisible line collides with the enemy
    return true;
  }
  return false;
}

boolean linePoint(float playerX, float playerY, float changingX, float changingY, float ex, float ey) { //Check the collision between a dot and a line
  float d1 = dist(ex,ey, playerX,playerY); //How far is the dot from one point of the line 
  float d2 = dist(ex,ey, changingX,changingY); //How far is the dot from the other point of the line 
  float lineLen = dist(playerX,playerY, changingX,changingY); //How long is the line
  float buffer = 0.1; //offset of 0.1

  if (d1+d2 >= lineLen-buffer && d1+d2 <= lineLen+buffer) { //If the dot is within the line
    return true;
  }
  return false;
}

void laserBeam(){ //draws the laserbeam
  float slpX = mouseX - playerX; //finds the angle between the mouse cursor and the player
  float slpY = mouseY - playerY;
  float laserAngle = atan2(slpY, slpX);
  laserAngle=laserAngle*180/PI;
  translate(playerX, playerY);
  rotate(radians(laserAngle)); //rotates the laser with the angle
  image(laser,0+125-(minus/2)-28/2,0,300-minus-28,25);
  rotate(-(radians(laserAngle))); //unroates to provent other elements of the game to rotate
  translate(-playerX,-playerY);
}


void laser(){ //The laser function
  if(laserSelect && mousePressed && ammo>0){ //If laser is selected and mouse is pressed and has ammo
    laserBeam(); //draws the laser
    ammo-=0.08; //minus 0.08 of the ammo per loop
    if(enemyX_list.get(0)!=0){ //If there is an enemy
      for(int i=0;i<enemyX_list.size();i++){
        if(dist(enemyX_list.get(i),enemyY_list.get(i),playerX,playerY)<400){ //Only checks the collison if the player can see the enemy on the screen

    
          float directionX = mouseX - playerX;
          float directionY = mouseY - playerY;
          float beamAngle = atan2(directionY, directionX);
          float changingX = playerX + cos(beamAngle) * laserLength;
          float changingY = playerY + sin(beamAngle) * laserLength;

          if(enemyLevel_list.get(i)!=5){ //if it is not a dragon the radius is going to be 25
            radius=25;
          }
          
          else if(enemyLevel_list.get(i)==5){ //if it is a dragon the radius is going to be 200
            radius=200;
          }
          
          boolean hit = lineCircle(playerX,playerY, changingX,changingY, enemyX_list.get(i),enemyY_list.get(i),radius); //Checks the collision between the laser and the enemy
          
          
          
          if (hit){ //If it hits the enemy
            minus=dist(playerX,playerY,changingX,changingY)-dist(playerX,playerY,enemyX_list.get(i),enemyY_list.get(i));//shortens the laser to make it more realistic
            if(enemyLevel_list.get(i)!=5){ //If it is hitting a target that is not a dragon
              enemyHealth_list.add(i,-0.6); //Does 0.6 damage each loop
            }
            else if(enemyLevel_list.get(i)==5){ //If it is hitting a dragon
              enemyHealth_list.add(i,-2.4); //Does 2.4 damage each loop
            }
          }
          
          else{
            minus=0; //The laser doesn't shortens
          }
          
          
          

          noStroke();
          line(playerX,playerY,changingX,changingY); //draws an invisible line that has the same length as the laser for the detection of collision
        }
      }
    }
  }
}



void menuBackground(){
  image(terrainMenu,terrainX,terrainY); //draws the games background
  if(backgroundLeft && terrainX>1300){ //determines if moving left or right
    backgroundLeft=false;
  }
  if(backgroundLeft==false && terrainX<400){
    backgroundLeft=true;
  }
  if(backgroundLeft){   //moves the image to create an animates background
    terrainX++;
  }
  else{
    terrainX--;
  }
}

void createButton(String text,int function,int dimension,int x,int y){  //button function
  buttonX_list.append(x);       //takes and x and y
  buttonY_list.append(y);
  buttonFunction_list.append(function);  // user specifies what the function of the button is
  buttonText_list.append(text);   //user specifies what the text inside the button is
  buttonDimension_list.append(dimension); //user specifies what dimension the button exists within
  buttonMode_list.append(0);   //whether the button is being hovered over or not (set to 0 meaning it is currently not)
}

void drawDimension(){  //draws dimensions
  if(dimensionID==1){
    image(titleBackground,width/2,170);
    fill(162,21,214);
    textSize(100);
    text("Bullet V1",width/2,200);
  }

  if(dimensionID==2){  //specific dimension display images or text, and that is called here
    weaponSelectionMenu();
  }
  
  if(dimensionID==4){//specific dimension display images or text, and that is called here
    stats();
  }
  if(dimensionID==5){//specific dimension display images or text, and that is called here
    tutorialMenu();
  }
  if(dimensionID==6){//specific dimension display images or text, and that is called here
    fill(0);
    noStroke();
    rect(0,0,width,height);
    image(sonic,410,320);
    fill(255);
    text("made by",width/2+30,320);
    text("eston li",width/2+210,height/2+100);
    text("ibrahim aktas",width/2+300,height/2+340);
  }
  for(int i=0;i<buttonX_list.size();i++){   //displays the buttons in the current dimension
    if(dimensionID==buttonDimension_list.get(i)){ //if the dimension = buttonDimension
      if(buttonMode_list.get(i)==0){   //if button is not being hovered over
        int len=((buttonText_list.get(i)).length()*25)+200;
        image(buttonOff,buttonX_list.get(i),buttonY_list.get(i)-buttonOffset,len,200);
      }
      if(buttonMode_list.get(i)==1){   //if button is being hovered over
        int len=((buttonText_list.get(i)).length()*25)+200;
        image(buttonOn,buttonX_list.get(i),buttonY_list.get(i)-buttonOffset,len,200);
      }
      textSize(50);
      fill(255);
      text(buttonText_list.get(i),buttonX_list.get(i),buttonY_list.get(i)); //writes the specified text on the button
    }
  }
}

void weaponSelectionMenu(){ //menu with custom numbers to select weapons
  //assaultRifle
  if(mousePressed && mouseX>width/2-105 && mouseX<width/2+105 && mouseY>height/2-91 && mouseY<height/2+91 && weaponUnlock[2]){     //checks if the assualtRifle box was clicked on and if it is unlocked
    assaultRifleSelect=true;
    pistolSelect=false;
    laserSelect=false;
    shotgunSelect=false;
    damageMultiplier=1;         //initailizing damage multiplier
    ammo=35;                    //sets ammo information
    ammoMax=35;
  }
  if(assaultRifleSelect){
    image(itemFrameSelectImage,width/2,height/2);          //drawing the slected frame if selected
    fill(255,0,0);
    textSize(35);
    text("Selected",width/2,height/2-40);
  }
  else{
    image(itemFrameImage,width/2,height/2);               //drawing normal frame if not selected
  }
  image(assaultRifleImage,width/2,height/2);              
  fill(255);
  textSize(30);
  text("Assault Rifle",width/2, height/2+70);
  
  //shotgun
  if(mousePressed && mouseX>width/2-325 && mouseX<width/2-115 && mouseY>height/2-91 && mouseY<height/2+91 && weaponUnlock[1]){   //checks if the shotgun box was clicked on and if it is unlocked
    assaultRifleSelect=false;
    pistolSelect=false;
    laserSelect=false;
    shotgunSelect=true;
    damageMultiplier=1;                //initailizing damage multiplier
    ammo=6;                            //sets ammo information
    ammoMax=6;
  } 
  if(shotgunSelect){
    image(itemFrameSelectImage,width/2-220,height/2);          //drawing the shotgun selection
    fill(255,0,0);
    textSize(35);
    text("Selected",width/2-220,height/2-40);
  }
  else{
    image(itemFrameImage,width/2-220,height/2);
  }
  image(shotgunImage,width/2-220,height/2);
  fill(255);
  textSize(30);
  text("Shotgun",width/2-220,height/2+70);
  
  //pistol
  if(mousePressed && mouseX>width/2+115 && mouseX<width/2+325 && mouseY>height/2-91 && mouseY<height/2+91 && weaponUnlock[0]){     //checks if the pistol box was clicked on and if it is unlocked
    assaultRifleSelect=false;
    pistolSelect=true;
    laserSelect=false;
    shotgunSelect=false;
    damageMultiplier=1.6;         //setting damage multiplier to 1.6 to make it fairer for beginers
    ammo=7;                        //sets ammo information
    ammoMax=7;
  }
  if(pistolSelect){
    image(itemFrameSelectImage,width/2+220,height/2);    //drawing the pistol selection box and image
    fill(255,0,0);
    textSize(35);
    text("Selected",width/2+220,height/2-40);
  }
  else{
    image(itemFrameImage,width/2+220,height/2);
  }
  image(pistolImage,width/2+220,height/2);
  fill(255);
  textSize(30);
  text("Pistol",width/2+220,height/2+70);
  
  //laser
  if(mousePressed && mouseX>width/2+335 && mouseX<width/2+545 && mouseY>height/2-91 && mouseY<height/2+91 && weaponUnlock[3]){    //checks if the laser box was clicked on and if it is unlocked
    assaultRifleSelect=false;
    pistolSelect=false;
    laserSelect=true;
    shotgunSelect=false;
    damageMultiplier=1;         //set damage multiplier
    ammo=250;                   //ammo runs out quickly so it is set to be very high compared to others
    ammoMax=250;
  }
  if(laserSelect){
    image(itemFrameSelectImage,width/2+440,height/2);    //draw the laser selection icon
    fill(255,0,0);
    textSize(35);
    text("Selected",width/2+440,height/2-40);
  }
  else{
    image(itemFrameImage,width/2+440,height/2);
  }
  image(laserImage,width/2+440,height/2);
  fill(255);
  textSize(30);
  text("Laser",width/2+440,height/2+70);
  textSize(50);
  fill(0,255,0);
  if(weaponUnlock[0]==false){                            //writing "Locked" if the specified element in correlation with the weapon is resulting in false along with the required Unlock Points (savedScore) to select the weapon
    text("Locked",width/2+220,height/2);
    text(0,width/2+220,height/2-40);
  }
  if(weaponUnlock[1]==false){
    text("Locked",width/2-220,height/2);
    text(19500*1,width/2-220,height/2-40);
  }
  if(weaponUnlock[2]==false){
    text("Locked",width/2,height/2);
    text(19500*4,width/2,height/2-40);
  }
  if(weaponUnlock[3]==false){
    text("Locked",width/2+440,height/2);
    text(19500*9,width/2+440,height/2-40);
  }
  textSize(100);
  text("Unlock Points  "+savedScore,width/2,height/2-400);
  if(assaultRifleSelect==false && pistolSelect==false && laserSelect==false && shotgunSelect==false){     // if the player doesnt select anything the selection is automatically directed to the pistol
    pistolSelect=true;
    damageMultiplier=1.6;
    ammo=7;
    ammoMax=7;
  }
}

void tutorialMenu(){     //menu for the tutorial
  tint(255,255,255,150);
  image(shopBackground,width/2,height/2);
  tint(255);
  textSize(100);
  fill(255);
  text("Tutorial",width/2,100);
  textSize(60);
  text("Controls",350,200);
  text("How To Play",width-400,200);
  textSize(40);
  text("WASD to move around. Left click to shoot.",400,250);
  text("Press B to open the upgrades ingame.",380,300);
  text("Press E to thow a grenade where you are",400,350);
  text("looking at. Grenades require 75% of",350,400);
  text("your energy. This is an energy bar:",350,450);
  text("Press R to reload gun.",350,550);
  
  text("Every time you die all of your upgrades",width-400,250);
  text("are reset.",width-400,300);
  text("Your Unlock Points will accumulate though,",width-400,350);
  text("and let you unlock new weapons.",width-400,400);
  text("You will not lose unlocked weapons upon death.",width-450,450);
  text("Buying upgrades requires gold. You get gold",width-430,500);
  text("by slaying enemies and picking up the loot.",width-430,550);
  
  text("Have Fun Slaying!",width/2,height-200);
  
  fill(0,0,255);
  strokeWeight(5);
  stroke(0,0,255);
  rect(130,470,400,30);
  fill(255);
  rect(130,470,200,30);
}

void buttonHover(){     //checks if button is being hovered over and updates buttonMode_list
  for(int i=0;i<buttonX_list.size();i++){
    if(dimensionID==buttonDimension_list.get(i)){ //if button is in current dimension
      int len=((buttonText_list.get(i)).length()*25)+200;
      if(mouseX>buttonX_list.get(i)-len/2 && mouseX<buttonX_list.get(i)+len/2 && mouseY>buttonY_list.get(i)-40-buttonOffset && mouseY<buttonY_list.get(i)+40-buttonOffset){   //detecting the mouse
        buttonMode_list.set(i,1);       //if it is over then it is set to 1
      }
      else{
        buttonMode_list.set(i,0);       //if it isnt it is set to 0
      }
    }
  }
}

void clearList(int i){                //function to simplify clearing the lists (organization purposes)
  grenadeX_list.set(i,0);
  grenadeY_list.set(i,0);
  grenadeRatioX_list.set(i,0);
  grenadeRatioY_list.set(i,0);
  grenadeDestinationX_list.set(i,0);
  grenadeDestinationY_list.set(i,0);
  grenadeState_list.set(i,0);
  projectileX_list.set(i,0);
  projectileY_list.set(i,0);
  ratioX_list.set(i,0);
  ratioY_list.set(i,0);
  projectileID_list.set(i,0);
  enemyX_list.set(i,0);
  enemyY_list.set(i,0);
  animationX_list.set(i,0);
  animationY_list.set(i,0);
  animationFrame_list.set(i,0);
  animationID_list.set(i,0);
  animationInfo_list.set(i,0);
  animationInfo1_list.set(i,0);
  animationState_list.set(i,0);
  projectileMode_list.set(i,0);
  enemyLevel_list.set(i,0);
  enemyHealth_list.set(i,0);
  enemyTimeCheck_list.set(i,0);
  enemyState_list.set(i,0);
  particleX_list.set(i,0);
  particleY_list.set(i,0);
  partRatioX_list.set(i,0);
  partRatioY_list.set(i,0);
  destinationX_list.set(i,0);
  destinationY_list.set(i,0);
  particleState_list.set(i,0);
  particleID_list.set(i,0);
}

void checkPlayerHit(){      //checks if player was hit by a projectile
  for(int i=0;i<magSize-1;i++){
    if(projectileMode_list.get(i)==0 || projectileMode_list.get(i)==2){              //only a hit if the mode of the projectile is 0 (hit detection with everything) or 2 (hit detection only with player)
      int distProj=0;
      if(projectileID_list.get(i)==0){                                               //determines if the projectile is a fireball (1) or a bullet (0) and adjusts the distProj(ectile) variable
        distProj=4;
      }
      if(projectileID_list.get(i)==1){
        distProj=50;
      }
      if(dist(playerX,playerY,projectileX_list.get(i),projectileY_list.get(i))<30+distProj){   //if the player is hit then it deducts 10*resistanceMultiplier(upgrade) from healthPoints and deletes bullet
        healthPoints-=(10*resistanceMultiplier);
        projectileX_list.set(i,0);
        projectileY_list.set(i,0);
        ratioX_list.set(i,0);
        ratioY_list.set(i,0);
        projectileMode_list.set(i,0);
      }
    }
  }
}

void displayUlt(){                    //displays the energy/charge bar
  fill(0,0,255);
  stroke(0,0,255);
  rect(15,50,300,20);
  fill(255);
  rect(15,50,300*ultCharge/100,20);
}

void displayScore(){                 //displays the player score and amount of gold
  strokeWeight(5);
  textSize(40);
  fill(134, 144, 160);
  text(playerScore,380,35);
  fill(255,165,0);
  text(gold,width-60,35);
}

void predictBullet(){
  for(int i=0;i<magSize-1;i++){   //for every enemy
    if(enemyLevel_list.get(i)==3){   //if the enemy is level 3
      for(int e=0;e<magSize-1;e++){   //for every projectile
        if(projectileMode_list.get(e)!=2 && projectileMode_list.get(e)!=1){  //if projectile is not in mode 2 or 1, meaning its in 0, meaning it can hurt the enemy
          if(projectileX_list.get(e)!=0){                            //if the projectileX does not =0 (exists)
            float futurex=projectileX_list.get(e);     //stores x and y in these future variables
            float futurey=projectileY_list.get(e);
            for(int w=1;w<41;w++){          //for 40 reiterations (40*20)=800 pixel range of detection
              futurex+=20*ratioX_list.get(e);      //where the x and y of the bullet will be after moving 20 pixels
              futurey+=20*ratioY_list.get(e);
              if(dist(futurex,futurey,enemyX_list.get(i),enemyY_list.get(i))<28){   //change the distance requirement to make it harder (base 24) larger detection leads to the ai being more cautious around bullets and dodging based on a larger detection area
                enemyX_list.add(i,2*ratioY_list.get(e));                            //if the distance between the future x and y and the enemy x and y is less than the specified amount, then it moves perpindicular to the bullets slope (x and y ratio)
                enemyY_list.add(i,-2*ratioX_list.get(e));
              }
            }
          }
        }
      }
    }
  }
}


void displayHealth(){       //displays the players health
  strokeWeight(5);
  stroke(255,0,0);
  fill(255,0,0);
  rect(15,15,300,20);
  fill(0,255,0);
  rect(15,15,300*healthPoints/100,20);
}

void displayAmmo(){         //draws the ammoBackground along with info about the players ammo in the bottom right corner
  image(ammoBackground,width-ammoBackground.width/2,height-ammoBackground.height/2);
  fill(255);
  text(ammo,width-ammoBackground.width/2,height-ammoBackground.height/2-20);
  text(ammoMax,width-ammoBackground.width/2,height-ammoBackground.height/2+40);
  strokeWeight(3);
  stroke(255);
  line(width-ammoBackground.width/2-30,height-ammoBackground.height/2,width-ammoBackground.width/2+30,height-ammoBackground.height/2);
}

void reloadProcedure(){    //visual effect for reloading a weapon
  stroke(255);
  strokeWeight(3);
  line(playerX-80,playerY-70,playerX+80,playerY-70);
  strokeWeight(5);
  line(playerX-90,playerY-80,playerX-75,playerY-80);
  line(playerX-90,playerY-80,playerX-90,playerY-60);
  line(playerX-90,playerY-60,playerX-75,playerY-60);
  line(playerX+90,playerY-80,playerX+75,playerY-80);
  line(playerX+90,playerY-80,playerX+90,playerY-60);
  line(playerX+90,playerY-60,playerX+75,playerY-60);
  float leng=160-((float(lastReload)+reloadTime-millis())/reloadTime)*160;    //goes from the left and adds the amount of x to the progress line based on how far through the reload it is
  line(playerX-80+leng,playerY-60,playerX-80+leng,playerY-80);
}

void reload(){                           //function to reload the weapon
  if(keys[82] && reloading==false){
    if(assaultRifleSelect){                                            //determines how long it will take to reload the gun
      reloadTime=assaultRifleReloadInterval*reloadMultiplier; //reloadMultiplier(upgrade)
    }
    if(pistolSelect){
      reloadTime=pistolReloadInterval*reloadMultiplier;
    }
    if(shotgunSelect){
      reloadTime=shotgunReloadInterval*reloadMultiplier;
    }
    if(laserSelect){
      reloadTime=laserReloadInterval*reloadMultiplier;
    }
    lastReload=millis();      //sets the last reloaded time to millis()
    reloading=true;           //sets the reloading variable to true activating the second part of this function
  }
  if(reloading==true){         //if reloading
    if(millis()>lastReload+reloadTime){    //checks to see if reloading is finished
      reloading=false;        //sets relaoding to false
      ammo=ammoMax;          //sets ammo to the max ammo for the selected weapon
    }
    else{
      reloadProcedure();      //if reload is still in progress it calls on the reloadProcedure() function
    }
  }
}

void checkEnemyHealth(){                                         //kills off enemies and spawns particles
  for(int i=0;i<magSize-1;i++){          //for every enemy
    if(enemyHealth_list.get(i)<=0 && enemyX_list.get(i)!=0){      //if 0 is greater or equal to the enemies health and the enemyX does not =0(exists)
      int quantity=0;
      if(enemyLevel_list.get(i)==1){     //determines numbers of drops based on enemy level
        quantity=10;
      }
      if(enemyLevel_list.get(i)==2){
        quantity=18;
      }
      if(enemyLevel_list.get(i)==3){
        quantity=25;
      }
      if(enemyLevel_list.get(i)==4){
        quantity=35;
      }
      if(enemyLevel_list.get(i)==5){
        quantity=95;
      }
      for(int w=0;w<quantity;w++){      //runs loop quantity amount of times
        float angle=random(1,361);   //creates a random angle at which the particle travels at
        float x=cos(angle);
        float y=sin(angle);
        float destination=0;
        if(enemyLevel_list.get(i)==1){    //determines the distance the particle will travel before coming to a stop. higher the level, the more potetial distance the particle has
          destination=random(10,80);
        }
        if(enemyLevel_list.get(i)==2){
          destination=random(10,120);
        }
        if(enemyLevel_list.get(i)==3){
          destination=random(10,170);
        }
        if(enemyLevel_list.get(i)==4){
          destination=random(10,200);
        }
        if(enemyLevel_list.get(i)==5){
          destination=random(20,400);
        }
        int zero=0;
        for(zero=0;zero<particleX_list.size();zero++){  //finds an empty slot in particle lists
          if(particleX_list.get(zero)==0){
            break;
          }
        }
        int random=int(random(0,101));         //generates the ID of the particle
        if(random>=0 && random<47){
          particleID_list.set(zero,0);    //gold
        }
        if(random>=47 && random<94){
          particleID_list.set(zero,1);   //energy
        }
        if(random>=94){
          particleID_list.set(zero,2);    //health
        }
        particleX_list.set(zero,enemyX_list.get(i));
        particleY_list.set(zero,enemyY_list.get(i));
        partRatioX_list.set(zero,x);
        partRatioY_list.set(zero,y);
        destinationX_list.set(zero,enemyX_list.get(i)+(x*destination));   //the destination of the particle
        destinationY_list.set(zero,enemyY_list.get(i)+(y*destination));
        particleState_list.set(zero,0);
      }
      int zero=0;
      for(zero=0;zero<animationX_list.size();zero++){
        if(animationX_list.get(zero)==0){
          break;
        }
      }
      enemyX_list.set(i,0);   //delete enemy
      enemyY_list.set(i,0);
      enemyLevel_list.set(i,0);
      enemyHealth_list.set(i,0);
      enemyState_list.set(i,0);
      enemyTimeCheck_list.set(i,0);
      kills++;                //add to kills
    }
  }
}

void checkHit(){             //checks if ana enemy was hit by a bullet
  for(int i=0;i<projectileX_list.size()-1;i++){       //for every projectile
    for(int e=0;e<projectileX_list.size()-1;e++){      //for every enemy
      if(projectileX_list.get(i)!=0 && enemyX_list.get(e)!=0){       //if the projectile and enemy exists
        int distProj=0;                     //determine the minimun ditance required to hit
        int distEnemy=0;
        if(projectileID_list.get(i)==0){    //0 is bullet and 1 is fireball
          distProj=4;
        }
        if(projectileID_list.get(i)==1){
          //distProj=
        }
        if(enemyLevel_list.get(e)==1){    //lvl 1-4 all has same dist
          distEnemy=24;
        }
        if(enemyLevel_list.get(e)==2){
          distEnemy=24;
        }
        if(enemyLevel_list.get(e)==3){
          distEnemy=24;
        }
        if(enemyLevel_list.get(e)==4){
          distEnemy=24;
        }
        if(enemyLevel_list.get(e)==5){  //dragon is bigger
          distEnemy=102;
        }
        if(dist(projectileX_list.get(i),projectileY_list.get(i),enemyX_list.get(e),enemyY_list.get(e))<distProj+distEnemy && enemyLevel_list.get(e)!=4){       //if touching and enemyLevel is not 4
          if(projectileMode_list.get(i)==0 || projectileMode_list.get(i)==1){                          //if mode is 0(hurts both) or mode is one (hurts only enemies) 
            float damageRandomizer=int(random(-18,18))/10;      //generates a random number between -1.8 and 1.8 and adds to damage dealt
            float updatedHealth=enemyHealth_list.get(e)-(5*damageMultiplier+damageRandomizer);   //damageMultiplier(upgrade)
            hitShot++;               //increase the number of shots that hit a target
            enemyHealth_list.set(e,updatedHealth);
            destroyProjectile(i);      //destroys the projectile
          }
        }
        if(dist(projectileX_list.get(i),projectileY_list.get(i),enemyX_list.get(e),enemyY_list.get(e))<44+distProj && enemyLevel_list.get(e)==4 && enemyShield_list.get(e)>0 && projectileMode_list.get(i)!=2){
          ratioX_list.set(i,-ratioX_list.get(i)); //makes the bullet fo the other way                       //if touching and enemy is level 4 and the shield health is over 0 and the projectile is not mode 2 () cant hurt enemies
          ratioY_list.set(i,-ratioY_list.get(i));  
          projectileX_list.add(i,10*ratioX_list.get(i));   //moves the bullet away from the shield to prevent a bug where the same bullet would register mutiple hits in during the same collision
          projectileY_list.add(i,10*ratioY_list.get(i));
          projectileMode_list.set(i,0);
          float damageRandomizer=int(random(-18,18))/10;                                          
          float updatedShield=enemyShield_list.get(e)-5*damageMultiplier+damageRandomizer;  //deals damage
          hitShot++;      //increase the number of shots that hit a target
          enemyShield_list.set(e,updatedShield);
        }
        if(dist(projectileX_list.get(i),projectileY_list.get(i),enemyX_list.get(e),enemyY_list.get(e))<distProj+distEnemy && enemyLevel_list.get(e)==4 && enemyShield_list.get(e)<=0){
          if(projectileMode_list.get(i)==0 || projectileMode_list.get(i)==1){
            float damageRandomizer=int(random(-18,18))/10;
            float updatedHealth=enemyHealth_list.get(e)-5*damageMultiplier+damageRandomizer;   //deals damage
            hitShot++;       //increase the number of shots that hit a target   
            enemyHealth_list.set(e,updatedHealth);
            destroyProjectile(i);   //destroys projectile
          }
        }
      }
    }
  }
}

void displayHealthbar(){            //displays enemy healthbars
  for(int i=0;i<enemyX_list.size();i++){
    if(enemyLevel_list.get(i)!=5 && enemyX_list.get(i)!=0){     //for every enemy that isnt level5 and exists
      float originHealth=0;                    //gets the denominator for the upcoming math
      if(enemyLevel_list.get(i)==1){
        originHealth=lvl1oHealth;
      }
      if(enemyLevel_list.get(i)==2){
        originHealth=lvl2oHealth;
      }
      if(enemyLevel_list.get(i)==3){
        originHealth=lvl3oHealth;
      }
      if(enemyLevel_list.get(i)==4){
        originHealth=lvl4oHealth;
      }
      noStroke();
      fill(255,0,0);
      rect(enemyX_list.get(i)-30,enemyY_list.get(i)+30,60,10);   //draws healthbar
      fill(0,255,0);
      float len=enemyHealth_list.get(i)/originHealth;
      rect(enemyX_list.get(i)-30,enemyY_list.get(i)+30,len*60,10);
    }
  }
}

void checkHealth(){          //checks player health and ends game if it is less or equal to 0
  if(healthPoints<=0){ 
    playerDeath++;            
    menu=true;              //sets menu to true
    dimensionID=4;          //sets dimension to 4 (stats)
    savedScore+=playerScore;   //updates scavedScore
    totalKills+=kills;         //updates totalKills
    playerKD=float(totalKills)/float(playerDeath);    //gets the new KD
    
    if(highScore<playerScore){   //sets new highscore
      highScore=playerScore;
    }
    
    for(int i=0;i<4;i++){             //updates which weapons are unlocked
      if(savedScore>=i*i*19500){
        weaponUnlock[i]=true;
      }
    }
    
    for(int i=0;i<enemyX_list.size();i++){    //clears all the lists
      clearList(i);
    }
  }
}

void movement(){                                                    //moves around entities
  if(keys[69] && ultCharge>=75 && millis()>lastGrenade+1000){     //creates a grenade
    createGrenade();
    lastGrenade=millis();
  }
  float changeX=0;
  float changeY=0;
  if(keys[87] && playerY-30>boxY-Terrain.height/2+745){
    changeY+=2*speedMultiplier;
    changeY=int(changeY);
    direction=0;          //changes the direction that the player is facing
  }
  if(keys[83] && playerY+30<boxY+Terrain.height/2-745){ 
    changeY+=-2*speedMultiplier;
    changeY=int(changeY);
    direction=2;//changes the direction that the player is facing
  }
  if(keys[65] && playerX-30>boxX-Terrain.width/2+940){
    changeX+=2*speedMultiplier;
    changeX=int(changeX);
    direction=1;//changes the direction that the player is facing
  }
  if(keys[68] && playerX+30<boxX+Terrain.width/2-940){
    changeX+=-2*speedMultiplier;
    changeX=int(changeX);
    direction=3;//changes the direction that the player is facing
  }
  if(keys[87] && keys[65]){ //UpLeft
    direction=4;//changes the direction that the player is facing
  }
  if(keys[87] && keys[68]){ //UpRight
    direction=5;//changes the direction that the player is facing
  }
  if(keys[83] && keys[65]){ //DownLeft
    direction=6;//changes the direction that the player is facing
  }
  if(keys[83] && keys[68]){ //DownRight
    direction=7;//changes the direction that the player is facing
  }
  changeX=changeX*playerSpeed;
  changeY=changeY*playerSpeed;
  boxX+=changeX;
  boxY+=changeY;
  for(int i=0;i<1000;i++){       //moves every entity
    if(grenadeX_list.get(i)!=0){
      grenadeX_list.add(i,changeX);
      grenadeY_list.add(i,changeY);
    }
    if(grenadeDestinationX_list.get(i)!=0){
      grenadeDestinationX_list.add(i,changeX);
      grenadeDestinationY_list.add(i,changeY);
    }
    if(projectileX_list.get(i)!=0){
      projectileX_list.add(i,changeX);
      projectileY_list.add(i,changeY);
    }
    if(enemyX_list.get(i)!=0){
      enemyX_list.add(i,changeX);
      enemyY_list.add(i,changeY);
    }
    if(animationX_list.get(i)!=0){
      animationX_list.add(i,changeX);
      animationY_list.add(i,changeY);
    }
    if(particleX_list.get(i)!=0){
      particleX_list.add(i,changeX);
      particleY_list.add(i,changeY);
    }
    if(destinationX_list.get(i)!=0){
      destinationX_list.add(i,changeX);
      destinationY_list.add(i,changeY);
    }
  }
}

void player(){                //draws the tank(player)
  if(direction==0){
    image(TankUp,playerX,playerY,60,60);
  }
  if(direction==1){
    image(TankLeft,playerX,playerY,60,60);
  }
  if(direction==2){
    image(TankDown,playerX,playerY,60,60);
  }
  if(direction==3){
    image(TankRight,playerX,playerY,60,60);
  }
  if(direction==4){
    image(TankUpLeft,playerX,playerY,80,80);
  }
  if(direction==5){
    image(TankUpRight,playerX,playerY,80,80);
  }
  if(direction==6){
    image(TankDownLeft,playerX,playerY,80,80);
  }
  if(direction==7){
    image(TankDownRight,playerX,playerY,80,80);
  }
}

void gunSights(){    //draws the sights of the gun
  noFill();
  stroke(255,0,0);
  strokeWeight(2);
  ellipse(mouseX,mouseY,20,20);
  line(mouseX,mouseY+15,mouseX,mouseY-15);
  line(mouseX-15,mouseY,mouseX+15,mouseY);
}

void drawBarrel(){ //draws the gun on the player
  float sx = mouseX - playerX;  //Finds the angle between the mouse and the player
  float sy = mouseY - playerY;
  float a = atan2(sy, sx);
  a=a*180/PI;
  
  translate(playerX, playerY); //translates
  rotate(radians(a+90));//Rotates the gun to face the mouse cursor
  image(Barrel,0,-13,26.3,60);
  rotate(-(radians(a+90))); //Unrotates
  translate(-playerX, -playerY); //untranslates
}

void updateBullet(){  //moves projectiles
  for(int i=0;i<magSize-1;i++){
    if(projectileMode_list.get(i)==2){    //changes bullet speed based on different conditions
      bulletSpeed=6;
    }
    if(projectileMode_list.get(i)==1 || projectileMode_list.get(i)==0){
      bulletSpeed=12;
    }
    if(projectileID_list.get(i)==1){   //fireballs move at half-speed
      bulletSpeed=6;
    }
    float updatedX=projectileX_list.get(i)+(bulletSpeed*ratioX_list.get(i));    //movement happens here
    float updatedY=projectileY_list.get(i)+(bulletSpeed*ratioY_list.get(i));
    projectileX_list.set(i,updatedX);
    projectileY_list.set(i,updatedY);
  }
}

void drawProjectile(){    //draws bullet image over projectileID_list.get()==0
  strokeWeight(5);
  for(int i=0;i<magSize-1;i++){
    stroke(255,0,0);
    fill(255,0,0);
    if(projectileX_list.get(i)!=0.0 && projectileY_list.get(i)!=0.0 && projectileID_list.get(i)==0){  //if the projectile exists and it is a bullet
      image(Bullet,projectileX_list.get(i),projectileY_list.get(i));
    }
  }
}

void deleteProjectile(){ //deletes any projectiles that leave the background image
  for(int i=0;i<magSize-1;i++){
    if(projectileX_list.get(i)<boxX-Terrain.width/2 || projectileX_list.get(i)>boxX+Terrain.width/2 || projectileY_list.get(i)<boxY-Terrain.height/2 || projectileY_list.get(i)>boxY+Terrain.height/2){  //if i leaves the background image
      destroyProjectile(i);  //destroys projectile
    }
  }
}

void createEnemy(){ //creates an enemy every creationInterval
  if(millis()>lastCreated+creationInterval){
    int quad=int(random(1,5)); //decides what direction the enemy will be coming from
    float enemyX=0;
    float enemyY=0;
    if(quad==1){
      enemyX=int(random(-50,width+50)); //top
      enemyY=int(random(-50,-100));
    }
    if(quad==2){
      enemyX=int(random(width+50,width+100)); //bottom
      enemyY=int(random(-50,height+50));
    }
    if(quad==3){
      enemyX=int(random(-50,width+50));     //right
      enemyY=int(random(height-50,height-100));
    }
    if(quad==4){
      enemyX=int(random(-50,-100));     //left
      enemyY=int(random(-50,height+50));
    }
    int enemyL=int(random(0,1001));  //randomizes what enemy level enemy is spawned
    int health=0;
    int shieldHealth=0;
    int zero=0;
    for(zero=0;zero<projectileX_list.size();zero++){ //finds an empty slot
      if(enemyX_list.get(zero)==0){
        break;
      }
    }
    int lvl=0;
    if(enemyL>=0 && enemyL<300){            //30% chance
      health=lvl1oHealth;
      lvl=1;
      enemyTimeCheck_list.set(zero,millis());
    }
    if(enemyL>=300 && enemyL<500){           //20% chance
      health=lvl2oHealth;
      lvl=2;
    }
    if(enemyL>=500 && enemyL<800){        //30% chance
      health=lvl3oHealth;
      lvl=3;
    }
    if(enemyL>=800 && enemyL<950){        //15% chance
      health=lvl4oHealth;
      shieldHealth=40;
      lvl=4;
    }
    if(enemyL>=950 && enemyL<1000){         //5% chance
      int check=0;
      for(int i=0;i<projectileX_list.size();i++){  //only spawns if there is no other dragon
        if(enemyLevel_list.get(i)==5){
          check=1;
        }
      }
      if(check==0){
        int zeroA=0;
        for(zeroA=0;zeroA<projectileX_list.size();zeroA++){  //finds emtpy animation slot
          if(animationX_list.get(zeroA)==0){
            break;
          }
        }
        animationX_list.set(zeroA,enemyX);
        animationX_list.set(zeroA,enemyY);
        animationID_list.set(zeroA,2);
        animationInfo_list.set(zeroA,zero);   //adds the animation
        animationFrame_list.set(zeroA,0);
        health=250;
        lvl=5;
      }
    }
    enemyX_list.set(zero,enemyX);    //adds enemy info to the empty slot
    enemyY_list.set(zero,enemyY);
    enemyLevel_list.set(zero,lvl);
    enemyHealth_list.set(zero,health);
    enemyShield_list.set(zero,shieldHealth);
    enemyState_list.set(zero,0);
    enemyTimeCheck_list.set(zero,millis());
    lastCreated=millis();
  }
}

void updateEnemy(){                //causes enemies to function
  for(int i=0;i<magSize-1;i++){
    if(enemyX_list.get(i)!=0){  //if enemy exists
      if(enemyState_list.get(i)==0){   //if state==0 meaning enemy is moving
        float xpixel=playerX-enemyX_list.get(i);
        float ypixel=playerY-enemyY_list.get(i); //move towards the player
        float atan=atan2(ypixel,xpixel);
        float xratio=cos(atan);
        float yratio=sin(atan);
        float speedMultiplier=0;
        if(enemyLevel_list.get(i)==1){   //adjusts speedMultiplier based on the level of the enemy
          speedMultiplier=1;
        }
        if(enemyLevel_list.get(i)==2){
          speedMultiplier=0.5;
        }
        if(enemyLevel_list.get(i)==3){
          speedMultiplier=3;
        }
        if(enemyLevel_list.get(i)==4){
          speedMultiplier=1;
        }
        if(enemyLevel_list.get(i)==5){
          speedMultiplier=0.75;
        }
        float updatedX=enemyX_list.get(i)+(speedMultiplier*enemySpeed*xratio);
        float updatedY=enemyY_list.get(i)+(speedMultiplier*enemySpeed*yratio);
        enemyX_list.set(i,updatedX);
        enemyY_list.set(i,updatedY);
        if(enemyLevel_list.get(i)==1 && dist(playerX,playerY,enemyX_list.get(i),enemyY_list.get(i))<800 && enemyX_list.get(i)>20 && enemyX_list.get(i)<width-20 && enemyY_list.get(i)>20 && enemyY_list.get(i)<height-20){
          enemyState_list.set(i,1);                                                                            //if the enemy is level 1 and the dist between player and enemy is less than 800 state is switched to 1
          enemyTimeCheck_list.set(i,millis());//starts timer
        }
        if(enemyLevel_list.get(i)==5 && dist(playerX,playerY,enemyX_list.get(i),enemyY_list.get(i))<500){     //if enemy is level 5 and the dist is less than 500 state is set to 2
          enemyState_list.set(i,2);
          enemyTimeCheck_list.set(i,millis());//starts timer
        }
      }
      if(enemyState_list.get(i)==1){    //level 1 state 1
        if(millis()>enemyTimeCheck_list.get(i)+enemyFireInterval){    //if enemyFireInterval time has passed since entering state 1
          if(dist(playerX,playerY,enemyX_list.get(i),enemyY_list.get(i))<800){  //if the dist was maintained shoot bullet at player
            float xpixel=playerX-enemyX_list.get(i);
            float ypixel=playerY-enemyY_list.get(i);
            float atan=atan2(ypixel,xpixel);
            float xratio=cos(atan);
            float yratio=sin(atan);
            int zero=0;
            for(zero=0;zero<projectileX_list.size();zero++){
              if(projectileX_list.get(zero)==0){
                break;
              }
            }
            projectileX_list.set(zero,enemyX_list.get(i));
            projectileY_list.set(zero,enemyY_list.get(i));
            ratioX_list.set(zero,xratio);
            ratioY_list.set(zero,yratio);
            projectileID_list.set(zero,0);
            projectileMode_list.set(zero,2);
          }
          else{
            enemyState_list.set(i,0);          //if dist wasnt maintained start moving again
          }
          enemyTimeCheck_list.set(i,millis()); //resets the enemyTimeCheck
        }
      }
      if(enemyLevel_list.get(i)==2){     //level 2
        if(millis()>enemyTimeCheck_list.get(i)+lvl2FireInterval && dist(enemyX_list.get(i),enemyY_list.get(i),playerX,playerY)<400){   //if lvl2FireINterval has passed and the dist is less than 400 shoot at player
          for(int e=0;e<4;e++){
            float xpixel=playerX-enemyX_list.get(i);
            float ypixel=playerY-enemyY_list.get(i);
            float bulletAngle=atan2(ypixel,xpixel);
            bulletAngle+=int(random(-10,11))*PI/180;
            float xratio=cos(bulletAngle);
            float yratio=sin(bulletAngle);
            int zero=0;
            for(zero=0;zero<projectileX_list.size();zero++){
              if(projectileX_list.get(zero)==0){
                break;
              }
            }
            projectileX_list.set(zero,enemyX_list.get(i));
            projectileY_list.set(zero,enemyY_list.get(i));
            ratioX_list.set(zero,xratio);
            ratioY_list.set(zero,yratio);
            projectileMode_list.set(zero,2);
          }
          enemyTimeCheck_list.set(i,millis());//reset timer
        }
      }
      if(enemyState_list.get(i)==2){  //level 5 state 2
        if(millis()>enemyTimeCheck_list.get(i)+dragonMoveTime && dist(playerX,playerY,enemyX_list.get(i),enemyY_list.get(i))>500){  //if dragonMoveTime has passed and the dist is greater than 500 start moving again
          enemyState_list.set(i,0);
          enemyTimeCheck_list.set(i,millis()); //reset timer
        }
        if(millis()>enemyTimeCheck_list.get(i)+dragonMoveTime && dist(playerX,playerY,enemyX_list.get(i),enemyY_list.get(i))<500){ //if dragonMoveTime has passed and the dist is less than 500 shoot fireball at player
          float xpixel=playerX-enemyX_list.get(i);
          float ypixel=playerY-enemyY_list.get(i);
          float atan=atan2(ypixel,xpixel);
          float xratio=cos(atan);
          float yratio=sin(atan);
          int zero=0;
          for(zero=0;zero<projectileX_list.size();zero++){
            if(projectileX_list.get(zero)==0){
              break;
            }
          }
          projectileX_list.set(zero,enemyX_list.get(i)+(xratio*120));
          projectileY_list.set(zero,enemyY_list.get(i)+(yratio*120));
          ratioX_list.set(zero,xratio);
          ratioY_list.set(zero,yratio);
          projectileMode_list.set(zero,2);
          projectileID_list.set(zero,1);
          
          int z=0;
          for(z=0;z<projectileX_list.size();z++){
            if(animationX_list.get(z)==0){
              break;
            }
          }
          atan=atan*180/PI;
          animationX_list.set(z,projectileX_list.get(zero));  //connect a fireball to the projectile
          animationY_list.set(z,projectileY_list.get(zero));
          animationFrame_list.set(z,0);
          animationID_list.set(z,3);
          animationInfo_list.set(z,atan);
          animationInfo1_list.set(z,zero);
          animationState_list.set(z,0);
          
          enemyTimeCheck_list.set(i,millis());  //reset timer
        }
      }
    }
  }
}

void drawEnemy(){   //draws levels 1-4 enemies
  strokeWeight(5);
  for(int i=0;i<magSize-1;i++){
    if(enemyX_list.get(i)!=0){
      if(enemyLevel_list.get(i)==1){
        stroke(0,0,255);
        fill(0,0,255);
        ellipse(enemyX_list.get(i),enemyY_list.get(i),40,40);
      }
      if(enemyLevel_list.get(i)==2){
        stroke(0,255,0);
        fill(0,255,0);
        ellipse(enemyX_list.get(i),enemyY_list.get(i),40,40);

      }
      if(enemyLevel_list.get(i)==3){
        stroke(255,0,0);
        fill(255,0,0);
        ellipse(enemyX_list.get(i),enemyY_list.get(i),40,40);
      }
      if(enemyLevel_list.get(i)==4){
        stroke(66,244,152);
        fill(66,244,152);
        ellipse(enemyX_list.get(i),enemyY_list.get(i),40,40);        
      }
    }
  }
}

void checkEnPlCollision(){      //checks if enemy has collided with player
  for(int i=0;i<magSize-1;i++){
    if(enemyX_list.get(i)!=0){
      int dist=0;
      if(enemyLevel_list.get(i)==1){  //determines the dist required to be touching
        dist=50;
      }
      if(enemyLevel_list.get(i)==2){
        dist=50;
      }
      if(enemyLevel_list.get(i)==3){
        dist=50;
      }
      if(enemyLevel_list.get(i)==4){
        dist=50;
      }
      if(enemyLevel_list.get(i)==5){    
        dist=132;
      }
      if(dist(enemyX_list.get(i),enemyY_list.get(i),playerX,playerY)<dist){ //if touching
        int zero=0;
        for(zero=0;zero<projectileX_list.size();zero++){
          if(enemyX_list.get(zero)==0){
            break;
          }
        }
        animationX_list.set(zero,enemyX_list.get(i));   //create explosion animation
        animationY_list.set(zero,enemyY_list.get(i));
        animationFrame_list.set(zero,0);
        animationID_list.set(zero,0);
        enemyX_list.set(i,0);
        enemyY_list.set(i,0);
        healthPoints-=15*resistanceMultiplier;  //subtract from healthPoint*resistance(upgrade)
      }
    }
  }
}

void shield(){ //Makes a shield
  for(int i=0;i<magSize-1;i++){
    float slopeX=enemyX_list.get(i)-playerX;
    float slopeY=enemyY_list.get(i)-playerY;
    float shieldA = atan2(slopeY, slopeX);
    float shieldAngle=shieldA*(180/PI); //Finds the angle between the player and the enemy
    stroke(0);
    noFill();
    stroke(0,191,255);
    strokeWeight(5);
    if(enemyX_list.get(i)!=0){
      if(enemyLevel_list.get(i)==4 && enemyShield_list.get(i)>0){ //If it is an level 4 enemy
        arc(enemyX_list.get(i),enemyY_list.get(i),70,70,radians(shieldAngle+120),radians(shieldAngle+240)); //Draws an arc in relation to the angle of which the shield is facing
      }
    }
  }
}

void drawParticle(){  //draws the different types of particles
  for(int i=0;i<particleX_list.size()-1;i++){
    if(particleX_list.get(i)!=0){
      noStroke();
      if(particleID_list.get(i)==0){    //gold
        fill(255,165,0);
        ellipse(particleX_list.get(i),particleY_list.get(i),10,10);
      }
      if(particleID_list.get(i)==1){   //energy
        fill(144,0,255);
        ellipse(particleX_list.get(i),particleY_list.get(i),10,10);
      }
      if(particleID_list.get(i)==2){   //heart/health
        image(heart,particleX_list.get(i),particleY_list.get(i));
      }
    }
  }
}

void updateParticle(){  //moves particles
  for(int i=0;i<particleX_list.size()-1;i++){
    if(particleX_list.get(i)!=0){
      if(particleState_list.get(i)==0){    //if particles is traveling to its detination
        float updatedX=particleX_list.get(i)+(dist(particleX_list.get(i),particleY_list.get(i),destinationX_list.get(i),destinationY_list.get(i))/5*partRatioX_list.get(i)); //moves at decreasing speed
        float updatedY=particleY_list.get(i)+(dist(particleX_list.get(i),particleY_list.get(i),destinationX_list.get(i),destinationY_list.get(i))/5*partRatioY_list.get(i));
        if(dist(updatedX,updatedY,destinationX_list.get(i),destinationY_list.get(i))<1){    //if the paritcle comes within a certain distance of its destination then it switches to state 2
          particleState_list.set(i,1);
        }
        particleX_list.set(i,updatedX);
        particleY_list.set(i,updatedY);
      }
      if(particleState_list.get(i)==1){ //if particle has arrived at its destintion
        if(dist(particleX_list.get(i),particleY_list.get(i),playerX,playerY)<300){   //if the dist between player and particle is less than 300
          float xpixel=playerX-particleX_list.get(i);
          float ypixel=playerY-particleY_list.get(i);
          float atan=atan2(ypixel,xpixel);
          float xratio=cos(atan);
          float yratio=sin(atan);
          particleX_list.add(i,dist(particleX_list.get(i),particleY_list.get(i),playerX,playerY)/15*xratio); //moves towards player at decreasing speed
          particleY_list.add(i,dist(particleX_list.get(i),particleY_list.get(i),playerX,playerY)/15*yratio);
        }
      }
    }
  }
}

void deleteParticle(){   //destroys particles
  for(int i=0;i<particleX_list.size()-1;i++){
    int dist=0;
    if(particleID_list.get(i)==0){  //particle size depends on particle type
      dist=35;
    }
    if(particleID_list.get(i)==1){
      dist=35;
    }
    if(particleID_list.get(i)==2){
      dist=40;
    }
    if(particleY_list.get(i)<boxY-Terrain.height/2+745 || particleY_list.get(i)>boxY+Terrain.height/2-745 || particleX_list.get(i)<boxX-Terrain.width/2+940 || particleX_list.get(i)>boxX+Terrain.width/2-940){  //if particle is not on land then it gets deleted
      particleX_list.set(i,0);
      particleY_list.set(i,0);
      partRatioX_list.set(i,0);
      partRatioY_list.set(i,0);
      destinationX_list.set(i,0);
      destinationY_list.set(i,0);
      particleState_list.set(i,0);
    }
    if(dist(playerX,playerY,particleX_list.get(i),particleY_list.get(i))<dist){  //particle is touching player
      playerScore+=int(random(50,150));
      if(particleID_list.get(i)==0){    //adds gold
        gold++;
      }
      if(particleID_list.get(i)==1){   //adds energy/ultcharge
        if(ultCharge-2<=98){
          ultCharge+=2;
        }
      }
      if(particleID_list.get(i)==2){    //adds health
        if(healthPoints+5<=100){
          healthPoints+=5;
        }
      }
      particleX_list.set(i,0);    //deletes particle
      particleY_list.set(i,0);
      partRatioX_list.set(i,0);
      partRatioY_list.set(i,0);
      destinationX_list.set(i,0);
      destinationY_list.set(i,0);
      particleState_list.set(i,0);
    }
  }
}

void createGrenade(){     //creates grenade when called
  ultCharge-=75;   //takes away 75% of charge
  float xpixel=mouseX-playerX;
  float ypixel=mouseY-playerY;
  float atan=atan2(ypixel,xpixel);
  float xratio=cos(atan);
  float yratio=sin(atan);
  int zero=0;
  for(zero=0;zero<grenadeX_list.size();zero++){
    if(grenadeX_list.get(zero)==0){
      break;
    }
  }
  grenadeX_list.set(zero,playerX);       //adds grenade info to empty spot
  grenadeY_list.set(zero,playerY);
  grenadeState_list.set(zero,0);
  grenadeDestinationX_list.set(zero,mouseX);
  grenadeDestinationY_list.set(zero,mouseY);
  grenadeRatioX_list.set(zero,xratio);
  grenadeRatioY_list.set(zero,yratio);
}

void updateGrenade(){    //moves grenade
  for(int i=0;i<grenadeX_list.size();i++){
    if(grenadeX_list.get(i)!=0){  //if it exists
      if(grenadeState_list.get(i)==0){   //if grenade is traveling to destination
        grenadeX_list.add(i,dist(grenadeX_list.get(i),grenadeY_list.get(i),grenadeDestinationX_list.get(i),grenadeDestinationY_list.get(i))/10*grenadeRatioX_list.get(i)); //move at decreasing speed
        grenadeY_list.add(i,dist(grenadeX_list.get(i),grenadeY_list.get(i),grenadeDestinationX_list.get(i),grenadeDestinationY_list.get(i))/10*grenadeRatioY_list.get(i));
        image(Grenade,grenadeX_list.get(i),grenadeY_list.get(i));//draws grenade image
        if(dist(grenadeX_list.get(i),grenadeY_list.get(i),grenadeDestinationX_list.get(i),grenadeDestinationY_list.get(i))<40){ //if grenade gets near destination
          for(int e=0;e<enemyX_list.size();e++){
            if(enemyX_list.get(e)!=0){ //for every enemy within 120 pixels it deals 80 damage
              if(dist(enemyX_list.get(e),enemyY_list.get(e),grenadeX_list.get(i),grenadeY_list.get(i))<120){
                enemyHealth_list.add(e,-80);
              }
            }
          }
          grenadeState_list.set(i,1); //state is set to 1
        }
      }
      if(grenadeState_list.get(i)==1){   //state 1 
        int zero=0;
        for(zero=0;zero<animationX_list.size();zero++){
          if(animationX_list.get(zero)==0){
            break;
          }
        }
        animationX_list.set(zero,grenadeX_list.get(i));  //creates grenade animation
        animationY_list.set(zero,grenadeY_list.get(i));
        animationID_list.set(zero,1);
        animationFrame_list.set(zero,0);
        grenadeState_list.set(i,2);
      }
    }
  }
}

void updateAnimation(){   //updates animations
  for(int i=0;i<animationX_list.size();i++){
    if(animationX_list.get(i)!=0){
      if(animationID_list.get(i)==0){    //if the naimation ID is 0 (death explosion) 
        if(int(animationFrame_list.get(i))<deathExplosionImages.length-1){  //moves animation
          animationFrame_list.add(i,0.2);
        }
        else{   //deletes animation if frames finish
          animationX_list.set(i,0);
          animationY_list.set(i,0);
          animationFrame_list.set(i,0);
          animationID_list.set(i,0);
          animationInfo_list.set(i,0);
          animationInfo1_list.set(i,0);
          animationState_list.set(i,0);
        }
      }
      if(animationID_list.get(i)==1){    //if the animation is 1 (grenade explosion)
        if(int(animationFrame_list.get(i))<grenadeExplosionImages.length-1){  //moves the animation
          animationFrame_list.add(i,0.1);
        }
        else{
          animationX_list.set(i,0);   //deletes animation if frames finish
          animationY_list.set(i,0);
          animationFrame_list.set(i,0);
          animationID_list.set(i,0);
          animationInfo_list.set(i,0);
          animationInfo1_list.set(i,0);
          animationState_list.set(i,0);
        }
      }
      if(animationID_list.get(i)==2){   //if the aniamtion is 2 (dragon)
        if(enemyX_list.get(int(animationInfo_list.get(i)))!=0 && animationState_list.get(i)!=1){  //if the enemy that animation is attached to exists and the state of the animation is not 1
          animationX_list.set(i,enemyX_list.get(int(animationInfo_list.get(i))));   //sets new x and y as the enemy x and y
          animationY_list.set(i,enemyY_list.get(int(animationInfo_list.get(i))));
          animationFrame_list.add(i,0.1);  //moves animation
          if(animationState_list.get(i)==0){
            if(animationFrame_list.get(i)>dragonMaxImages.length){ //loops animation
              animationFrame_list.set(i,0);
            }
          }
        }
        else{
          if(animationState_list.get(i)!=1){  // if the animation is not in state 1 (dies)
            float x=playerX-animationX_list.get(i);
            float y=playerY-animationY_list.get(i);
            float a=atan2(y,x);
            a=a*180/PI;
            animationInfo1_list.set(i,a);  //updates rotation
            animationState_list.set(i,1);  //changes state to dying animation
            animationFrame_list.set(i,0);  //resets frames
          }
        }
        if(animationState_list.get(i)==1){  //state 1 is dying animation
          animationFrame_list.add(i,0.1);  //add to animation
          if(animationFrame_list.get(i)>dragonDeathImages.length){   //deletes animation if it finishes frames
            animationX_list.set(i,0);
            animationY_list.set(i,0);
            animationFrame_list.set(i,0);
            animationID_list.set(i,0);
            animationInfo_list.set(i,0);
            animationInfo1_list.set(i,0);
            animationState_list.set(i,0);
          }
        }
      }
      if(animationID_list.get(i)==3){   //fireball animation
        if(animationFrame_list.get(i)>fireBallImages.length-1){ //loops animation
          animationFrame_list.set(i,0);
        }
        else{
          if(projectileX_list.get(int(animationInfo1_list.get(i)))!=0){  //if projectile that its connected to exists
            animationX_list.set(i,projectileX_list.get(int(animationInfo1_list.get(i)))); //updates x and y with connected entity x and y
            animationY_list.set(i,projectileY_list.get(int(animationInfo1_list.get(i))));
            animationFrame_list.add(i,0.2); //adds to frame
          }
          else{
            animationX_list.set(i,0);  //deletes animation if the entity no longer has an x (equals 0/deleted)
            animationY_list.set(i,0);
            animationFrame_list.set(i,0);
            animationID_list.set(i,0);
            animationInfo_list.set(i,0);
            animationInfo1_list.set(i,0);
            animationState_list.set(i,0);
          }
        }
      }
    }
  }
}

void drawAnimation(){   //draws images for the animations
  for(int i=0;i<animationX_list.size();i++){
    if(animationX_list.get(i)!=0){ //if exists
      if(animationID_list.get(i)==0){ //if death explosion
        image(deathExplosionImages[int(animationFrame_list.get(i))],animationX_list.get(i),animationY_list.get(i));
      }
      if(animationID_list.get(i)==1){  //if grenade explosion
        image(grenadeExplosionImages[int(animationFrame_list.get(i))],animationX_list.get(i),animationY_list.get(i),200,200);
      }
      if(animationID_list.get(i)==2){   //if dragon
        if(animationState_list.get(i)==0){  //if state=0 meaning alive
          float x=playerX-animationX_list.get(i);
          float y=playerY-animationY_list.get(i);
          float a=atan2(y,x);
          a=a*180/PI;
          translate(animationX_list.get(i),animationY_list.get(i));    //translating
          rotate(radians(a+90));//rotating the image
          if(enemyHealth_list.get(int(animationInfo_list.get(i)))<=125){
            image(dragonHurtImages[int(animationFrame_list.get(i))],0,0,256,256);    //drawing if over 50% health
          }
          else{
            image(dragonMaxImages[int(animationFrame_list.get(i))],0,0,256,256);     //drawing if under 50% health
          }
          rotate(-(radians(a+90)));//unrotating the image
          translate(-animationX_list.get(i),-animationY_list.get(i));//untranslating
          fill(255,0,0);
          rect(animationX_list.get(i)-100,animationY_list.get(i)+80,200,20);  //healthbar
          fill(0,255,0);
          float leng=enemyHealth_list.get(int(animationInfo_list.get(i)))/250;
          rect(animationX_list.get(i)-100,animationY_list.get(i)+80,leng*200,20);
        }
        if(animationState_list.get(i)==1){                                  //if the state is 1 (dead)
          translate(animationX_list.get(i),animationY_list.get(i));         //translate
          rotate(radians(animationInfo1_list.get(i)+90));                   //rotate
          image(dragonDeathImages[int(animationFrame_list.get(i))],0,0,256,256);
          rotate(-(radians(animationInfo1_list.get(i)+90)));                //unrotate
          translate(-animationX_list.get(i),-animationY_list.get(i));       //untranslate
        }
      }
      if(animationID_list.get(i)==3){       //if fire ball
        translate(animationX_list.get(i),animationY_list.get(i));         //translate
        rotate(radians(animationInfo_list.get(i)));                       //rotate
        image(fireBallImages[int(animationFrame_list.get(i))],0,0);
        rotate(-(radians(animationInfo_list.get(i))));                    //unrotate
        translate(-animationX_list.get(i),-animationY_list.get(i));       //untranslate
        noFill(); 
      }
    }
  }
}

void shop(){
  if(keys[66] && millis()>lastShopOpen+shopInterval){  //if the shop activation key was pressed
    if(shopOn==false){     //if shop was not open, then it is set to be open
      shopOn=true;
    }
    else if(shopOn==true){  //if shop was open, then it is set to not be open
      shopOn=false;
    }
    lastShopOpen=millis();
  }
  
  if(shopOn){      //sets dimension to 3 (where shop is displayed)
    dimensionID=3;
    pause=true;    //pauses game
  }
  else{
    pause=false;  //unpauses game
    dimensionID=0;  //sets dimension to 0
  }
  if(dimensionID==3){  //draws the shop
    tint(255,255,255,150);
    image(shopBackground,width/2,height/2);
    tint(255);
    fill(255,191,0);
    textSize(50);
    text("GOLD  "+gold,width/2,50);
    fill(255);
    textSize(40);
    
    fill(255);
    textSize(40);
    image(itemFrameImage,width/2,height/2-250);
    text("Damage "+damageLevel,width/2,height/2-290);
    text("COST "+damageLevel*damageCost,width/2,height/2-260);
    text("Multiplier  "+damageMultiplier,width/2,height/2-230);
    
    fill(255);
    textSize(40);
    image(itemFrameImage,width/2-400,height/2-250);
    text("Speed "+speedLevel,width/2-400,height/2-290);
    text("COST "+speedLevel*speedCost,width/2-400,height/2-260);
    text("Multiplier  "+speedMultiplier,width/2-400,height/2-230);
    
    fill(255);
    textSize(40);
    image(itemFrameImage,width/2+400,height/2-250);
    text("Fire Rate"+bulletSpeedLevel,width/2+400,height/2-290);
    text("COST "+bulletSpeedLevel*bulletSpeedCost,width/2+400,height/2-260);
    text("Multiplier  "+bulletSpeedMultiplier,width/2+400,height/2-230);
    if(bulletSpeedLevel>=maxLevel){  //limits levels
      fill(255,0,0);
      textSize(50);
      text("MAX",width/2+400,height/2-250);
    }
    
    fill(255);
    textSize(40);
    image(itemFrameImage,width/2,height/2+250);
    text("Resistance "+resistanceLevel,width/2,height/2+230);
    text("COST "+resistanceLevel*resistanceCost,width/2,height/2+260);
    text("Multiplier  "+resistanceMultiplier,width/2,height/2+290);
    if(resistanceLevel>=maxLevel){//limits levels
      fill(255,0,0);
      textSize(50);
      text("MAX",width/2,height/2+250);
    }
    
    fill(255);
    textSize(40);
    image(itemFrameImage,width/2-400,height/2+250);
    text("Bloom "+bloomLevel,width/2-400,height/2+230);
    text("COST "+bloomLevel*bloomCost,width/2-400,height/2+260);
    text("Multiplier  "+bloomMultiplier,width/2-400,height/2+290);
    if(bloomLevel>=maxLevel){//limits levels
      fill(255,0,0);
      textSize(50);
      text("MAX",width/2-400,height/2+250);
    }
    
    fill(255);
    textSize(40);
    image(itemFrameImage,width/2+400,height/2+250);
    text("Reload"+reloadLevel,width/2+400,height/2+230);
    text("COST "+reloadLevel*reloadCost,width/2+400,height/2+260);
    text("Multiplier  "+reloadMultiplier,width/2+400,height/2+290);
    if(reloadLevel>=maxLevel){//limits levels
      fill(255,0,0);
      textSize(50);
      text("MAX",width/2+400,height/2+250);
    }
  }
}

void stats(){  //the stats menu
   textSize(80);
   text("You Died!",width/2,120);
   textSize(40);
   fill(0,255,0);
   text("High Score: "+highScore,width/2,height/2-300);
   text("Score: "+playerScore,width/2,height/2-220);
   text("Eliminations: "+kills,width/2,height/2-140);
   text("Total Eliminations: "+totalKills,width/2,height/2-60);
   text("Total Death: "+playerDeath,width/2,height/2+20);
   text("K/D: "+playerKD,width/2,height/2+100);
   text("Accuracy: "+round((float(hitShot)/roundsShot)*100)+"%",width/2,height/2+180);
}

void destroyProjectile(int i){  //function to easily destroy particles (organization)
  projectileX_list.set(i,0);
  projectileY_list.set(i,0);
  ratioX_list.set(i,0);
  ratioY_list.set(i,0);
  projectileID_list.set(i,0);
  projectileMode_list.set(i,0);
}

void keyPressed(){
  keys[keyCode]=true;
}

void keyReleased(){
  keys[keyCode]=false;
}

void mousePressed(){
  buttonInteraction();
}
