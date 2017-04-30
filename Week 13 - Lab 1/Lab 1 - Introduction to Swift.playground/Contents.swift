//: Playground - noun: a place where people can play

import Cocoa

//Exercise 1,
var HelloWorld = "Hello, World!"
print(HelloWorld + "!" )
print("__________________________")
//Exercise 2

var i = 0

while (i < 10) {
    print(HelloWorld)
    i = i + 1
}

print("__________________________")
//Exercise 3

for number in 1 ... 100{
    print(number)
}

print("__________________________")
//Exercise 4

for number in 1 ... 100{
    if number % 2 != 0 {
        print(number)
    }
}

print("__________________________")
//Exercise 5

for number in 1 ... 100{
    if number % 3 == 0 {
        print("fizz")
    } else if number % 5 == 0 {
        print ("buzz")
    }else{
        print(number)
    }
}

print("__________________________")
//Exercise 6

func hello(name:String){
    print("Hello " + name )
}

hello(name:"Hamza")



print("__________________________")
//Exercise 7

func hello(name:String,age:Int){
    print("Hello, \(name) , I hear you are \(age) years")
}

hello(name: "hamza", age: 24);

print("__________________________")
//Exercise 8

func helloif(name:String,age:Int){
    if age < 40 {
        print("Hi \(name)")
    }else{
        print("Hello \(age)")
    }
}

helloif(name: "hamza", age: 50);

print("__________________________")
//Exercise 9

func nSquares(squares:Int) -> Int{
    var result = 0;
    result = squares * squares
    return result
}

print(nSquares(squares: 5))

print("__________________________")
//Exercise 10 

var name = ["Monica", "Ross", "Phoebe", "Chandler", "Joey", "Rachel"]
for n in name {
    print("\(n)")
}

print("__________________________")
//Exercise 11

var FizzBuzz = [String]()
for number in 1 ... 100{
    if number % 3 == 0 {
        FizzBuzz.append("fizz")
    } else if number % 5 == 0 {
        FizzBuzz.append("buzz")
    }
    print(FizzBuzz)
}

print("__________________________")
//Exercise 12

class Person{
    var name: String = ""
    var age : Int = 0
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

Person.init(name:"hamza", age: 24)
