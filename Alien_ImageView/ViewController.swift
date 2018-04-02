//
//  ViewController.swift
//  Alien_ImageView
//
//  Created by D7703_06 on 2018. 4. 2..
//  Copyright © 2018년 IceArrow. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var count = 1; //사진의 인덱스 값 증가
    var direction = 1; //direction가 1이면 증가 0이면 감소
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //어플 실행할때 이미지를 처음 삽입
        imageView.image = UIImage(named: "frame1.png")
    }
    @IBAction func imageUpdate(_ sender: Any) {
        //count가 5이면 direction를 0로 변경
        if count == 5{
            direction  = 0;
        }
        //count가 1이면 direction를 1로 변경
        else if count == 1{
        direction = 1
        }
        //direction가 1이면 count를 1씩 증가
        if direction  == 1 {
            count += 1
            
        }
        //direction가 1이면 count를 1씩 감소
        else if direction  == 0 {
            count = count - 1
            
        }
        //count의 값만큼의 사진 이름을 불러드린다
        imageView.image = UIImage(named: "frame\(count).png");
        label.text = String(count)
    }
    
   


}

