//
//  MusicVideosViewController.h
//  iHome
//
//  Created by Jeevan Kumar Geddam on 3/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MusicVideosViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
{
    UITableView *musicVideoTableView;
    NSMutableArray *tableViewContents;
    NSMutableArray *imageArray;
}

@property(nonatomic, retain) IBOutlet UITableView *musicVideoTableView;

@end
