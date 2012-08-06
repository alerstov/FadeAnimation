//
//  FadeLayer.h
//  FadeAnimation
//
//  Created by Lion User on 06.08.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

@interface FadeLayer : CALayer

@property (nonatomic, assign) float fadeDuration;   // sec
@property (nonatomic, assign) float easyKoef;       // 0.0 - 1.0

-(void)setImage:(NSString *)image;

-(void)fadeIn;
-(void)fadeOut;
-(void)fadeToggle;
-(void)fadeStop;

@end
