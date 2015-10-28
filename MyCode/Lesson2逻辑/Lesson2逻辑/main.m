//
//  main.m
//  Lesson2逻辑
//
//  Created by a004779 on 15/10/21.
//  Copyright © 2015年 zelo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World! %d",argc);
        for (int i=0; i<argc; i++) {
            NSLog(@"Hello, World! %s",argv[i]);
            
        }
        int a=1,b=2;
        if(a<b){NSLog(@"这句话是真的");}
        //        while循环
        while (a<3) {
            NSLog(@"a= %d",a);
            a++;
        }
        //        for循环
        for (int c=0; c<5; c++) {
            NSLog(@"c= %d",c);
        }
        //        do while循环
        do{
            NSLog(@"a= %d",a);
            a++;
        }while(a<5);
        //        break 于continue; switch
        switch (a) {
            case 2:
                NSLog(@"a等于三哦");
                break;
                
            default:
                NSLog(@"a等于默认哦哦");
                break;
        }
        NSLog(@"求和结果 %d",sum(5, 6));
        
        
    }
    return 0;
}

int sum(int a,int b){
    return a+b;
}

