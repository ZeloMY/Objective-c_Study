//
//  main.m
//  lesson1
//
//  Created by a004779 on 15/10/21.
//  Copyright © 2015年 zelo. All rights reserved.
//
/*
 sdf
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //打印
        //        NSLog(@"Hello, World!");
        //NSLog(@"张幕阳");
        
        int a=0;//定义时附上默认值
        int b=0;
        a=5;b=6;
        int c=(a+b)*2;
        
        float d=0.1;
        double e=0.89;
        char f='A';
        NSString :@"hello word";//字符串
        //限定词
        long int  g=0;
        long long int h=2;
        short int i=9;
        unsigned int j=89;//无符号
        signed int k=a;//有符号  + - 少一位
        //        指针类型*p
        //        自定义类型
        //        万能类型id
        NSLog(@"a的值为：%d",a);
        a++;
        NSLog(@"a的值为：%d",a);
        ++a;
        NSLog(@"a的值为：%d",a);
        
        NSLog(@"c的值为：%d",c);
        //        表达式
        //        = 表示赋值
        //        一元运算符++  --
        //        二元运算符 + - * % /
        //        三目运算  ？ ：
        NSLog(@"9%2= %d",9%2);
        //        逻辑运算符
        //        > < >= <= == !=
        
        
    }
    return 0;
}
