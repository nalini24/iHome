//
//  SecondViewController.m
//  iHome
//
//  Created by Nalini Priya Ravindran on 3/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController
@synthesize secondTableView;
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    secondTableView.delegate=self;
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
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
