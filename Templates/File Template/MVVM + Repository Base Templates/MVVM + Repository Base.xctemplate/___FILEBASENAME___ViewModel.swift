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
    var router: ___VARIABLE_sceneName___Router
    var repository: ___VARIABLE_sceneName___RepositoryProtocol
    
    // MARK: - Properties
    private var disposeBag = DisposeBag()

    init(router: ___VARIABLE_sceneName___Router, repository: ___VARIABLE_sceneName___RepositoryProtocol) {
        self.router = router
        self.repository = repository
    }

}
