//
//  GridBoxSpec.swift
//  viewCodeUITests
//
//  Created by Pedro dos Santos Neto on 22/07/21.
//

import Quick
import Nimble
import Nimble_Snapshots

@testable import viewCode

class GridBoxSpec: QuickSpec {
    override func spec() {
        describe(""){
            it("") {
                let frame = CGRect(x: 0, y: 0, width: 250, height: 300)
                let view = GridBoxView(frame: frame)
                expect(view) == recordSnapshot("GridBoxView")
            }
        }
    }
}
