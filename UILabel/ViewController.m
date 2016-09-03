//
//  ViewController.m
//  UILabel
//
//  Created by 杜杜兴 on 16/6/8.
//  Copyright © 2016年 杜杜兴. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //文本标签
    UILabel *label=[[UILabel alloc] init];
    label.frame=CGRectMake(50, 100, 300, 300);
    label.backgroundColor=[UIColor blueColor];
    label.text=@"Lable label.font=[UIFont systemFontOfSize:20];";
    label.textAlignment=NSTextAlignmentCenter;
    label.textColor=[UIColor yellowColor];
    
    //设置字体大小
    label.font=[UIFont systemFontOfSize:20];
    //设置字体加粗
    label.font=[UIFont boldSystemFontOfSize:3];
    //设置字体斜体
    label.font=[UIFont italicSystemFontOfSize:25];
    
    //设置字体换行模式
    label.lineBreakMode=NSLineBreakByWordWrapping;
    
    //设置字体显示的行数(0表示不限制行数)
    label.numberOfLines=0;
    
    //根据字符串的大小计算label的大小
    CGSize size=[label.text sizeWithFont:label.font constrainedToSize:CGSizeMake(355, 1000) lineBreakMode:NSLineBreakByWordWrapping];
    label.frame=CGRectMake(label.frame.origin.x, label.frame.origin.y, label.frame.size.width, label.frame.size.width);
    [self.view addSubview:label];
    //label.alpha=0;
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
