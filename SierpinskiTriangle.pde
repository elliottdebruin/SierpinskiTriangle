public int moveLen;

public void setup()
{

 size(512, 512);
 background(0);
 moveLen = 512;
}
public void draw()
{
	background(0);
sierpinski(0,512,moveLen);
}

public void mousePressed()
{
	
		moveLen = moveLen/2;
	
}
public void sierpinski(int x, int y, int len) 
{
	if(len <8){
		
		triangle(x, y, x+len, y, x+len/2, y-len);
		
	
	
	}
	
	else{
	

	sierpinski(x,y,len/2);
	sierpinski(x+len/2,y,len/2);
	sierpinski(x+len/4,y-len/2,len/2);
	
	
}
}