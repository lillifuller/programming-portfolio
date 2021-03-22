// SpaceGame December 2020
// by Lilli Fuller

SpaceShip spaceship;
EnemyShip [] enemyship = new EnemyShip[2];
Timer timer, pUpTimer;
ArrayList<Laser> lasers;
ArrayList<Asteroid> asteroids;
ArrayList<Star> stars;
ArrayList<PowerUp> pUps;
int score = 0;
int level = 1;
int pass;
int laserCount;
boolean play;

void setup() {
  pass = 0;
  laserCount = 0;
  play = false;
  size(500, 500);
  spaceship = new SpaceShip(#868FC6);
  for (int i = 0; i < enemyship.length; i++) {
    enemyship[i] = new EnemyShip(#21D616);
  }
  lasers = new ArrayList();
  asteroids = new ArrayList();
  stars = new ArrayList();
  pUps = new ArrayList();
  timer = new Timer(int(random(1000, 3000)));
  timer.start();
  pUpTimer = new Timer(int(random(10000, 15000)));
}

void draw() {
  noCursor();
  if (!play) {
    startScreen();
  } else {
    background(10);
    stars.add(new Star(int(random(width)), -50, color(255)));
    for (int i = 0; i < stars.size(); i++) {
      Star star = stars.get(i);
      star.display();
      star.move();
      if (star.reachedBottom()) {
        stars.remove(star);
      }
    }

    if (timer.isFinished()) {
      asteroids.add(new Asteroid(int(random(width)), -50));
      timer.start();
    }

    for (int i = 0; i < asteroids.size(); i++) {
      Asteroid asteroid = asteroids.get(i);
      asteroid.display();
      asteroid.move();
      if (spaceship.asteroidIntersect(asteroid)) {
        spaceship.health -= asteroid.health;
        asteroids.remove(asteroid);
        score -= asteroid.health;
      }
      if (asteroid.reachedBottom()) {
        asteroids.remove(asteroid);
        pass++;
      }
    }
    for (int i = 0; i < lasers.size(); i++) {
      Laser laser = lasers.get(i);
      laser.display();
      laser.fire();
      for (int j = 0; j < asteroids.size(); j++) {
        Asteroid asteroid = asteroids.get(j);
        if (asteroid.laserIntersect(laser)) {
          asteroid.health -= 10;
          lasers.remove(laser);
          if (asteroid.health < 1) {
            asteroids.remove(asteroid);
            score += asteroid.healthStart;
          }
        }
      }
      if (laser.reachedTop()) {
        lasers.remove(laser);
      }
    }
    if (pUpTimer.isFinished()) {
      pUps.add(new PowerUp(int(random(width)), -20));
      pUpTimer.start();
    }

    for (int i = 0; i < pUps.size(); i++) {
      PowerUp pUp = pUps.get(i);
      pUp.display();
      pUp.move();
      if (spaceship.pUpIntersect(pUp)) {
        pUps.remove(pUp);
        lasers.add(new Laser(color(255, 0, 0), spaceship.x-14, spaceship.y));
        laserCount++;
      }
      if (pUp.reachedBottom()) {
        pUps.remove(pUp);
      }
    }

    infoPanel();
    spaceship.display(mouseX, mouseY);
    if (spaceship.health<1 || pass>10) {
      play = false;
      gameOver();
    }
  }
}

void mousePressed() {
  lasers.add(new Laser(color(255, 0, 0), spaceship.x+15, spaceship.y));
  laserCount++;
  //lasers.add(new Laser(color(255, 0, 0), spaceship.x-14, spaceship.y));
}

void startScreen() {
  background(10);
  textAlign(CENTER);
  textSize(17);
  text("Welcome to Space Game!", width/2, height/2);
  textSize(13);
  text("Click anywhere to start...", width/2, height/2+30);
  if (mousePressed) {
    play = true;
  }
}

void gameOver() {
  background(10);
  textAlign(CENTER);
  textSize(17);
  text("Game Over!", width/2, height/2);
  textSize(13);
  text("Final score: " + score, width/2, height/2+30);
  noLoop();
}

void infoPanel() {
  fill(150, 150);
  rectMode(CORNER);
  textAlign(LEFT);
  rect(0, height-50, width, 50);
  text("Health: " + spaceship.health, 20, height-20);
  text("Lives: " + spaceship.lives, 120, height-20);
  text("Score: " + score, 200, height-20);
  text("Pass: " + pass, 280, height-20);
}
