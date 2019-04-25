//
//  ViewController.swift
//  04
//
//  Created by dit08 on 2019. 4. 25..
//  Copyright © 2019년 dit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func btn(_ sender: Any) {
        let AlertController = UIAlertController(title: "Hello", message: "Alert Test", preferredStyle: .alert)
        
        let cam = UIAlertAction(title: "사진 촬영", style: .default, handler: {
            (action: UIAlertAction) -> Void in
            self.lbl.text = "사진을 촬영합니다."
        })
        
        let cancel = UIAlertAction(title: "취소", style: .cancel) {
            (action: UIAlertAction) -> Void in
            self.lbl.text = "취소 했습니다."
        }
        
        AlertController.addAction(cam)
        AlertController.addAction(cancel)
        
        self.present(AlertController, animated: true, completion: nil)
    }
    

}

