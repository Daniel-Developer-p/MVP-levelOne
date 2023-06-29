//
//  ModuleBuilder.swift
//  MVP-LevelOne
//
//  Created by Даниил Тчанников on 29.06.2023.
//

import UIKit

protocol Builder {
    static func createMainModule() -> UIViewController
}

class ModelBuilder: Builder {
    static func createMainModule() -> UIViewController {
        let model = Person(firstName: "David", lastName: "Blaine")
        let view = MainViewController()
        let presenter = MainPresenter(view: view, preson: model)
        view.presenter = presenter
        
        return view
    }
}
