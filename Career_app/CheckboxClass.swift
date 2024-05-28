//
//  CheckboxClass.swift
//  Career_app
//
//  Created by Simonchik on 27.05.2024.
//

import Foundation

class CheckboxData: ObservableObject {
    @Published var checked: Bool = false
    var toggleChecked: (() -> Void)?
}
