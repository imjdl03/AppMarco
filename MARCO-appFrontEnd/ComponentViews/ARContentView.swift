//
//  ARContentView.swift
//  MARCO-appFrontEnd
//
//  Created by Sasha Moroz on 24/11/22.
//

import SwiftUI
import RealityKit
import ARKit
import QuickLook

struct ARContentView: View {
    
    let c : String

    var body: some View {
        ARViewContainer(model_name: c).ignoresSafeArea(.all)
            .toolbar(.hidden, for: .tabBar)
    }
}

struct ARViewContainer: UIViewControllerRepresentable {
    
    let model_name : String
    
    func makeCoordinator() -> ARCoordinator {
        return ARCoordinator(parent: self, model_name: model_name)
    }
    
    func makeUIViewController(context: Context) -> QLPreviewController {
        let controller = QLPreviewController()
        controller.dataSource = context.coordinator
        return controller
    }
    
    func updateUIViewController(
        _ uiViewController: QLPreviewController, context: Context) {}
}


class ARCoordinator: QLPreviewControllerDataSource {
    
    let model_name : String
    
    let parent: ARViewContainer
    
    init(parent: ARViewContainer, model_name : String) {
        self.parent = parent
        self.model_name = model_name
    }
    
    //NEW

    //NEW
    
    func numberOfPreviewItems(
        in controller: QLPreviewController
    ) -> Int {
        return 1
    }
    
    func previewController(
        _ controller: QLPreviewController,
        previewItemAt index: Int
    ) -> QLPreviewItem {
        print(model_name)
        
        guard let url = URL(string: model_name) else {
            print("Error, there was an issue somewhere with loading a 3D Model.")
            print(model_name)
            return URL(fileURLWithPath: "No file was found.") as NSURL
        }
//        guard let url = Bundle.main.url(forResource: model_name, withExtension: "usdz") else {
//            print("Error, there was an issue somewhere with loading a 3D Model.")
//            print(model_name)
//            return URL(fileURLWithPath: "No file was found.") as NSURL
//        }
        return ARQuickLookPreviewItem(fileAt: url)
    }
    
}
