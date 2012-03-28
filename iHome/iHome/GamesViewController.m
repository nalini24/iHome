//
//  GamesViewController.m
//  iHome
//
//  Created by Jeevan Kumar Geddam on 3/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "GamesViewController.h"

@interface GamesViewController ()

@end

@implementation GamesViewController
@synthesize gamesTableView;

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
	// Do any additional setup after loading the view.
    
    gamesTableView.delegate=self;
    //tableViewContents=[[NSMutableArray alloc] initWithObjects:@"Red",@"Blue",@"Green",@"Yellow",@"Brown",@"White", nil];
    UIImage *image1=[UIImage imageNamed:@"fifaicon.png"];
    UIImage *image2=[UIImage imageNamed:@"freebyicon.png"];
    UIImage *image3=[UIImage imageNamed:@"wallpapericon.png"];
    UIImage *image4=[UIImage imageNamed:@"mainicon-about.png"];
    UIImage *image5=[UIImage imageNamed:@"gameicon.png"];
    
    imageArray=[[NSMutableArray alloc] initWithObjects:image1,image2,image3,image4,image5, nil];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}


#pragma -
#pragma table view delegate methods
-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 160.0f;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}



-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{  
    return [imageArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *CellIdentifier = @"CountryCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    tableView.separatorStyle=UITableViewCellSeparatorStyleNone;
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    UIImageView *cellImageView=[[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 320, 160)];
    cellImageView.image=[imageArray objectAtIndex:indexPath.row];
    [cell addSubview:cellImageView];
    
    //NSLog(@"%@",[tableViewContents objectAtIndex:indexPath.row]);
    
    // cell.textLabel.text = [tableViewContents objectAtIndex:indexPath.row];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath 
{
    
    
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
