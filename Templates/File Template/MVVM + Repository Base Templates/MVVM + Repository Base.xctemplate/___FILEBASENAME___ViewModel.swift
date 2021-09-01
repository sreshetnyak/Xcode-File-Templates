//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import RxSwift
import RxCocoa

class ___VARIABLE_sceneName___ViewModel {
    
    // MARK: - Router
    let router: ___VARIABLE_sceneName___Router

    let repository: ___VARIABLE_sceneName___Repository
    
    // MARK: - Properties
    private let bag = DisposeBag()

    init(router: ___VARIABLE_sceneName___Router, repository: ___VARIABLE_sceneName___Repository) {
        self.router = router
        self.repository = repository
    }
}
