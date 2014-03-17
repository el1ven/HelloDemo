//
//  ViewController.m
//  HelloDemo
//
//  Created by el1ven on 14-3-17.
//  Copyright (c) 2014年 el1ven. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize userOutput;
@synthesize userInput;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickAction:(id)sender {
    self.userOutput.text = self.userInput.text;//下面输入，上面显示
}

-(BOOL)textFieldShouldReturn:(UITextField *)theTextField{//实现委托的方法，使得键盘消失
    if(theTextField == self.userInput){//一个UI控件可能有多个委托对象，所以要检测一下
        [theTextField resignFirstResponder];//当文本框不是第一响应者的时候，键盘就会消失了
    }
    return YES;
}




























@end
