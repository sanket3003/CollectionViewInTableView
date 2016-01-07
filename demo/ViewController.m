
//  ViewController.m
//  demo
//
//  Created by Sanket Bhavsar on 12/31/15.
//  Copyright (c) 2015 Sanket Bhavsar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize i;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSArray *one,*two,*three,*four,*five,*six;
    one = [[NSArray alloc]initWithObjects:@"1",@"1",@"1",@"1",@"1",@"1", nil];
    two = [[NSArray alloc]initWithObjects:@"2",@"2",@"2", nil];
    three = [[NSArray alloc]initWithObjects:@"3",@"3",@"3",@"3",nil];
    four =[[NSArray alloc]initWithObjects:@"4",@"4",@"4",@"4",@"4",@"4",@"4",@"4",@"4",@"4",@"4",@"4",nil];
    five =[[NSArray alloc]initWithObjects:@"5",@"5",@"5",@"5",@"5",@"5",@"5",@"5",nil];
    six =[[NSArray alloc]initWithObjects:@"6",@"6",nil];
    tcellname = [[NSArray alloc]initWithObjects:@"s",@"f",@"h",@"fg",@"q",@"a", nil];
    ccellname = [[NSArray alloc]initWithObjects:one,two,three,four,five,six, nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    NSLog(@"count %ld %ld",collectionView.tag,[[ccellname objectAtIndex:collectionView.tag] count]);
  return [[ccellname objectAtIndex:collectionView.tag]count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cCell" forIndexPath:indexPath];
    self.lbl = (UILabel *) [cell viewWithTag:200];
    self.lbl.text = [[ccellname objectAtIndex:collectionView.tag]objectAtIndex:indexPath.row];
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return tcellname.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"tCell"];
    i = indexPath.row;
    self.collect = (UICollectionView *) [cell viewWithTag:100];
    [self.collect setTag:indexPath.row];
    self.lbltable = (UILabel *) [cell viewWithTag:50];
    self.lbltable.text = [tcellname objectAtIndex:indexPath.row];
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row % 2 == 0) {
        [self performSegueWithIdentifier:@"one" sender:indexPath];
    }
    else
        [self performSegueWithIdentifier:@"two" sender:indexPath];
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"one"]) {
        
        // Get destination view
        SecondViewController *sv = [segue destinationViewController];
    }
    if ([[segue identifier] isEqualToString:@"two"]) {
        
        // Get destination view
        ThirdViewController *tv = [segue destinationViewController];
    }

}

@end
