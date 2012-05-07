//
//  FirstViewController.m
//  SudoTest
//
//  Created by 可可 王 on 12-5-7.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "FirstViewController.h"
#import "ModeSelectViewController.h"
#import "RankViewController.h"
#import "GameViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

@synthesize modeVC;
@synthesize rankVC;
@synthesize gameVC;

#pragma mark - ButtonAction

-(void)returnHomePageFromIndex:(int)pageIndex
{
    switch (pageIndex) {
        case RANK_PAGE:
                [self.rankVC.view removeFromSuperview];
            break;
        case MODE_PAGE:
                [self.modeVC.view removeFromSuperview];
            break;
            
        default:
            break;
    }

}

/*游戏模式选择*/
-(IBAction)ModeSelect:(id)sender
{
    ModeSelectViewController *modeController =
    [[ModeSelectViewController alloc]initWithNibName:@"ModeSelectViewController"                  
                                              bundle:nil];
    modeController.delegate = self;
    
    self.modeVC = modeController;
    [modeController release];
    
    [self.view addSubview:self.modeVC.view];
    
}
/*游戏排行*/
-(IBAction)RankList:(id)sender
{
    RankViewController *rankController =  [[RankViewController alloc]initWithNibName:@"RankViewController" 
                                                                              bundle:nil];
    rankController.delegate = self;
    
    self.rankVC = rankController;
    [rankController release];
    
    [self.view addSubview:self.rankVC.view];

   }
/*游戏开始*/
-(IBAction)StartGame:(id)sender
{
    GameViewController *gameController = [[GameViewController alloc]initWithNibName:@"GameViewController" 
                                                                             bundle:nil];
    self.gameVC = gameController;
    [gameController release];
    
    [self.view addSubview:self.gameVC.view];
    
}

#pragma mark -

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}



@end
