import UIKit

var name = "wahaj"
var birthdayYear = 2004
var age : Int
var currentYear = 2022

age = currentYear - birthdayYear

print ("Hello my name is \(name) and my age is \(age)")

if age >= 14 || age <= 18
{
    print ("نعم يمكنك المشاركة في الكويت تبرمج")
}
else
{
    print ("لا يمكنك المشاركة في الكويت تبرمج")
}

var textname = "8"
var number = 4
var doublenumber : Double

doublenumber = (Double(textname) ?? 0) + (Double(number))
