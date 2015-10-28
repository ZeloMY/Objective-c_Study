//
//  main.m
//  类与对象
//
//  Created by a004779 on 15/10/22.
//  Copyright © 2015年 zelo. All rights reserved.
//

#import <Foundation/Foundation.h>
//导入头文件
#import "People.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //        NSLog(@"Hello, World!");
        //        [类名 方法名]
        //        [对象名 方法名]
        //        alloc -为对象分配内从空间
        //        init  进行初始化操作
        People *p1=[[People alloc] init];
        People *p2=[[People alloc] init];
        People *p3=[[People new] init];

//        NSLog(@"name获取的为 %d",_name);
        //        打印一下对象
//        NSLog(@"p1 -%p",p1);
        //三个为独立对象
        p1.peopleName=@"张三";
//        NSLog(@"peopleName %@",[p1 getName]);
        
        //方法调用
        [People repotr1];
        
        
        
        //带参数的函数调用
        int a1=[p1 showWithA:10];
        NSLog(@"返回参数 %d" ,a1);
        int a2=[p1 showWithB:10 andb:12];
        NSLog(@"返回参数 %d" ,a2);
        //调用自定义初始化方法
         People *p4=[[People alloc] initWithPeopleName:@"zhangsan" andPeopleAge:18];
        
        
    }
    return 0;
}
