//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import RxSwift
import RxCocoa

class ___VARIABLE_sceneName___Presenter {
    
    // MARK: - Router
    var router: ___VARIABLE_sceneName___Router
    var interactor: ___VARIABLE_sceneName___InteractorProtocol
    
    // MARK: - Properties
    private var disposeBag = DisposeBag()

    init(router: ___VARIABLE_sceneName___Router, interactor: ___VARIABLE_sceneName___InteractorProtocol) {
        self.router = router
        self.interactor = interactor
    }

}
