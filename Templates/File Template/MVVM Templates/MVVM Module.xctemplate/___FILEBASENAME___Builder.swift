//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import UIKit
import Swiftject

class ___VARIABLE_sceneName___Builder {
    static func build(injector: Container) -> UIViewController {
        let viewController = ___VARIABLE_sceneName___ViewController.initFromStoryboard(name: AppStoryboards.___VARIABLE_sceneName___)
        
        let viewController = UIDevice.current.userInterfaceIdiom == .phone : ___VARIABLE_sceneName___iPhoneViewController.initFromStoryboard(name: AppStoryboards.___VARIABLE_sceneName___iPhone) ? ___VARIABLE_sceneName___iPadViewController.initFromStoryboard(name: AppStoryboards.___VARIABLE_sceneName___iPad)

        let router = ___VARIABLE_sceneName___Router(injector: injector)
        router.viewController = viewController
        
        let repository = ___VARIABLE_sceneName___Repository()
        
        let viewModel = ___VARIABLE_sceneName___ViewModel(router: router, repository: repository)
        
        viewController.viewModel = viewModel
        
        return viewController
    }
}
