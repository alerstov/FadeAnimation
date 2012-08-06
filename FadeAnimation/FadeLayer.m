//
//  FadeLayer.m
//  FadeAnimation
//
//  Created by Lion User on 06.08.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FadeLayer.h"

@implementation FadeLayer
{
    bool show;
}
@synthesize fadeDuration, easyKoef;

-(id)init
{
    if (self = [super init]){
        self.anchorPoint = CGPointMake(0, 0);
    }
    return self;
}

-(void)setImage:(NSString *)image
{
    UIImage *img = [UIImage imageNamed:image];        
    self.contents = (id)img.CGImage;
    self.frame = CGRectMake(0, 0, img.size.width, img.size.height);    
}

-(void)fadeStop
{
    self.opacity = [[self presentationLayer] opacity];
    [self removeAllAnimations];
}

-(void)fadeIn
{
    show = true; 
    [self fadeToggle];
}

-(void)fadeOut
{
    show = false; 
    [self fadeToggle];
}

-(void)fadeToggle
{
    float currentOpacity = [[self presentationLayer] opacity];
    self.opacity = currentOpacity;
    
    float to = show ? 1.0 : 0.0;        
    float k = show ? 1.0 - currentOpacity : currentOpacity;
    float deltaTime = self.fadeDuration*k;
    
    CABasicAnimation* anim = [self opacityAnimationWithDuration:deltaTime ToValue:to];
    [self addAnimation:anim forKey:@"opacityAnimation"]; 
    
    show = !show;
}

-(CABasicAnimation*)opacityAnimationWithDuration:(float)dur ToValue:(float)toValue
{
    CABasicAnimation* anim = [CABasicAnimation animationWithKeyPath:@"opacity"];
    anim.duration = dur;
    anim.toValue = [NSNumber numberWithFloat:toValue];
    anim.fillMode = kCAFillModeForwards;
    anim.removedOnCompletion = NO;
    anim.delegate = self;
    //anim.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    float k = self.easyKoef/2+0.5;
    anim.timingFunction = [CAMediaTimingFunction 
                           functionWithControlPoints:k :1-k :1-k :k];
    return anim;
}

-(void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag
{
    if (flag){
        [self fadeStop];
    }
}

@end
