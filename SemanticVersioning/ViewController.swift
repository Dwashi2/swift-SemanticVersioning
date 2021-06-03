//
//  ViewController.swift
//  SemanticVersioning
//
//  Created by Daniel Washington Ignacio on 03/06/21.
//


/*
 In semantic versioning a piece of software can be represented in a format like this example: 6.1.9.

 The first number is the major version.
 The second number is the minor version.
 The third number is the patch (bug fixes).
 Write three separate functions, one to retrieve each element in the semantic versioning specification.

 Examples

 // 6.1.9
 retrieveMajor("6.1.9") ➞ "6"

 retrieveMinor("6.1.9") ➞ "1"

 retrievePatch("6.1.9") ➞ "9"

 // 2.1.0
 retrieveMajor("2.1.0") ➞ "2"

 retrieveMinor("2.1.0") ➞ "1"

 retrievePatch("2.1.0") ➞ "0"
 */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print(self.retrieveMajor("6.1.9"))
        print(self.retrieveMinor("6.1.9"))
        print(self.retrievePatch("6.1.9"))
        
     //   print(self.retrieveMajor("2.1.0"))
     //   print(self.retrieveMinor("2.1.0"))
     //   print(self.retrievePatch("2.1.0"))
        
        
    }
    
    func retrieveMajor(_ semver: String) -> String {
        return "\(semver.first ?? " ")"
    }

    func retrieveMinor(_ semver: String) -> String {
        var mid: [Character] = []
        for n in semver {
            mid.append(n)
        }
        return "\(mid[mid.count/2])"
    }

    func retrievePatch(_ semver: String) -> String {
        return "\(semver.last ?? " ")"
    }


}

