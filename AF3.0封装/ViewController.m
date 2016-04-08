//
//  ViewController.m
//  AF3.0封装
//
//  Created by syq on 16/2/29.
//  Copyright © 2016年 lanou.syq. All rights reserved.
//
//1.GET http://mobile.ximalaya.com/mobile/discovery/v1/rankingList/track?device=android&key=ranking%3Atrack%3Aplayed%3A1%3A0&pageId=1&pageSize=40
#import "ViewController.h"
#import "AFManegerHelp.h"
@interface ViewController ()<AFManegerHelpDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    NSString *url = @"http://mobile.ximalaya.com/mobile/discovery/v1/rankingList/track?device=android&key=ranking%3Atrack%3Aplayed%3A1%3A0&pageId=1&pageSize=40";
    /*
     //1.get 请求
     
    [[AFManegerHelp shareAFManegerHelp] Get:url parameters:nil success:^(id responseObjeck) {
        NSLog(@"%@",responseObjeck);
    } failure:^(NSError *error) {
        NSLog(@"%@",error);
    }];
     */
    
    /*
     //2.post请求
    NSString *baseUrl = @"http://www.bangrich.com/phone/article/query.html";
    NSDictionary *dic = @{@"tsort":@"001001",@"requestType":@"77",@"pageNo":@1};
    
    [[AFManegerHelp shareAFManegerHelp] POST:baseUrl parameters:dic success:^(id responseObjeck) {
        NSLog(@"%@",responseObjeck);
        
    } failure:^(NSError *error) {
        NSLog(@"%@",error);
    }];
     */
    
    
    /*
    //delegate
    [AFManegerHelp shareAFManegerHelp].delegate = self;
    [[AFManegerHelp shareAFManegerHelp] Get:url parameters:nil];
     */
    
    
    /*
    UIImage *image = [UIImage imageNamed:@"1"];
    NSData *data = UIImageJPEGRepresentation(image, 0.2);
    [AFManegerHelp asyncUploadFileWithData:data name:@"file" fileName:@"data.jpg" mimeType:@"image/jpeg" parameters:nil success:^(id responseObject) {
        NSLog(@"%@",responseObject);
    } failture:^(NSError *error) {
        NSLog(@"%@",error);
    }];
     */
    
//    NSString *urlString = @"http://114.215.236.27:8080/hmfl3/user/getQuestionList.json";
//    NSString *urlString = @"http://api.izhangchu.com/";
    //    NSString *bodyString = @"name=%E8%82%A1%E6%9D%83&pageNo=1&pageSize=15";

//    NSDictionary *dic = @{@"methodName":@"SceneHome",@"version":@"4.3.2"};
//
//    [AFManegerHelp POST:urlString parameters:dic success:^(id responseObjeck) {
//        NSLog(@"%@",responseObjeck);
//        
//    } failure:^(NSError *error) {
//        NSLog(@"%@",error);
//    }];
    /*
    [AFManegerHelp Get:@"http://127.0.0.1/Login/Login2.php?userName=haha&passWord=123" parameters:nil success:^(id responseObjeck) {
        
        NSLog(@"%@",responseObjeck);
        
    } failure:^(NSError *error) {
        NSLog(@"%@",error);
    }];
    
    [AFManegerHelp POST:@"url" parameters:@{@"key":@"value"} success:^(id responseObjeck) {
        
    } failure:^(NSError *error) {
        
    }];
     */
    
    [AFManegerHelp POST:@"http://127.0.0.1/Login/Login2.php" parameters:@{@"name":@"lisi", @"pass":@"123"} success:^(id responseObjeck) {
        
        NSLog(@"%@", responseObjeck);
        
    } failure:^(NSError *error) {
        NSLog(@"%@", error);
    }];
    
}

-(void)aFManegerHelp:(AFManegerHelp *)afManagerHelp successResponseObject:(id)responseObject{
    NSLog(@"%@",responseObject);
    
//     __block int i = 1024;
//    int j = 1;
//    void (^blk)(void);
//    void (^blkInHeap)(void);
//    blk = ^{ printf("%d, %d\n", i, j);
//    };//blk在栈里
//    blkInHeap = Block_copy(blk);//blkInHeap在堆里
    
}

- (void)fooBar  {
//    _oi = 1;
//    OBJ1* oj = self;
    void (^oblk)(void) = ^{
//        printf("%d\n", oj.oi);
    };
    void (^oblkInHeap)(void) = [oblk copy];//oblkInHeap在堆中
}



@end
