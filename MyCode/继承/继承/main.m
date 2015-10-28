//
//  main.m
//  继承
//
//  Created by a004779 on 15/10/22.
//  Copyright © 2015年 zelo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Myclass.h"
#import "MySubClass.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        NSLog(@"Hello, World!");
        Myclass *mc=[[Myclass alloc]init];
        mc.className=@"一班";
         NSLog(@"MC name %@",mc.className);
        MySubClass *msc=[[MySubClass alloc]init];
        msc.className=@"二班";
        NSLog(@"msc name %@",msc.className);
        
        [mc report];
        [msc report];
        
    }
    return 0;
}
