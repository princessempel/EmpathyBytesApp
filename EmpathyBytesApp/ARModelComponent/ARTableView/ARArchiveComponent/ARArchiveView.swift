//
//  ARArchiveView.swift
//  EmpathyBytesApp
//
//  Created by Nivedita Chellam on 11/11/22.
//

import Foundation
import UIKit
import SwiftUI

struct ARArchiveView: UIViewControllerRepresentable {
    func updateUIViewController(_ uiViewController: ARArchive, context: Context) {

    }
    

    func makeUIViewController(context: Context) -> ARArchive {
        print("in view controller arArchiveView")
        let viewController = UIStoryboard(name: "ARViewStoryboard", bundle: nil).instantiateViewController(identifier: "ARArchive")
                as ARArchive;
        // create viewController for ARMenu that uses the ARViewStoryboard

        return viewController
    }

    func updateUIViewController(context: Context) {

        // update code

    }

}
