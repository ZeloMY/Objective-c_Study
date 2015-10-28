//
//  main.m
//  多态
//
//  Created by a004779 on 15/10/22.
//  Copyright © 2015年 zelo. All rights reserved.
//

#import <Foundation/Foundation.h>
//头文件可继承
//#import "Printer.h"
#import "ColorPrinter.h"
#import "BlackPrinter.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Printer *pr=[[Printer alloc]init];
        [pr print];
        
        ColorPrinter *cpr=[[ColorPrinter alloc]init];
        [cpr print];
        BlackPrinter *bpr=[[BlackPrinter alloc]init];
        [bpr print];
        
        Printer *printer=[[ColorPrinter alloc]init];
        [printer print];
        
    }
    return 0;
}
