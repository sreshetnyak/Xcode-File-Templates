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
private class Mock___VARIABLE_sceneName___Repository: ___VARIABLE_sceneName___RepositoryProtocol {
    
}

// MARK: - ___VARIABLE_sceneName___ViewModelTests: XCTestCase
class ___VARIABLE_sceneName___ViewModelTests: XCTestCase {
    // MARK: - Init Block
    var viewModel: ___VARIABLE_sceneName___ViewModel!
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
        let repository = Mock___VARIABLE_sceneName___Repository()
        self.viewModel = ___VARIABLE_sceneName___ViewModel(router: router, repository: repository)
    }
    
    private func endClean() {
        self.viewModel = nil
    }
    
    // MARK: - Tests
}
