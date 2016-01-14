public void setup()
{

 size(512, 512);
 background(0);
}
public void draw()
{
sierpinski(100,200,100);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len > 20){
		triangle(x, y, x+len/2, y, x+len/4, y-len/2);
		triangle(x+len/2, y, x+len, y, x+len*3/4, y-len/2);
		triangle(x+len*3/4, y-len/2,x+len/4, y-len/2, x+len/2, y-len);
	}
	len= len-20;
}