//
//  ViewController.h
//  ProteinTracker
//
//  Created by Iman Rastkhadivmasouleh on 29/05/2014.
//  Copyright (c) 2014 Iman Rastkhadiv. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HistoryViewController.h"

@interface MainViewController : UIViewController
{
    int total;
    NSMutableArray * historyAmount;
}
@property (weak, nonatomic) IBOutlet UILabel *totalLabel;
@property (weak, nonatomic) IBOutlet UILabel *goalLabel;
@property (weak, nonatomic) IBOutlet UITextField *amountTextField;
- (IBAction)addProtein:(id)sender;
- (IBAction)unwindToMain:(UIStoryboardPopoverSegue *)segue;


@end
