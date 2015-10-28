//
//  People.m
//  类与对象
//
//  Created by a004779 on 15/10/22.
//  Copyright © 2015年 zelo. All rights reserved.
//

#import "People.h"

@implementation People
{
    int _peopleAge;
    int _peopleSex;
}
//- (instancetype)init
//{
//    self = [super init];
//    if (self) {
//        _peopleName=@"李四";
//    }
//    return self;
//}
//方法实现
- (void) setName:(NSString *)name
{
    _peopleName =name;
}


-(NSString *) getName{
    return _peopleName;
}
/*
 + -方法互掉
 */
-(void)report
{

    NSLog(@"-方法");
    [People repotr1];
}
+(void)repotr1
{
//    [[People alloc] report];
    NSLog(@"+方法");
    // 只能调用静态变量
}



-(int) showWithA:(int)a
{
    return a;
}
-(int)showWithB:(int)a andb:(int) b
{
    return a+b;
}

//初始化方法
-(instancetype)init
{
    self = [super init];
    if (self) {
        _peopleName=@"mali";
        _peopleAge=15;
    }
    return self;
}
//自定义初始化方法
-(instancetype)initWithPeopleName:(NSString *)peopleName andPeopleAge:(int)peopleAge
{
    self = [super init];
    if (self) {
        _peopleName=self = [super init];
        if (self) {
            _peopleName=peopleName;
            _peopleAge=peopleAge;
        }
        return self;;
        _peopleAge=15;
    }
    return self;
    
}

@end
