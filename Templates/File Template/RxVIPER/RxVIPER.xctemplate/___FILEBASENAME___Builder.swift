//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import UIKit
import Swinject

class ___VARIABLE_sceneName___Builder {
    static func build(injector: Container) -> ___VARIABLE_sceneName___ViewController {
        let viewController = ___VARIABLE_sceneName___ViewController.initFromStoryboard(name: "")

        let router = ___VARIABLE_sceneName___Router(injector: injector)
        router.viewController = viewController
        
        let interactor = ___VARIABLE_sceneName___Interactor()
        
        let presenter = ___VARIABLE_sceneName___Presenter(router: router, interactor: interactor)
        
        viewController.presenter = presenter
        
        return viewController
    }
}
