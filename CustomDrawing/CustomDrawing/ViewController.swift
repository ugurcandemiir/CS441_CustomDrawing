//
//  ViewController.swift
//  CustomDrawing
//
//  Created by Ugurcan Demir on 3/5/21.
//

import UIKit



class ViewController: UIViewController {

    let canvas = Canvas()
    
    override func loadView() {
        self.view = canvas
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        canvas.backgroundColor = .white
//        view.addSubview(canvas)
//        canvas.frame = view.frame
    }
    
}

