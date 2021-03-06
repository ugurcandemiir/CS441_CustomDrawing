//
//  ViewController.swift
//  CustomDrawing
//
//  Created by Ugurcan Demir on 3/5/21.
//

import UIKit


class ViewController: UIViewController {

    let canvas = Canvas()
    
    let undoButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Undo", for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 15)
        button.addTarget(self, action: #selector(handleUndo), for: .touchUpInside)
        return button
    }()
    let clearButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Clear", for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 15)
        button.addTarget(self, action: #selector(handleClear), for: .touchUpInside)
        return button
    }()

    
    @objc func handleClear(){
        canvas.clear()
    }
    @objc func handleUndo(){
        canvas.undo()
    }

    override func loadView() {
        self.view = canvas
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        canvas.backgroundColor = .white
        
        let stackView = UIStackView(arrangedSubviews:[undoButton,clearButton])
//        view.addSubview(canvas)
//        canvas.frame = view.frame
        view.addSubview(stackView)
        stackView.frame = CGRect(x: 0, y: 0, width: 100, height: 200)
//        stackView.frame =
    }
    
}

