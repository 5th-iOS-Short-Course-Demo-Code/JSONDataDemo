//: Playground - noun: a place where people can play

import UIKit

let url = Bundle.main.url(forResource: "data", withExtension: "json")

let data = try? Data(contentsOf: url!)

let jsonObject = try? JSONSerialization.jsonObject(with: data!, options: .allowFragments)

let dict = jsonObject as! [String: Any]

print("Message:", dict["message"] as! String)
print("Count:", dict["count"] as! Int)

let users = dict["users"] as! NSArray

for user in users {
    let user = user as! [String: Any]
    print("Name:", user["name"] as! String)
    print("Age:", user["age"] as! Int)
}
