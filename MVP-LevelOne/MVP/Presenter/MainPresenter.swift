//
//  MainPresenter.swift
//  MVP-LevelOne
//
//  Created by Даниил Тчанников on 29.06.2023.
//

import Foundation

protocol MainViewProtocol: class {
    func setGreeting(greeting: String)
}

protocol MainViewPresenterProtocol: class {
    init(view: MainViewProtocol, preson: Person)
    func showGreeting()
}

class MainPresenter: MainViewPresenterProtocol {
    
    let view: MainViewProtocol
    let preson: Person
    
    required init(view: MainViewProtocol, preson: Person) {
        self.view = view
        self.preson = preson
    }
    
    func showGreeting() {
        let greeting = self.preson.firstName + " " + self.preson.lastName
        self.view.setGreeting(greeting: greeting)
    }
}
