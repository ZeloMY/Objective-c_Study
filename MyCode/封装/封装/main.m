//
//  main.m
//  封装
//
//  Created by a004779 on 15/10/22.
//  Copyright © 2015年 zelo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyClass.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //调用
        MyClass *mc=[[MyClass alloc]init];
        mc.className=@"三年一班";
        [mc repotr];
        //public 在类外通过->访问
        mc->_classMemo=100;
        
        
        
    }
    return 0;
}
