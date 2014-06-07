//
//  ViewController.m
//  openFileType
//
//  Created by 容芳志 on 14-6-7.
//  Copyright (c) 2014年 rongfzh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIImageView *imageView ;
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
	imageView = [[UIImageView alloc] init];
    [self.view addSubview:imageView];
}


- (void)openPng:(NSString*)string
{
    UIImage *image = [[UIImage alloc] initWithContentsOfFile:string];
    float width = image.size.width;
    float height = image.size.height;
    if (width > 320) {
        height = (height/width) * 300;
        width = 300;
    }
    
    CGRect frame = CGRectMake(0, 20, width, height);
    imageView.frame = frame;
    
    imageView.image = image;
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
