//
//  HistoryViewController.h
//  ProteinTracker
//
//  Created by Iman Rastkhadivmasouleh on 29/05/2014.
//  Copyright (c) 2014 Iman Rastkhadiv. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HistoryViewController : UIViewController
{
    NSMutableArray *history;
}
@property (weak, nonatomic) IBOutlet UILabel *historyLabel;
-(void)setHistory:(NSMutableArray *)h;
@end
