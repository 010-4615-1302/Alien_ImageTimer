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
    var mytimer = Timer(); //타이머 추가
    var set = true
    var but = true
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var play: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: "frame1.png")
    }
    
    @IBAction func play(_ sender: Any) {
        if but == true{ //but이 참 : 타이머가 실행 하지 않았을때 실행
        mytimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(doAnimation), userInfo: nil, repeats: true)
            //타이머가 1초마다 doAnimation를 종료 할때까지 계속 반복
            but = false //종료를 하기 위해 but를 거짓으로변경
            play.setTitle("Stop", for: .normal) //버튼의 제목을 변경
        }
        else if but == false{
            //but이 거짓 : 타이머가 실행 했을때 실행
            mytimer.invalidate()
            //타이머 정지
            but = true //다시 실행을 하기위해 but를 참으로 변경
            play.setTitle("Play", for: .normal)//버튼의 제목을 변경
        }
    }
    
    @objc func doAnimation(){
        if count == 5{ //count가 5이면 set을 거짓으로변경
            set = false
        }
        else if count == 1{
            set = true //count가 1이면 set을 참으로변경
        }
        if set == true{ //set이 참이면 카운터를 1씩 증가
            count = count + 1
        }
        else if set == false{ //set이 거짓이면 카운터를 1씩 감소
            count = count - 1
        }
        //count의 값만큼의 사진 이름을 불러드린다
        imageView.image = UIImage(named: "frame\(count).png");
        label.text = String(count)
    }
    
   


}

