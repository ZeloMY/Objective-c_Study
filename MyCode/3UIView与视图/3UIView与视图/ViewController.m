//
//  ViewController.m
//  3UIView与视图
//
//  Created by a004779 on 15/10/26.
//  Copyright © 2015年 zelo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *Label1;
- (IBAction)onClick:(id )sender;

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

- (IBAction)onClick:(id )sender {
    if ([self.Label1.text isEqual: @"HelloWorld"]) {
        self.Label1.text=@"这是一个标签";
    }
    else{
    self.Label1.text=@"HelloWorld";
    }
}
@end
