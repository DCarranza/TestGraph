//
//  ViewController.m
//  TestGraph
//
//  Created by Diego Carranza on 11/16/14.
//  Copyright (c) 2014 tufts.edu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.model = [[NSMutableArray alloc] init];
    BEMSimpleLineGraphView *myGraph = [[BEMSimpleLineGraphView alloc] initWithFrame:CGRectMake(0, 0, 320, 200)];
    myGraph.delegate = self;
    myGraph.dataSource = self;
    [self.view addSubview:myGraph];
    [self populateModel];
    [myGraph reloadGraph];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)numberOfPointsInLineGraph:(BEMSimpleLineGraphView *)graph {
    return 1000; // Number of points in the graph.
}
- (void) populateModel{
    for(int i =0; i<1000;i++){
        [self.model addObject:[NSNumber  numberWithInt:i]];
    }
}
- (CGFloat)lineGraph:(BEMSimpleLineGraphView *)graph valueForPointAtIndex:(NSInteger)index {
        return [self.model[index] floatValue]; // The value of the point on the Y-Axis for the index.
    }

@end
