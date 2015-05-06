//
//  SingletonTool.m
//  IBM
//
//  Created by love_ping891122 on 14-5-29.
//  Copyright (c) 2014年 love_ping891122. All rights reserved.
//

#import "SingletonTool.h"

@implementation SingletonTool

static SingletonTool *tool;


//tool工具单例实现
+(instancetype)shareTool
{
    
    if (tool == NULL) {
        
        //同步块，线程安全的创建实例
         @synchronized(self)
        {
            //一次只能有一个线程进去，保证创建
            static dispatch_once_t onceToken;
            
            dispatch_once(&onceToken, ^{
                
                if (tool==nil) {
                    tool = [[SingletonTool alloc]init];
                }
            });
        }
        
    }
    return tool;
}



@end
