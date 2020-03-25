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

        let vc = ___VARIABLE_sceneName___ViewController.board(name: .___VARIABLE_sceneName___)

        let router = ___VARIABLE_sceneName___Router(injector: injector)
        router.viewController = vc
        
        let repository = ___VARIABLE_sceneName___Repository()
        
        let viewModel = ___VARIABLE_sceneName___ViewModel(router: router, repository: repository)
        
        vc.viewModel = viewModel
        
        return vc
    }
}
