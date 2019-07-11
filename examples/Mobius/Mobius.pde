/**
 * Mobius Example.
 *
 * Connect to a running Minecraft game and draw a Mobius strip.
 * https://en.wikipedia.org/wiki/Mobius_strip
 *
 * Original example by Alexander Pruss. MIT License.
 */

import minecraft.*;

Minecraft mc;

void setup() {
  mc = new Minecraft();
  PVector playerPos = mc.player.getPosition();
  int scale = 15;
  Block b = new Block("STONE");
  int m = 0;
  drawSurface(-1, 1, 10*scale, 0, 2*PI, 30*scale, playerPos.x, playerPos.y+scale, playerPos.z, scale, scale, scale, b, m);
}

void drawSurface(float a0, float a1, int asteps, float b0, float b1, int bsteps, float ox, float oy, float oz, int scalex, int scaley, int scalez, Block mcblock, int mcmeta) {
  for (int i = 0; i < asteps; i++) {
     float a = (a0 * (asteps-1-i) + a1 * i) / asteps;
     for (int j = 0; j < bsteps; j++) {
        float b = (b0 * (bsteps-1-j) + b1 * j) / bsteps;
        float x = (3 + a * cos(b/2)) * cos(b);
        float y = a * sin(b/2);
        float z = (3 + a * cos(b/2)) * sin(b);
        mc.setBlock(ox+x * scalex, oy+y * scaley, oz+z * scalez, mcblock, mcmeta);
     }
  }
  
  mc.postToChat("Strip drawn.");
}
