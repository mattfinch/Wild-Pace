using Toybox.WatchUi;

class WildPaceView extends WatchUi.SimpleDataField {

    function initialize() {
        SimpleDataField.initialize();
        label = "Wild Pace";
    }
    
    function compute(info) {
        
        var animals = [100];
        var ret = "";       
        var currentSpeed = 0;
        
		if (info.currentSpeed != null){ currentSpeed = info.currentSpeed; }
        
        var speedKmh = currentSpeed * 3.6;
        
        animals.add(new Animal("Coral",0.0));
        animals.add(new Animal("Garden Snail",.1));
        animals.add(new Animal("Eel",4));
        animals.add(new Animal("HouseFly",7.2));
        animals.add(new Animal("Mouse",13));
        animals.add(new Animal("Pig",17.7));
        animals.add(new Animal("Squirrel",20));
        animals.add(new Animal("Brown Bear",25));
        animals.add(new Animal("Penguin",30));
        animals.add(new Animal("Dolphin",35));
        animals.add(new Animal("Elephant",40));
        animals.add(new Animal("Barracuda",44));
        animals.add(new Animal("Giraffe",52));
        animals.add(new Animal("Pigeon",59));
        animals.add(new Animal("Zebra",64));
        animals.add(new Animal("Ostrich",70));
        animals.add(new Animal("Lion",80));
        animals.add(new Animal("Horse",88));
        animals.add(new Animal("Gannet",100));
        animals.add(new Animal("Duck",105));
        animals.add(new Animal("Cheetah",120));
        animals.add(new Animal("Hawk",195));
         		
        
		for( var i = 1; i < animals.size(); i++ ) {
			if (speedKmh <= animals[i].speed) {
				ret = animals[i].name;
				break;
			}
		}
        
		return ret;
    }
}

class Animal
{
	public var name = ""; //name of the animal
    public var speed = 0.0; //speed in km/h
        
    function initialize( Name,Speed ) {
      name = Name; 
      speed = Speed;
    }
}
