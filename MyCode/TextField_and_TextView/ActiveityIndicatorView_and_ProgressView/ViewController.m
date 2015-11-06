//
//  ViewController.m
//  ActiveityIndicatorView_and_ProgressView
//
//  Created by 张幕阳 on 15/10/29.
//  Copyright © 2015年 zelo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIAlertViewDelegate>
{
    // 定时器
    NSTimer *myTimer;
}

@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *MyActivityIndicatorView;


//UI上的控件

@property (weak, nonatomic) IBOutlet UIProgressView *myProgressView;

@property (nonatomic, strong)UIProgressView *progrrss;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //将空间显示在页面上
    _progrrss = [[UIProgressView alloc] initWithFrame:CGRectMake(150, 400, 100, 20)];

    [self.view addSubview:_progrrss];
    
    
//    __weak UIProgressView *pro = _myProgressView;
//    pro.tag = 100;
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
// upload 事件  加载条运作

-(IBAction)startToMove:(id)sender
{
    if([self.MyActivityIndicatorView isAnimating])
    {
        [self.MyActivityIndicatorView stopAnimating];
    }
    else{
        [self.MyActivityIndicatorView startAnimating];
    }
}
//进度条运作
-(IBAction)downloadProgress:(id)sender
{
    
    myTimer =[NSTimer scheduledTimerWithTimeInterval:1.0
                                              target:self
                                            selector:@selector(download)
                                            userInfo:nil
                                             repeats:YES];
}
//方法
-(void)download{
//    UIProgressView *pro1 = (UIProgressView *)[self.view viewWithTag:100];
//   pro1.progress=pro1.progress+0.1;
    
    _progrrss.progress = _progrrss.progress + 0.1;
    if(_progrrss.progress== 1)
    {
        [myTimer invalidate];//停止定时器
    
        UIAlertView*alert=[[UIAlertView alloc]initWithTitle:@"下载完毕！" message:@"" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil] ;
        [alert show];
        
        
        
      
    }
    
}

- (IBAction)testAlertView:(UIButton *)sender {
}
@end
