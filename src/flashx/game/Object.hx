package flashx.game;

class Object
{
	public var x(getX, setX):Int;
	public var y(getY, setY):Int;
	public var width(getWidth, never):Int;
	public var height(getHeight, never):Int;
	
	public function new()
	{
		this.model = new flashx.graphics.Model2();
		this.position = new flashx.math.Vector2();
		this.rotation = new flashx.math.Vector2();
	}
	
	public inline function getWidth():Int
	{
		return this.model.width;
	}

	public inline function getHeight():Int
	{
		return this.model.height;
	}
	
	public inline function getX():Int
	{
		return this.position.x;
	}
	
	public inline function setX(x:Int):Int
	{
		this.position.x = x;
		
		return x;
	}
	
	public inline function getY():Int
	{
		return this.position.y;
	}
	
	public inline function setY(y:Int):Int
	{
		this.position.y = y;
		
		return y;
	}
	
	public inline function update(time:flashx.core.Timestamp):Void
	{
		this.model.position.x = this.position.x;
		this.model.position.y = this.position.y;
	}
	
	public function getChanged():Bool
	{
		if(this.model.changed)
			return true;
			
		return false;
	}
	
	public function setChanged(changed:Bool):Bool
	{
		this.model.changed = changed;
		
		return changed;
	}
	
	public var model:flashx.graphics.Model2;
	public var position:flashx.math.Vector2;
	public var rotation:flashx.math.Vector2;
}
