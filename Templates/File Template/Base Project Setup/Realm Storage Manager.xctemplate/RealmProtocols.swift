//
//  RealmProtocols.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import RxSwift
import RealmSwift

/// Protocol to managed and connet ViewModel's JSON-codable models & Realm-containered models
protocol DomainStorageProtocol {
    typealias RealmConvertableType = Object & DomainConvertibleType
    
    func getDomainObject<T: RealmConvertableType>(by key: String, realmType: T.Type) -> Single<T.DomainType>
    
    func getUniqueDomainObject<T: RealmConvertableType>(realmType: T.Type) -> Single<T.DomainType>
    
    func setDomainObject<T: RealmConvertableType>(realmType: T.Type, model: T.DomainType) -> Completable
    
    func removeDomainObject<T: RealmConvertableType>(relmType: T.Type, primaryKey: String) -> Completable
}

/// Protocol to managed and connet ViewModel's Realm-containered models
protocol RealmStorageProtocol {
    
    typealias RealmConvertableType = Object & DomainConvertibleType
    
    /// Set Realm Object to Data Base
    ///
    /// - Parameter model: Realm Object to save
    func setRealmObject<T: Object>(realmModel: T) -> Single<T>
    
    /// Delte Realm Object by id
    func deleteRealmObject<T: Object>(realmModel: T) -> Completable
    
    /// Get Array of Realm Objects
    func getRealmObjects<T: Object>(type: T.Type) -> Single<[T]>
    
    /// Get Realm Object by Primary key
    func getRealmObject<T: Object>(type: T.Type, primaryKey: String) -> Single<T>
    
    /// Clean Realm Data Base
    func deleteAllObject()
}
