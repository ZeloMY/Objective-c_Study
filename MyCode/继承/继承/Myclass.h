//
//  Myclass.h
//  继承
//
//  Created by a004779 on 15/10/22.
//  Copyright © 2015年 zelo. All rights reserved.
//

#import <Foundation/Foundation.h>


//基类
@interface Myclass : NSObject
{
    int _classInt;
    @private
    int _classMemo;
    
}
@property (nonatomic ,strong)NSString *className;

-(void)report;
@end
