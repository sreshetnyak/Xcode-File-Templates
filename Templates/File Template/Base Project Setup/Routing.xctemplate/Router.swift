//
//  Router.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit
import Swinject

protocol Closable: class {
    func close()
}

protocol RouterProtocol: class {
    
    associatedtype U: UIViewController
    
    var viewController: U? { get }
    
    var injector: Container { get set }
    
    func open(_ viewController: UIViewController, transition: Transition)
}

class Router<U>: RouterProtocol, InjectorProtocol, Closable where U: UIViewController {
    
    var injector: Container
    
    init(injector: Container) {
        self.injector = injector
    }
    
    typealias U = U
    
    weak var viewController: U?
    
    var openTransition: Transition?

    func open(_ viewController: UIViewController, transition: Transition) {
        transition.viewController = self.viewController
        transition.open(viewController)
    }

    func close() {
        guard let openTransition = openTransition else {
            assertionFailure("You should specify an open transition in order to close a module.")
            return
        }
        guard let viewController = viewController else {
            assertionFailure("Nothing to close.")
            return
        }
        openTransition.close(viewController)
    }
}
