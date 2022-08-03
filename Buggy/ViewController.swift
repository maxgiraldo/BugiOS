//
//  ViewController.swift
//  Buggy
//
//  Created by Maximilian Giraldo on 6/26/22.
//

import UIKit

class ViewController: UIViewController {

    var users: NSMutableArray?
    var currentUser: User = User("Current User")

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        print("Method: \(#function) in file: \(#file) line: \(#line) called.")

        let newUsers = generateUsers()

        var u: User
        for user in newUsers {
            u = user as! User
            print("User: \(u.name)")
            if let bestFriend = u.bestFriend {
                print("User best friend: \(bestFriend.name)")
            }
        }

        users = newUsers
    }

    @IBAction func deleteUsers(_ sender: UIButton) {
        deleteUsers(users: users!)
    }

    func generateUsers() -> NSMutableArray {
        let array = NSMutableArray()
        var previousUser: User = User("default")
        for i in 0..<10 {
            let diceRoll = Int.random(in: 0 ... 1)
            let user = User("Person \(i)")
            currentUser.addFriend(friend: user, makeBestFriend: true)
            user.addFriend(friend: previousUser, makeBestFriend: diceRoll == 0 ? true : false)
            previousUser = user
            array.insert(user, at: i)
        }

        return array
    }

    func deleteUsers(users: NSMutableArray) {
        print(#function)
        for _ in 0...10 {
            users.removeObject(at: 0)
        }
    }
}

