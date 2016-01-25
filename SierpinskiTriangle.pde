public int moveLen;
public int multi;

public void setup()
{

 size(800, 800);
 background(50);
 moveLen = 800;
 multi = 1;
}
public void draw()
{
	background(50);
sierpinski(0,800,moveLen,multi);
}

public void mousePressed()
{
	if(mouseButton == LEFT){
		multi = multi + 1;
	}
	if(mouseButton == RIGHT){
		multi = multi -1;
		if(multi<1){
			multi = 1;
		}
	}
	
}
public void keyPressed()
{
	if(key == 'a'){
		multi = 1;
	}
}
public void sierpinski(int x, int y, int len, int count) 
{
	if(count <2){
		
		triangle(x, y, x+len, y, x+len/2, y-len);
		
	
	
	}
	
	else{
	noStroke();
	fill((int)(Math.random()*255), 0, 0);
	sierpinski(x,y,len/2, count - 1);
	sierpinski(x+len/2,y,len/2, count - 1);
	sierpinski(x+len/4,y-len/2,len/2, count - 1);
	
	
}
}