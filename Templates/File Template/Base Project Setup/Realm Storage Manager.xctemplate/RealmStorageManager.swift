//
//  RealmStorageManager.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import RealmSwift
import RxSwift

// MARK: - RealmStorageManager
class RealmStorageManager {
    private let bag = DisposeBag()
}

// MARK: - RealmStorageManager: RealmStorageProtocol
extension RealmStorageManager: RealmStorageProtocol {
    
    func setRealmObject<T>(realmModel: T) -> PrimitiveSequence<SingleTrait, T> where T: Object {
        do {
            let storage = try Realm()
            try storage.write {
                storage.add(realmModel, update: .all)
            }
            return Single.just(realmModel)
        } catch {
            return Single<T>.error(DatabaseError.saveFailed(String(describing: T.self)))
        }
        
    }
    
    func deleteRealmObject<T>(realmModel: T) -> Completable where T: Object {
        do {
            let storage = try Realm()
            try storage.write {
                storage.add(realmModel, update: .all)
            }
            return Completable.empty()
        } catch {
            return Completable.error(DatabaseError.deleteFailed(String(describing: T.self)))
        }
    }
    
    func getRealmObjects<T>(type: T.Type) -> PrimitiveSequence<SingleTrait, [T]> where T: Object {
        do {
            let storage = try Realm()
            return Single.just(storage.objects(T.self).toArray(ofType: T.self))
            
        } catch {
            return Single.error(DatabaseError.objectNotExists)
        }
    }
    
    func getRealmObject<T>(type: T.Type, primaryKey: String) -> PrimitiveSequence<SingleTrait, T> where T: Object {
        do {
            let storage = try Realm()
            let object = storage.object(ofType: T.self, forPrimaryKey: primaryKey)
            guard let realmObject = object else {
                return Single.error(DatabaseError.objectNotExists)
            }
            return Single.just(realmObject)
        } catch {
            return Single.error(DatabaseError.objectNotExists)
        }
    }
    
    func deleteAllObject() {
        do {
            let storage = try Realm()
            try storage.write {
                storage.deleteAll()
            }
        } catch {}
    }
    
}

// MARK: - RealmStorageManager: DomainStorageProtocol
extension RealmStorageManager: DomainStorageProtocol {
    
    func getUniqueDomainObject<T>(realmType: T.Type) -> PrimitiveSequence<SingleTrait, T.DomainType> where T: Object, T: DomainConvertibleType {
        do {
            let storage = try Realm()
            guard let object = storage.objects(T.self).first else {
                return Single.error(DatabaseError.objectNotExists)
            }
            return Single.just(object.asDomain())
        } catch {
            return Single.error(DatabaseError.unknownError)
        }
    }
    
    func getDomainObject<T: RealmConvertableType>(by key: String, realmType: T.Type) -> Single<T.DomainType> {
        do {
            let storage = try Realm()
            guard let object = storage.object(ofType: realmType.self, forPrimaryKey: key) else {
                return Single.error(DatabaseError.objectNotExists)
            }
            return Single.just(object.asDomain())
        } catch {
            return Single.error(DatabaseError.unknownError)
        }
    }

    func setDomainObject<T: RealmConvertableType>(realmType: T.Type, model: T.DomainType) -> Completable {
        do {
            let storage = try Realm()
            let object = realmType.init()
            object.fromDomain(domain: model)
            try storage.write {
                storage.add(object, update: .all)
            }
            return Completable.empty()
        } catch {
            return Completable.error(DatabaseError.saveFailed(String(describing: T.self)))
        }
    }
    
    func removeDomainObject<T: RealmConvertableType>(relmType: T.Type, primaryKey: String) -> Completable {
        do {
            let storage = try Realm()
            guard let object = storage.object(ofType: T.self, forPrimaryKey: primaryKey) else {
                return Completable.error(DatabaseError.objectNotExists)
            }
            try storage.write {
                storage.delete(object)
            }
            return Completable.empty()
        } catch {
            return Completable.error(DatabaseError.unknownError)
        }
    }
}
