//
//  NSBundle+BRAddressPickerView.m
//  BRPickerViewDemo
//
//  Created by gaokun on 2021/12/16.
//  Copyright © 2021 irenb. All rights reserved.
//

#import "NSBundle+BRAddressPickerView.h"
#import "BRAddressPickerView.h"

@implementation NSBundle (BRAddressPickerView)

#pragma mark - 获取 BRPickerView.bundle
+ (instancetype)br_addressPickerBundle {
    static NSBundle *pickerBundle = nil;
    if (pickerBundle == nil) {
        /*
            先拿到最外面的 bundle。
            对 framework 链接方式来说就是 framework 的 bundle 根目录，
            对静态库链接方式来说就是 target client 的 main bundle，
            然后再去找下面名为 BRPickerView 的 bundle 对象。
         */
        NSBundle *bundle = [NSBundle bundleForClass:[BRAddressPickerView class]];
        NSURL *url = [bundle URLForResource:@"BRAddressPickerView" withExtension:@"bundle"];
        pickerBundle = [NSBundle bundleWithURL:url];
    }
    return pickerBundle;
}

#pragma mark - 获取城市JSON数据
+ (NSArray *)br_addressJsonArray {
    static NSArray *cityArray = nil;
    if (cityArray == nil) {
        // 获取本地JSON文件
        NSString *filePath = [[self br_addressPickerBundle] pathForResource:@"BRCity" ofType:@"json"];
        NSData *data = [NSData dataWithContentsOfFile:filePath];
        cityArray = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
    }
    return cityArray;
}

@end
