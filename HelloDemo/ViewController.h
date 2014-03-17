//
//  ViewController.h
//  HelloDemo
//
//  Created by el1ven on 14-3-17.
//  Copyright (c) 2014年 el1ven. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>//实现协议，让键盘输入后消失

@property (strong, nonatomic) IBOutlet UILabel *userOutput;//界面上方输出结果

@property (strong, nonatomic) IBOutlet UITextField *userInput;//界面下方输入文本信息

- (IBAction)clickAction:(id)sender;//按钮触发点击事件
@end
