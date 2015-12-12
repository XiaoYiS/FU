//
//  MyViewController.m
//  ForU
//
//  Created by yihaiyang on 15/12/12.
//  Copyright © 2015年 yihaiyang. All rights reserved.
//

#import "MyViewController.h"
#import "LoginCell.h"
@interface MyViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic, strong) UITableView *tableView;

@end

@implementation MyViewController
- (UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc]initWithFrame:CGRectZero style:(UITableViewStyleGrouped)];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.tableFooterView = [UIView new];
        //暂时定义高度，方便以后的自适应
        _tableView.estimatedRowHeight = UITableViewAutomaticDimension;
        [self.view addSubview:_tableView];
        [_tableView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.mas_equalTo(0);
        }];
        //刷新操作，
        //注册
        [_tableView registerClass:[LoginCell class] forCellReuseIdentifier:@"LoginCell"];
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
    }
    return _tableView;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.tableView reloadData];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 4;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (section == 0) {
        return 1;
    }else if(section == 1){
        return 3;
    }else if(section == 2){
        return 1;
    }else{
        return 1;
    }
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
      #warning TODO 设置图片--第三方登陆的读取信息即可，也可以自己设置自定义
    if (indexPath.section == 0) {
        LoginCell *cell = [tableView dequeueReusableCellWithIdentifier:@"LoginCell"];
        //判断是否登陆
        [cell.iconView.imageView setImage:[UIImage imageNamed:@""]];
        cell.nameLb.text = @"未登陆";
        return cell;
    }
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;

    if (indexPath.section == 1){
        if (indexPath.row == 0) {
            cell.textLabel.text = @"邀请好友";
        }else if (indexPath.row == 1){
            //情侣，闺蜜，基友
            cell.textLabel.text = @"我的关系";
        }else if (indexPath.row == 2){
            cell.textLabel.text = @"我的萌宠";
        }
    }else if (indexPath.section == 2){
        cell.textLabel.text = @"皮肤切换";
    }else if(indexPath.section == 3){
        cell.textLabel.text = @"设置";
    }
    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //取消选择状态
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    //点击之后进去的跳转界面
    if (indexPath.section == 0) {
       //第三方登陆
    }else if (indexPath.section == 1){
        if (indexPath.row == 0) {
          //微信，微博，qq，联系人
        }else if (indexPath.row == 1){
            //情侣，闺蜜，基友segment
           
        }else if (indexPath.row == 2){
           //萌宠成长
        }
    }else if (indexPath.section == 2){
       //tableview的皮肤切换
    }else{
       //设置===消息提醒，用户反馈，账号安全，//section关于，退出，
    }

}
//移除Xcode7 之后的分割线
kRemoveCellSeparator
- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return UITableViewAutomaticDimension;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
