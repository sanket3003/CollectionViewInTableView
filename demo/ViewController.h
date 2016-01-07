//
//  ViewController.h
//  demo
//
//  Created by Sanket Bhavsar on 12/31/15.
//  Copyright (c) 2015 Sanket Bhavsar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"
#import "ThirdViewController.h"

@interface ViewController : UIViewController <UICollectionViewDataSource, UICollectionViewDelegate, UITableViewDataSource, UITableViewDelegate>
{
    NSArray *tcellname,*ccellname;
}
@property(nonatomic) long i;
@property(strong,nonatomic) UICollectionView *collect;
@property(strong,nonatomic) UILabel *lbl;
@property(strong,nonatomic) UILabel *lbltable;
@end

