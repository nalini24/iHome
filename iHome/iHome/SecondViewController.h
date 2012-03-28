//
//  SecondViewController.h
//  iHome
//
//  Created by Nalini Priya Ravindran on 3/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
{
    UITableView *secondTableView;
    NSMutableArray *tableViewContents;
    NSMutableArray *imageArray;
}

@property(nonatomic,retain) IBOutlet UITableView *secondTableView;
@end
