//
//  ViewController.m
//  AlertViewActionSheetSample
//
//  Created by 张幕阳 on 15/11/2.
//  Copyright © 2015年 zelo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIAlertViewDelegate,UIActionSheetDelegate>
-(IBAction)testAlertView:(id)sender;
-(IBAction)testActionSheet:(id)sender;

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

//警告窗  实现UIAlertViewDelegate代理
-(IBAction)testAlertView:(id)sender{
    UIAlertView *alertView=[[UIAlertView alloc] initWithTitle:@"Alert" message:@"这是一个弹窗" delegate:self cancelButtonTitle:@"关闭" otherButtonTitles:@"确定", nil];
    [alertView show];
    
    
}
#pragma mark --实现UIAlertViewDelegate
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    NSLog(@"buttonindex = %i",buttonIndex);
}



-(IBAction)testActionSheet:(id)sender{

    UIActionSheet *actionsheet=[[UIActionSheet alloc] initWithTitle:nil delegate:self cancelButtonTitle:@"最下边" destructiveButtonTitle:@"第二个" otherButtonTitles:@"第三个" , nil];
    actionsheet.actionSheetStyle=UIActionSheetStyleAutomatic;
    [actionsheet showInView:self.view];
    
}
#pragma mark --实现UIActionSheetDelegate
-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
    NSLog(@"buttonIndex = %i", buttonIndex);
}

@end
