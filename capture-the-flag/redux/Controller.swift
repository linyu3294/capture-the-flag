//
//  viewController.swift
//  capture-the-flag
//
//  Created by Yu Lin on 12/20/20.
//
import SwiftUI
import UIKit
import ReSwift


class Controller: UIViewController, StoreSubscriber {

    @IBOutlet var counterLabel: UILabel!

    override func viewWillAppear(_ animated: Bool) {
        mainStore.subscribe(self)
    }

    override func viewWillDisappear(_ animated: Bool) {
        mainStore.unsubscribe(self)
    }

    func newState(state: AppState) {
        counterLabel.text = "\(state.counter)"
    }

    @IBAction func increaseButtonTapped(_ sender: UIButton) {
        mainStore.dispatch(
            CounterActionIncrease()
        )
    }

    @IBAction func decreaseButtonTapped(_ sender: UIButton) {
        mainStore.dispatch(
            CounterActionDecrease()
        )
    }

}
