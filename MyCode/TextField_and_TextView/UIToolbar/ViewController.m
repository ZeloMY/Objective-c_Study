//
//  ViewController.m
//  UIToolbar
//
//  Created by 张幕阳 on 15/11/3.
//  Copyright © 2015年 zelo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
-(IBAction)save:(id)sender;
-(IBAction)open:(id)sender;
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

-(IBAction)save:(id)sender{
    self.label.text=@"点击save";
}

-(IBAction)open:(id)sender{
    self.label.text=@"点击open";
}
@end
