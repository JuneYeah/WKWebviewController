//
//  ViewController.m
//  WKWebViewDemo
//
//  Created by 秦骏 on 2021/11/15.
//

#import "ViewController.h"
#import "WKWebViewController.h"
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@property(nonatomic, strong)UITableView* tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.tableView];
    self.tableView.frame = self.view.frame;
}
-(UITableView*)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc]init];
        _tableView.delegate = self;
        _tableView.dataSource = self;
    }
    return _tableView;
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    NSString * reuseIdentifier = @"UITableViewCell";
   
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:reuseIdentifier];
    }
    cell.textLabel.text = @"WKWebView";
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
 
    WKWebViewController* wkWebViewController = [[WKWebViewController alloc]init];
    UINavigationController* navVC = [[UINavigationController alloc]initWithRootViewController:wkWebViewController];
    [self.navigationController pushViewController:navVC animated:YES];
}




@end
