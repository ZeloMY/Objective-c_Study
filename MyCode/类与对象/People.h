//
//  People.h
//  类与对象
//
//  Created by a004779 on 15/10/22.
//  Copyright © 2015年 zelo. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface People : NSObject
{
    //成员变量  年龄  姓名  性别
    //想调用通过@public  调用时加上->指针调用
    NSString *_peopleName;
    //成员变量写在h文件或卸载m文件都可以 成员属性写在H文件中
//    int _peopleAge;
//    int _peopleSex;
    
}
//属性  为了能让类外访问成员变量
//属性就是成员变量的外部接口
//新版本中的成员属性直接定义可动态添加成员变量
@property (nonatomic,strong)NSString *peopleName;
@property(nonatomic)int peopleAge;
//函数（方法）声明
- (void) setName:(NSString *)name;


-(NSString *) getName;
/*
 声明方法
 -方法代表对象方法
 调用时候[p1 report]
 +方法代表类方法
 调用时候[People report]用类名来调用  继承自NSObject      // 只能调用静态变量
 

 void 代表返回值
 
 函数名(去掉函数类型  去掉参数类型去掉参数名)  showWithA:、
 showWithB: andb:
 
 */

-(void)report;
+(void)repotr1;
-(int) showWithA:(int)a;
-(int)showWithB:(int)a andb:(int) b;

//初始化方法  id 可以返回随意类型  instancetype当前类类型  在初始化方法中没有任何区别    其他地方id容易出现错误
-(id)init;
-(instancetype) init;

//自定义初始化方法
-(instancetype)initWithPeopleName:(NSString *)peopleName andPeopleAge:(int)peopleAge;





@end
