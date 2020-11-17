//
//  ViewController.swift
//  AsyncCalls
//
//  Created by Douglas Gehring on 16/11/20.
//  Copyright © 2020 Douglas Gehring. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.testLoadDataFromDataService()
    }
    
    private func testSaveDataToDataService() {
        DataService.shared.adapter.save(data: ModelItem(), to: "testPath") { saveDataResult in
            switch(saveDataResult) {
            case .onSucces: print("Success saving data")
            case .onError(let error): self.handle(error)
            }
        }
    }
    
    private func testLoadDataFromDataService() {
        DataService.shared.adapter.loadData(fromPath: "testPath") { loadDataResult in
            switch(loadDataResult) {
            case .onSuccess(let data): self.parse(data)
            case .onError(let error): self.handle(error)
            case .onUndefined: print("There is probably no data for the specific path")
            }
        }
    }
    
    
    private func parse(_ data: Any) {
        print("Parsing data")
    }
    
    private func handle(_ error: Error) {
        print(error.localizedDescription)
    }
}

