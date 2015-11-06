//
//  ViewController.m
//  NavigationBarSample
//
//  Created by 张幕阳 on 15/11/3.
//  Copyright © 2015年 zelo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property(weak,nonatomic)IBOutlet UILabel *label;

-(IBAction)save:(id)sender;
-(IBAction)Add:(id)sender;

@end

@implementation ViewController

-(IBAction)save:(id)sender{
    self.label.text=@"点击save";
}
-(IBAction)Add:(id)sender{
    self.label.text=@"点击add";
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
