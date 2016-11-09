//Mic_input visulization
//Mengni Feng


import processing.sound.*;

AudioIn input;
Amplitude analyzer;
SoundFile song;

FFT fft;

void setup() {
  size(500, 300);
  input = new AudioIn(this, 0);
  song = new SoundFile(this, "Merry-Go-Round.mp3");
  song.loop();
  input.start();
  analyzer = new Amplitude(this);
  fft = new FFT(this, 64);
  fft.input(input);
}

void draw() {

  fft.analyze();
  float w = width / (fft.size()/2);
  

  background(0);
  for (int i = 0; i < fft.size()/2; i++) {
    stroke(0);
    float x = i * w;
    float h = map(fft.spectrum[i], 0, 1, 0, height*50);
   
    fill(random(i*20 % 255),0,random(i*20 % 255));
    rect(x+2, height - h - 2, w-2, h);
  
  }
}