//
//  FadeAnimView.m
//  FadeAnimation
//
//  Created by Lion User on 05.08.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FadeAnimView.h"
#import "FadeLayer.h"

@implementation FadeAnimView
{
    FadeLayer* layer1;
    FadeLayer* layer2;
}

-(void)createLayers:(NSString*)image1 :(NSString*)image2
{
    layer1 = [FadeLayer layer];
    [layer1 setImage:image1];
    layer1.opacity = 1.0;
    
    layer2 = [FadeLayer layer];
    [layer2 setImage:image2];
    layer2.opacity = 0.0;
    
    [self.layer addSublayer:layer1];    
    [self.layer addSublayer:layer2];    
}

-(void)setPosition:(CGPoint)position
{
    layer1.position = position;
    layer2.position = position;
}

-(void)setEasyKoef:(float)easyKoef
{
    layer1.easyKoef = easyKoef;
    layer2.easyKoef = easyKoef;
}

-(void)setDuration:(float)duration
{
    layer1.fadeDuration = duration/1000;
    layer2.fadeDuration = duration/1000;
}

-(void)fadeStop
{
    [layer1 fadeStop];
    [layer2 fadeStop];
}

-(void)fadeIn
{
    [layer1 fadeIn];
    [layer2 fadeOut];
}

-(void)fadeOut
{
    [layer1 fadeOut];
    [layer2 fadeIn];
}

-(void)fadeToggle
{
    [layer1 fadeToggle];
    [layer2 fadeToggle];
}

@end
