$local_var = "this is my local var"
def return_my_local_var
  local_var = "prueba cambio valor"
end
return_my_local_var
$local_var
#Como comenta en el ejercicio, es una variable que puede ser modificada de manera local
#y global, la ventaja es que al ser modificada localmente no afecta la global
class DummyClass
  def initialize
  @local_var = "this is my local var"

  end

  def class_variable=(value)
  @@class_variable =  value
  end

  def class_variable
  @@class_variable = "This is a class variable"
  end

# Este es un getter
  def instance_var
    @instance_var = @local_var
  end

# Este es un setter
  def instance_var=(value)
    @instance_var = value
  end

  def return_my_local_var
  local_var = "prueba cambio valor"
  end
end
codea = DummyClass.new
codea.return_my_local_var
codea.instance_var
codea.instance_var=("New value for the class variable")
codea.instance_var
dummy_1 = DummyClass.new
dummy_2 = DummyClass.new
dummy_1.class_variable
dummy_2.class_variable
dummy_1.class_variable = "New value for the class variable"
dummy_1.class_variable
dummy_2.class_variable
$global_var = "This is a global variable"
CONSTANT = 3.1416

def setter_test (value)
  #CONSTANT = value
  #Dinamic constant assignment
end
setter_test(12345)
#CONSTANT = 4
CONSTANT 
$global_var = "The value has just changed"

class DummyClass
  def initialize
  $global_var = "This is a global variable"
  end 

  def setter (value)
  global_var = value
  end
  
  def getter
  $global_var
  end

end
dummy_1 = DummyClass.new
dummy_1.setter("New value")
dummy_1.getter
$global_var