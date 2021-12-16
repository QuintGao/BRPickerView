//
//  NSBundle+BRAddressPickerView.h
//  BRPickerViewDemo
//
//  Created by gaokun on 2021/12/16.
//  Copyright © 2021 irenb. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSBundle (BRAddressPickerView)

/// 获取 BRAddressPickerView.bundle
+ (instancetype)br_addressPickerBundle;

/// 获取城市JSON数据
+ (NSArray *)br_addressJsonArray;

@end

NS_ASSUME_NONNULL_END
