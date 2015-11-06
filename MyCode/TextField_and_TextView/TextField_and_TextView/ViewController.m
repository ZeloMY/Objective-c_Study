//
//  ViewController.m
//  TextField_and_TextView
//
//  Created by a004779 on 15/10/27.
//  Copyright © 2015年 zelo. All rights reserved.
//

#import "ViewController.h"

//实现委托协议
@interface ViewController ()<UITextFieldDelegate,UITextViewDelegate>
- (IBAction)testActionSheet:(id)sender;




@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)starToMove:(id)sender {
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) viewWillAppear:(BOOL)animated {
    
    //注册键盘出现通知
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector (keyboardDidShow:)
                                                 name: UIKeyboardDidShowNotification object:nil];
    //注册键盘隐藏通知
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector (keyboardDidHide:)
                                                 name: UIKeyboardDidHideNotification object:nil];
    [super viewWillAppear:animated];
}


-(void) viewWillDisappear:(BOOL)animated {
    //解除键盘出现通知
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                    name: UIKeyboardDidShowNotification object:nil];
    //解除键盘隐藏通知
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                    name: UIKeyboardDidHideNotification object:nil];
    
    [super viewWillDisappear:animated];
}
- (IBAction)touchDown:(id)sender {
}

-(void) keyboardDidShow: (NSNotification *)notif {
    NSLog(@"键盘打开");
}

-(void) keyboardDidHide: (NSNotification *)notif {
    NSLog(@"键盘关闭");
}

//通过委托来实现放弃第一响应者
#pragma mark - UITextField Delegate Method
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}


//通过委托来实现放弃第一响应者
#pragma mark - UITextView Delegate  Method
-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    if([text isEqualToString:@"\n"]) {
        [textView resignFirstResponder];
        return NO;
    }
    return YES;
}



- (IBAction)testActionSheet:(id)sender {
}
@end
