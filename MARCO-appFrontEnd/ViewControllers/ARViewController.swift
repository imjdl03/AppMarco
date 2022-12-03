//
//  ARViewController.swift
//  MARCO-appFrontEnd
//
//  Created by Sasha Moroz on 24/11/22.
//

import UIKit
import ARKit
import RealityKit
import Combine
import QuickLook
import SwiftUI

class ARViewController: UIViewController, QLPreviewControllerDelegate, QLPreviewControllerDataSource {
    
    let model_name : String
    
    
    init(model_name : String){

        self.model_name = model_name
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //QL Preview Controller Protocol Requiered Functions
    
    //This function tells how many preview items will be displayed, in case of AR it will always be one therefore we return 1.
    func numberOfPreviewItems(in controller: QLPreviewController) -> Int {
        return 1
    }
    
    
    //Function the searches for the preview file and displays it in preview
    func previewController(_ controller: QLPreviewController, previewItemAt index: Int) -> QLPreviewItem {
        let url = Bundle.main.url(forResource: model_name,
                                  withExtension: "usdz")!
        return url as QLPreviewItem
    }
}
