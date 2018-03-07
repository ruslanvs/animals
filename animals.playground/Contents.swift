//: Playground - noun: a place where people can play

import UIKit

class Animal{
    var name: String
    var health: Int
    init( name: String ){
        self.name = name
        self.health = 100
    }
    
    func display_health() -> Animal {
        print( "Health level: \( self.health )" )
        return self
    }
}

class Cat: Animal{
    override init( name: String ){
        super.init( name: name )
        self.health = 150
    }
    
    func growl() -> Cat {
        print( "Rawr!" )
        return self
    }
    
    func run() -> Cat {
        print( "Running" )
        self.health -= 10
        return self
    }
}

class Lion: Cat {
    override init( name: String ){
        super.init( name: name )
        health = 200
    }
    
    override func growl() -> Lion {
        print( "ROAR!!!! I am the King of the Jungle!" )
        return self
    }
}

class Cheetah: Cat {
    override init( name: String ){
        super.init( name: name )
        self.health = 200
    }

    override func run() -> Cheetah {
        print( "Running fast!" )
        self.health -= 50
        return self
    }

    func sleep(){
        print( "Sleeping ... rrr ... rrr ... " )
//        self.health += 50
        if self.health <= 150 {
            self.health += 50
        } else {
            self.health = 200
        }
        
//        self.health = ( self.health <= 150 ) ? self.health += 50 : self.health = 200
    }
}

var cheetah = Cheetah( name: "Dong" )
cheetah.run()
cheetah.health
cheetah.sleep()
cheetah.health

var lion = Lion( name: "Tommy" )
lion.growl()
lion.health += 10
lion.name
lion.health

var dog = Animal( name: "Charlie" )
dog.display_health()

dog.health += 10
dog.display_health()
dog.name

dog.health -= 10
