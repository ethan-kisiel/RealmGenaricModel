//
//  BaseModel.swift
//  GenaricRealmTest
//
//  Created by Ethan Kisiel on 9/16/22.
//

import Foundation
import Realm
import RealmSwift

protocol BaseModel where Self: RealmSwiftObject
{
    func save()
    func delete()
    static func byId<T: RealmSwiftObject>(id: ObjectId) -> T?
    static func all<T: RealmSwiftObject>() -> [T]
}

extension BaseModel
{
    static var localSwiftContext: Realm
    {
        LocalRealmManager.shared.realm
    }
    
    
}
