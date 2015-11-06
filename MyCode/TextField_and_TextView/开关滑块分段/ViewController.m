//
//  ViewController.m
//  开关滑块分段
//
//  Created by a004779 on 15/10/27.
//  Copyright © 2015年 zelo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)demoAlertView:(id)sender;
- (IBAction)testAlertView:(id)sender;
@property (weak, nonatomic) IBOutlet UISwitch *leftSwitch;

@property (weak, nonatomic) IBOutlet UISwitch *RightSwitch;

@property (weak, nonatomic) IBOutlet UILabel *SliderValue;
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

//方法 设置两个滑块的开关值保持一致
-(IBAction)switchValueChanged:(id)sender
{
    UISwitch *witchSwitch=(UISwitch *)sender;
    BOOL  setting =witchSwitch.isOn;
    [self.leftSwitch setOn:setting animated:YES];
    [self.RightSwitch setOn:setting animated:YES];
}


//滑块控件
-(IBAction)sliderValue:(id)sender
{
    UISlider *slider=(UISlider *)sender;
    int progressAsint=(int)(slider.value);
    NSString *newText=[[NSString alloc]initWithFormat:@"%d",progressAsint];
    self.SliderValue.text=newText;
}

-(IBAction)touchDown:(id)sender
{
    if(self.leftSwitch.hidden==YES)
    {
        self.RightSwitch.hidden=NO;
        self.leftSwitch.hidden=NO;
    }
    else
    {
        self.RightSwitch.hidden=YES;
        self.leftSwitch.hidden=YES;
        
    }
}

- (IBAction)demoAlertView:(id)sender {
}

- (IBAction)testAlertView:(id)sender {
}
@end
