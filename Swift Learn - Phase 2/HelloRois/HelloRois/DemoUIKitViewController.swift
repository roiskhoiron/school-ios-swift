//
//  DemoUIKitViewController.swift
//  HelloRois
//
//  Created by Rois Hoiron on 23/09/26.
//

import UIKit
import SwiftUI

class DemoUIKitViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // definisikan komponen apa saja yang akan dimuat
        view.backgroundColor = .systemBackground
        let lable = UILabel()
        lable.text = "Halo dari UIKit"
        lable.font = .systemFont(ofSize: 28, weight: .bold)
        lable.textAlignment = .center
        lable.translatesAutoresizingMaskIntoConstraints = false
        
        let button = UIButton(type: .system)
        button.setTitle("Tap Aku", for: .normal)
        button.addTarget(self, action: #selector(tapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        // muat komponen disini
        view.addSubview(lable)
        view.addSubview(button)
        
        // atur tata letak disini
        NSLayoutConstraint.activate([
            lable.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            lable.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -20),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.topAnchor.constraint(equalTo: lable.bottomAnchor, constant: 20)
        ])
        
    }

    @objc private func tapped() {
        print("Button UIKit di-tap!")
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


struct UIKitWrapper: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> some UIViewController {
        DemoUIKitViewController()
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {}
    
    
}
