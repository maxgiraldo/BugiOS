//
//  User.swift
//  Buggy
//
//  Created by Maximilian Giraldo on 8/3/22.
//

import Foundation

class User {
    let name: String
    var friends = [User]()
    var bestFriend: User!

    init(_ name: String) {
        self.name = name
    }

    deinit {
        print("Deinit \(name)")
    }

    func addFriend(friend: User, makeBestFriend: Bool) {
        if makeBestFriend {
            bestFriend = friend
        }
        friends.append(friend)
    }
}
