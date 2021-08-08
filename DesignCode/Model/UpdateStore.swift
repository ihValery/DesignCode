//
//  UpdateStore.swift
//  DesignCode
//
//  Created by Валерий Игнатьев on 08.08.2021.
//

import Combine

class UpdateStore: ObservableObject {
    @Published var updates: [Update] = updateData
}
