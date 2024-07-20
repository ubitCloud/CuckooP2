// MARK: - Mocks generated from file: 'CuckooP2/CommentList/Service/CommentViewService.swift'

import Cuckoo
import Foundation
@testable import Cuckoo

class MockCommentViewServiceDelegate: CommentViewServiceDelegate, Cuckoo.ProtocolMock {
    typealias MocksType = CommentViewServiceDelegate
    typealias Stubbing = __StubbingProxy_CommentViewServiceDelegate
    typealias Verification = __VerificationProxy_CommentViewServiceDelegate

    // Original typealiases

    let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    private var __defaultImplStub: (any CommentViewServiceDelegate)?

    func enableDefaultImplementation(_ stub: any CommentViewServiceDelegate) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    
    func getComments(completion p0: @escaping (Result<[CommentModel], NetworkError>) -> Void) {
        return cuckoo_manager.call(
            "getComments(completion p0: @escaping (Result<[CommentModel], NetworkError>) -> Void)",
            parameters: (p0),
            escapingParameters: (p0),
            superclassCall: Cuckoo.MockManager.crashOnProtocolSuperclassCall(),
            defaultCall: __defaultImplStub!.getComments(completion: p0)
        )
    }

    struct __StubbingProxy_CommentViewServiceDelegate: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager
    
        init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        func getComments<M1: Cuckoo.Matchable>(completion p0: M1) -> Cuckoo.ProtocolStubNoReturnFunction<( (Result<[CommentModel], NetworkError>) -> Void)> where M1.MatchedType ==  (Result<[CommentModel], NetworkError>) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<( (Result<[CommentModel], NetworkError>) -> Void)>] = [wrap(matchable: p0) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockCommentViewServiceDelegate.self,
                method: "getComments(completion p0: @escaping (Result<[CommentModel], NetworkError>) -> Void)",
                parameterMatchers: matchers
            ))
        }
    }

    struct __VerificationProxy_CommentViewServiceDelegate: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
    
        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
        
        
        @discardableResult
        func getComments<M1: Cuckoo.Matchable>(completion p0: M1) -> Cuckoo.__DoNotUse<( (Result<[CommentModel], NetworkError>) -> Void), Void> where M1.MatchedType ==  (Result<[CommentModel], NetworkError>) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<( (Result<[CommentModel], NetworkError>) -> Void)>] = [wrap(matchable: p0) { $0 }]
            return cuckoo_manager.verify(
                "getComments(completion p0: @escaping (Result<[CommentModel], NetworkError>) -> Void)",
                callMatcher: callMatcher,
                parameterMatchers: matchers,
                sourceLocation: sourceLocation
            )
        }
    }
}

class CommentViewServiceDelegateStub:CommentViewServiceDelegate {


    
    func getComments(completion p0: @escaping (Result<[CommentModel], NetworkError>) -> Void) {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
}


class MockCommentViewService: CommentViewService, Cuckoo.ClassMock {
    typealias MocksType = CommentViewService
    typealias Stubbing = __StubbingProxy_CommentViewService
    typealias Verification = __VerificationProxy_CommentViewService

    // Original typealiases

    let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    private var __defaultImplStub: CommentViewService?

    func enableDefaultImplementation(_ stub: CommentViewService) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    
    override func getComments(completion p0: @escaping (Result<[CommentModel], NetworkError>) -> Void) {
        return cuckoo_manager.call(
            "getComments(completion p0: @escaping (Result<[CommentModel], NetworkError>) -> Void)",
            parameters: (p0),
            escapingParameters: (p0),
            superclassCall: super.getComments(completion: p0),
            defaultCall: __defaultImplStub!.getComments(completion: p0)
        )
    }

    struct __StubbingProxy_CommentViewService: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager
    
        init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        func getComments<M1: Cuckoo.Matchable>(completion p0: M1) -> Cuckoo.ClassStubNoReturnFunction<( (Result<[CommentModel], NetworkError>) -> Void)> where M1.MatchedType ==  (Result<[CommentModel], NetworkError>) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<( (Result<[CommentModel], NetworkError>) -> Void)>] = [wrap(matchable: p0) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockCommentViewService.self,
                method: "getComments(completion p0: @escaping (Result<[CommentModel], NetworkError>) -> Void)",
                parameterMatchers: matchers
            ))
        }
    }

    struct __VerificationProxy_CommentViewService: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
    
        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
        
        
        @discardableResult
        func getComments<M1: Cuckoo.Matchable>(completion p0: M1) -> Cuckoo.__DoNotUse<( (Result<[CommentModel], NetworkError>) -> Void), Void> where M1.MatchedType ==  (Result<[CommentModel], NetworkError>) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<( (Result<[CommentModel], NetworkError>) -> Void)>] = [wrap(matchable: p0) { $0 }]
            return cuckoo_manager.verify(
                "getComments(completion p0: @escaping (Result<[CommentModel], NetworkError>) -> Void)",
                callMatcher: callMatcher,
                parameterMatchers: matchers,
                sourceLocation: sourceLocation
            )
        }
    }
}

class CommentViewServiceStub:CommentViewService {


    
    override func getComments(completion p0: @escaping (Result<[CommentModel], NetworkError>) -> Void) {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
}


