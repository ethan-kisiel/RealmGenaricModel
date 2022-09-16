//
//  LocalRealmManager.swift
//  GenaricRealmTest
//
//  Created by Ethan Kisiel on 9/16/22.
//

import Foundation
import Realm
import RealmSwift

struct LocalRealmManager
{
    static let shared = LocalRealmManager()
    let realm = try! Realm()
}
