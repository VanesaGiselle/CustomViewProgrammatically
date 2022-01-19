//
//  ViewController.swift
//  TossInitialLayerProgrammatically
//
//  Created by Vanesa Korbenfeld on 19/01/2022.
//

import UIKit

class ViewController: UIViewController {
    var logoImage = UIImageView()
    let sloganLabel = UILabel()
    let facebookButton = FacebookButton()
    let twitterButton = TwitterButton()
    let emailButton = EmailButton()
    let loginLabel = UILabel()
    let vStackView = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        assignBackground()
        
        logoImage.image = UIImage(named: "tosslogo")
        logoImage.contentMode = .scaleAspectFit
        
        sloganLabel.text = "Style inspiration for every occation."
        sloganLabel.textColor = .white
        sloganLabel.textAlignment = .center
        
        facebookButton.setTitle("Join with Facebook", for: .normal)
        facebookButton.addTarget(self, action: #selector(facebookTappedButton), for: .touchUpInside)
        
        twitterButton.setTitle("Join with Twitter", for: .normal)
        twitterButton.addTarget(self, action: #selector(twitterTappedButton), for: .touchUpInside)
        
        emailButton.setTitle("Join with Twitter", for: .normal)
        emailButton.addTarget(self, action: #selector(emailTappedButton), for: .touchUpInside)
        
        loginLabel.text = "Already have an account? Log in now!"
        loginLabel.textColor = .white
        loginLabel.textAlignment = .center
        
        let vStackView = UIStackView(arrangedSubviews: [logoImage, sloganLabel, facebookButton, twitterButton, emailButton, loginLabel])
        vStackView.alignment = .fill
        vStackView.distribution = .fillProportionally
        vStackView.axis = .vertical
        vStackView.spacing = 16.0
        
        vStackView.setCustomSpacing(23.0, after: sloganLabel)
        vStackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(vStackView)
        
        vStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        vStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        vStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        vStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        vStackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        vStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20).isActive = true
    }
    
    func assignBackground(){
        let background = UIImage(named: "background")
        var imageView : UIImageView!
        
        imageView = UIImageView(frame: view.bounds)
        imageView.contentMode =  .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = background
        imageView.center = view.center
        view.addSubview(imageView)
        self.view.sendSubviewToBack(imageView)
    }
    
    @objc func facebookTappedButton(){
        //TODO
    }
    
    @objc func twitterTappedButton(){
        //TODO
    }
    
    @objc func emailTappedButton(){
        //TODO
    }
}

class FacebookButton: UIButton {
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    init() {
        super.init(frame: .zero)
        setupView()
    }
    
    func setupView() {
        self.backgroundColor = .systemBlue
        self.tintColor = .white
        self.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17.0)
    }
}

class EmailButton: UIButton {
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    init() {
        super.init(frame: .zero)
        setupView()
    }
    
    func setupView() {
        self.backgroundColor = UIColor(red: 207/255.0, green: 150/255.0, blue: 200/255.0, alpha: 1)
        self.tintColor = .white
        self.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17.0)
    }
}

class TwitterButton: UIButton {
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    init() {
        super.init(frame: .zero)
        setupView()
    }
    
    func setupView() {
        self.backgroundColor = UIColor(red: 47/255.0, green: 166/255.0, blue: 242/255.0, alpha: 1)
        self.tintColor = .white
        self.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17.0)
    }
    
}



