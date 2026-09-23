//
//  DemoStoryboardViewController.swift
//  HelloRois
//
//  Created by Rois Hoiron on 23/09/26.
//

import UIKit
import SwiftUI

class DemoStoryboardViewController: UIViewController {

    @IBOutlet weak var stroyLabel: UILabel!
    
    @IBAction func storyTapped(_ sender: UIButton) {
        stroyLabel.text = "Hello Rois"
        print("Story Button Tappad dari storyboard")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

struct StoryboardWrapper: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UIViewController {
        let sb = UIStoryboard(name: "Demo", bundle: nil)
        return sb.instantiateInitialViewController()!
    }
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}
}
