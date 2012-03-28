//
//  GamesViewController.h
//  iHome
//
//  Created by Jeevan Kumar Geddam on 3/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GamesViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>
{
    UITableView *gamesTableView;
    NSMutableArray *tableViewContents;
    NSMutableArray *imageArray;
}

@property(nonatomic, retain) IBOutlet UITableView *gamesTableView;

@end
