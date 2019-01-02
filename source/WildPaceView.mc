using Toybox.WatchUi;

class WildPaceView extends WatchUi.SimpleDataField {

    function initialize() {
        SimpleDataField.initialize();
        label = "Wild Pace";
    }

    function compute(info) {

    var animals = [
        new Animal("Coral",0),
        new Animal("Garden Snail",0.1),
        new Animal("Eel",4),
        new Animal("HouseFly",7.2),
        new Animal("Mouse",13),
        new Animal("Pig",17.7),
        new Animal("Squirrel",20),
        new Animal("Brown Bear",25),
        new Animal("Penguin",30),
        new Animal("Dolphin",35),
        new Animal("Elephant",40),
        new Animal("Barracuda",44),
        new Animal("Giraffe",52),
        new Animal("Pigeon",59),
        new Animal("Zebra",64),
        new Animal("Ostrich",70),
        new Animal("Lion",80),
        new Animal("Horse",88),
        new Animal("Gannet",100),
        new Animal("Duck",105),
        new Animal("Cheetah",120),
        new Animal("Hawk",195)
    ];

    var currentSpeed = 0.0;

    // Get the current speed in km/h
    if (info.currentSpeed != null){
        currentSpeed = info.currentSpeed * 3.6;
    }

    for( var i = 0; i < animals.size(); i++ ) {
        if (currentSpeed <= animals[i].speed) {
            return animals[i].name;
        }
    }

    return animals[0].name;
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
