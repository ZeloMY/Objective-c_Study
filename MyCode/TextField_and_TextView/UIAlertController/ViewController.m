//
//  ViewController.m
//  UIAlertController
//
//  Created by 张幕阳 on 15/11/3.
//  Copyright © 2015年 zelo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

-(IBAction)demoAlertView:(id)sender;
-(IBAction)demoActionSheet:(id)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//通过UIAlertController实现弹窗
-(IBAction)demoAlertView:(id)sender{
    
    //创建并初始化UIAlertController对象  preferredStyle用于设计警告框样式
    UIAlertController *alertController=[UIAlertController alertControllerWithTitle:@"标题" message:@"内容" preferredStyle:UIAlertControllerStyleAlert];
    
    //创建NO  YES按钮  并添加到UIAlertController对象
//      UIAlertAction *qnoAction=[UIAlertAction actionWithTitle:@"NO" style:UIAlertActionStyleDestructive handler:^(UIAlertAction *action){NSLog(@"点击取消按钮");}];
    UIAlertAction *noAction=[UIAlertAction actionWithTitle:@"NO" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action){NSLog(@"点击取消按钮");}];
    
    UIAlertAction *yesAction=[UIAlertAction actionWithTitle:@"YES" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){NSLog(@"点击了确定按钮");}];
//    [alertController addAction:qnoAction];
    [alertController addAction:noAction];
    [alertController addAction:yesAction];
    //设置显示弹出框
    [self presentViewController:alertController animated:true completion:nil];
    
    
}

//通过UIAlertController实现操作表
-(IBAction)demoActionSheet:(id)sender{
    UIAlertController *actionSheetController=[[UIAlertController alloc]init];
    
    UIAlertAction *cancelAction=[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action){NSLog(@"Tap 取消按钮");}];
    
    UIAlertAction *destructiveAction=[UIAlertAction actionWithTitle:@"破坏性按钮"   style:UIAlertActionStyleDestructive  handler:^(UIAlertAction *action){NSLog(@"Tap 破坏性按钮");}];
    
    UIAlertAction *otherAction=[UIAlertAction actionWithTitle:@"其他按钮" style:UIAlertActionStyleDefault  handler:^(UIAlertAction *action){NSLog(@"Tap 其他按钮");}];
    
    [actionSheetController addAction:cancelAction];
    [actionSheetController addAction:destructiveAction];
    [actionSheetController addAction:otherAction];
    //设置显示操作表
    [self presentViewController:actionSheetController animated:true completion:nil];
}

@end
