//
//  ViewController.m
//  CommitAnimationsSlideIn
//
//  Created by 廣川政樹 on 2013/05/07.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property UILabel *animationLabel;

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
  [self initAnimationLabel];
	[self slideInAnimation];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}

//アニメーションさせるラベルを初期化
- (void)initAnimationLabel
{
  _animationLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 568, 320, 568)];
  _animationLabel.backgroundColor = [UIColor blueColor];
  [self.view addSubview:_animationLabel];
}

//スライドインアニメーション
- (void)slideInAnimation
{
  //アニメーション開始
  [UIView beginAnimations:nil context:NULL];
  //アニメーション秒数
  [UIView setAnimationDuration:1.0f];
  //デリゲート指定
  [UIView setAnimationDelegate:self];
  //アニメーションの目標値を指定
  [_animationLabel setFrame:CGRectMake(0, 0, 320, 568)];
  //アニメーション実行
  [UIView commitAnimations];
}

@end
