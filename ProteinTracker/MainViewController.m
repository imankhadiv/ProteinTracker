//
//  ViewController.m
//  ProteinTracker
//
//  Created by Iman Rastkhadivmasouleh on 29/05/2014.
//  Copyright (c) 2014 Iman Rastkhadiv. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

-(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
        if(self)
        {
            historyAmount = [[NSMutableArray alloc] init];
        }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

- (IBAction)addProtein:(id)sender {
  
    total+= self.amountTextField.text.intValue;
    self.totalLabel.text = [NSString stringWithFormat:@"%i",total];
    
    [historyAmount addObject:[NSNumber numberWithInt:self.amountTextField.text.intValue]];
    
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.sourceViewController isEqualToString:@"historyView"]){
        
        HistoryViewController *controller = (HistoryViewController *)segue.destinationViewController;
        
        [controller setHistory:historyAmount];
    }
}

-(IBAction)unwindToMain:(UIStoryboardPopoverSegue *)segue
{
    
}
@end
