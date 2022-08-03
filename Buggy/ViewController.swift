//
//  ViewController.swift
//  Buggy
//
//  Created by Maximilian Giraldo on 6/26/22.
//

import UIKit

class ViewController: UIViewController {

    var userIds: NSMutableArray?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        print("Method: \(#function) in file: \(#file) line: \(#line) called.")

        let ids = generateUserIds()

        for userId in ids {
            print("User ID: \(userId)")
        }

        userIds = ids
    }

    @IBAction func deleteUsers(_ sender: UIButton) {
        deleteUsers(ids: userIds!)
    }

    func generateUserIds() -> NSMutableArray {
        let array = NSMutableArray()
        for i in 0..<10 {
            array.insert(i+1, at: i)
        }

        return array
    }

    func deleteUsers(ids: NSMutableArray) {
        for _ in 0...10 {
            ids.removeObject(at: 0)
        }
    }
}

