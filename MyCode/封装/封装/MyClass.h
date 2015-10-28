//
//  MyClass.h
//  封装
//
//  Created by a004779 on 15/10/22.
//  Copyright © 2015年 zelo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyClass : NSObject
{
/*
 成员变量访问修饰符问题
 @public
 @private
 @protected
 @package
 */
    @public
    int _classMemo ;
}
@property(nonatomic,strong)NSString *className;
-(void)repotr;

@end
