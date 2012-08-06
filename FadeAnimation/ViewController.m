//
//  ViewController.m
//  FadeAnimation
//
//  Created by Lion User on 05.08.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController
@synthesize fadeAnimView;
@synthesize durationText;
@synthesize easyText;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSString* dog_1 = @"winter_dog_1.png";
    NSString* dog_2 = @"winter_dog_2.png";

    [self.fadeAnimView createLayers:dog_1 :dog_2];
    [self.fadeAnimView setPosition:CGPointMake(20, 200)];
    [self.fadeAnimView setDuration:1.0];
}

- (void)viewDidUnload
{
    [self setFadeAnimView:nil];
    [self setDurationText:nil];
    [self setEasyText:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)dealloc {
    [fadeAnimView release];
    [durationText release];
    [easyText release];
    [super dealloc];
}

- (IBAction)click:(id)sender {
    [self.fadeAnimView fadeIn];
}

- (IBAction)click2:(id)sender {
    [self.fadeAnimView fadeOut];
}

- (IBAction)fadeStop:(id)sender {
    [self.fadeAnimView fadeStop];
}

- (IBAction)fadeToggle:(id)sender {
    [self.fadeAnimView fadeToggle];
}

- (IBAction)koefChanged:(id)sender {
    UISlider* slider = (UISlider*)sender;
    [self.fadeAnimView setEasyKoef:slider.value];
    self.easyText.text = [[NSNumber numberWithFloat:slider.value] stringValue];
}

- (IBAction)durationChanged:(id)sender {
    UISlider* slider = (UISlider*)sender;
    [self.fadeAnimView setDuration:slider.value];
    self.durationText.text = [[NSNumber numberWithFloat:slider.value] stringValue];
}
@end
