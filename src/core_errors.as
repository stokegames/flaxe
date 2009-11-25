﻿class core_basic_error extends Error
{
	public function core_basic_error(name:String = "error", message:String = "No description.", id:int = 0, source:Object = null)
	{
		super(message, id);
		
		this.name = name + ((id > 0) ? " (" + id + ")" : "");
	}
}

class core_abstract_method_error extends core_basic_error
{
	public function core_abstract_method_error()
	{
		super("core_abstract_method_error", "This method is abstract, and must be overloaded before being called.", 507);
	}
}

class core_divide_by_zero_error extends core_basic_error
{
	public function core_divide_by_zero_error()
	{
		super("core_divide_by_zero_error", "Cannot divide by zero, it's undefined behavior.", 504);
	}
}

class core_dynamic_argument_error extends core_basic_error
{
	public function core_dynamic_argument_error()
	{
		super("core_dynamic_argument_error", "This dynamic method does not recognize the argument's object type.", 506);
	}
}

class core_not_implemented_error extends core_basic_error
{
	public function core_not_implemented_error()
	{
		super("core_not_implemented_error", "This method has not yet been implemented.", 505);
	}
}
