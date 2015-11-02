//
//  ViewController.m
//  WebView
//
//  Created by a004779 on 15/10/27.
//  Copyright © 2015年 zelo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIWebViewDelegate>

@property (weak, nonatomic) IBOutlet UIWebView *webView;

- (IBAction)testLoadHTMLString:(id)sender;
- (IBAction)testLoadData:(id)sender;
- (IBAction)testLoadRequest:(id)sender;

@end

@implementation ViewController

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

- (IBAction)testLoadHTMLString:(id)sender {
//    获得index文件的全路径
    NSString *htmlPath = [[NSBundle mainBundle] pathForResource:@"index" ofType:@"html"];
    //获取index文件的基本路径
    NSURL *bundleUrl = [NSURL fileURLWithPath:[[NSBundle mainBundle] bundlePath]];
    //声明一个错误对象error
    NSError *error = nil;
    //将文件内容读
    NSString *html = [[NSString alloc] initWithContentsOfFile:htmlPath encoding: NSUTF8StringEncoding error:&error];
    
    if (error == nil) {//数据加载没有错误情况下
    //设置主页文件的基本路径
        [self.webView loadHTMLString:html baseURL:bundleUrl];
    }
    
}

- (IBAction)testLoadData:(id)sender {
    
    NSString *htmlPath = [[NSBundle mainBundle] pathForResource:@"index" ofType:@"html"];
    NSURL *bundleUrl = [NSURL fileURLWithPath:[[NSBundle mainBundle] bundlePath]];
    NSError *error = nil;
    
    NSData *htmlData = [[NSData alloc]  initWithContentsOfFile: htmlPath];
    
    if (error == nil) {//数据加载没有错误情况下
        [self.webView loadData:htmlData MIMEType:@"text/html" textEncodingName:@"UTF-8"baseURL: bundleUrl];
    }
}



- (IBAction)testLoadRequest:(id)sender {
    
    NSURL * url = [NSURL URLWithString: @"http://123.57.73.171:8097/download.html"];
    NSURLRequest * request = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:request];
    self.webView.delegate = self;
}


#pragma mark -- UIWebViewDelegate委托定义方法
- (void)webViewDidFinishLoad: (UIWebView *) webView {
    NSLog(@"%@", [webView stringByEvaluatingJavaScriptFromString:
                  @"document.body.innerHTML"]);
}




@end
