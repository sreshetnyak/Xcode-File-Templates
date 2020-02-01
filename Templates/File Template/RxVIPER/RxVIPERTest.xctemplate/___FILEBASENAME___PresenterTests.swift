//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import XCTest
import RxSwift
@testable import ___PROJECTNAME___

// MARK: - Mock___VARIABLE_sceneName___Repository: ___VARIABLE_sceneName___RepositoryProtocol
private class Mock___VARIABLE_sceneName___Interactor: ___VARIABLE_sceneName___InteractorProtocol {
    
}

// MARK: - ___VARIABLE_sceneName___ViewModelTests: XCTestCase
class ___VARIABLE_sceneName___PresenterTests: XCTestCase {
    // MARK: - Init Block
    var presenter: ___VARIABLE_sceneName___Presenter!
    private let disposeBag = DisposeBag()
    
    override func setUp() {
        super.setUp()
        self.startInit()
    }
    
    override func tearDown() {
        self.endClean()
        super.tearDown()
    }
    
    private func startInit() {
        let router = ___VARIABLE_sceneName___Router(injector: DependenciesHolder().injector())
        let interactor = Mock___VARIABLE_sceneName___Interactor()
        self.presenter = ___VARIABLE_sceneName___Presenter(router: router, interactor: interactor)
    }
    
    private func endClean() {
        self.presenter = nil
    }
    
    // MARK: - Tests
}
