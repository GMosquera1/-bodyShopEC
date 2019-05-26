//
//  ViewController.swift
//  EscapeGenovez
//
//  Created by Genesis Mosquera on 5/25/19.
//  Copyright © 2019 Genesis Mosquera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let logoImageView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "logoeg"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let logoTextView: UITextView = {
        let textView = UITextView()
        textView.text = "Bienvenido a Escape Genovez \n Puede visitarnos en nuestros talleres en el Norte y en el Centro"
        textView.font = UIFont.boldSystemFont(ofSize: 18)
        textView.font = UIFont.init(name: "futura", size: 18)
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        return textView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.addSubview(logoImageView)
        view.addSubview(logoTextView)
        setupLayout()
    }
    
    private func setupLayout() {
       
        let topImageContainerView = UIView()
            topImageContainerView.backgroundColor = #colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)
            view.addSubview(topImageContainerView)
            topImageContainerView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        
        
        topImageContainerView.translatesAutoresizingMaskIntoConstraints = false
        topImageContainerView.addSubview(logoImageView)
        
        NSLayoutConstraint.activate([topImageContainerView.topAnchor.constraint(equalTo: view.topAnchor), topImageContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor), topImageContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),topImageContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5)])

        
        NSLayoutConstraint.activate([logoImageView.centerXAnchor.constraint(equalTo: topImageContainerView.centerXAnchor), logoImageView.centerYAnchor.constraint(equalTo: topImageContainerView.centerYAnchor),   logoImageView.heightAnchor.constraint(equalTo: topImageContainerView.heightAnchor, multiplier: 0.6)])
        
        NSLayoutConstraint.activate([logoTextView.topAnchor.constraint(equalTo:logoImageView.bottomAnchor, constant: 120), logoTextView.leftAnchor.constraint(equalTo: view.leftAnchor), logoTextView.rightAnchor.constraint(equalTo: view.rightAnchor), logoTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)])
    }
    
    
}

