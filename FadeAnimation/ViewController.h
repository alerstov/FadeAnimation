//
//  ViewController.h
//  FadeAnimation
//
//  Created by Lion User on 05.08.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FadeAnimView.h"

@interface ViewController : UIViewController
@property (retain, nonatomic) IBOutlet FadeAnimView *fadeAnimView;
@property (retain, nonatomic) IBOutlet UITextField *durationText;
@property (retain, nonatomic) IBOutlet UITextField *easyText;

- (IBAction)click:(id)sender;
- (IBAction)click2:(id)sender;
- (IBAction)fadeStop:(id)sender;
- (IBAction)fadeToggle:(id)sender;
- (IBAction)koefChanged:(id)sender;
- (IBAction)durationChanged:(id)sender;
@end
