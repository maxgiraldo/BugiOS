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

    init(_ name: String) {
        self.name = name
    }

    func addFriend(friend: User) {
        friends.append(friend)
    }
}
