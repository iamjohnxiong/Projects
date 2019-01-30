//
//  NavView.swift
//  Arrow KE Calculator
//
//  Created by John Xiong on 3/3/17.
//  Copyright © 2017 Xiong. All rights reserved.
//

import UIKit

class NavView: UIView {

    
    var view: UIView!;
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    
    override func setupView() {
        view = loadViewFromXibFile()
        view.frame = bounds
        view.translatesAutoresizingMaskIntoConstraints = false
        addSubview(view)
        
        translatesAutoresizingMaskIntoConstraints = false
        
        titleLabel.text = NSLocalizedString("Saved_to_garage", comment: "")
        
        /// Adds a shadow to our view
        view.layer.cornerRadius = 4.0
        view.layer.shadowColor = UIColor.blackColor().CGColor
        view.layer.shadowOpacity = 0.2
        view.layer.shadowRadius = 4.0
        view.layer.shadowOffset = CGSizeMake(0.0, 8.0)
        
        visualEffectView.layer.cornerRadius = 4.0
    }
    
    
    /**
     Loads a view instance from the xib file
     
     - returns: loaded view
     */
    func loadViewFromXibFile() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "NavView", bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        return view
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
