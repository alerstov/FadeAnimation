//
//  FadeAnimView.h
//  FadeAnimation
//
//  Created by Lion User on 05.08.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface FadeAnimView : UIView

-(void) createLayers:(NSString*)image1 :(NSString*)image2;  
-(void) setPosition:(CGPoint)position;
-(void) setEasyKoef:(float)easyKoef;    // 0.0 - linear interpolation, 1.0 - max easyInOut effect
-(void) setDuration:(float)duration;    // ms

-(void)fadeIn;
-(void)fadeOut;
-(void)fadeToggle;
-(void)fadeStop;

@end
