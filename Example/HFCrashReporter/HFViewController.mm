//
//  HFViewController.m
//  HFCrashReporter
//
//  Created by liuhongfei on 03/11/2025.
//  Copyright (c) 2025 liuhongfei. All rights reserved.
//

#import "HFViewController.h"
#import <HFCrashReporter/HFCrashReporter.h>
#import "CPPCrashTester.h"

@interface HFViewController ()

@end

@implementation HFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    HFCrashReporter *reporter = [HFCrashReporter defaultManager];
    reporter.isShowaActualFiles = YES;
    reporter.isReportEmail = YES;

    HFReporterEmailModel *emailModel = [[HFReporterEmailModel alloc] init];
    emailModel.recipients = @[@"hongfei_liu@bizconf.cn"];
    emailModel.subject = @"Crash test";
    emailModel.message = @"HFCrashReporter is a crash report tools.";
    reporter.emailModel = emailModel;
    [reporter startCrashLogger];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    [self NSMutableDictionary_Test_RemoveObjectForKey];
    
    [[HFCrashReporter defaultManager] showCrashVC:self];
}

#pragma mark - NSArray_Test
- (void)NSArray_Test_InstanceArray {
    NSString *nilStr = nil;
    NSArray *array = @[@"liuhongfei", nilStr, @"iOSDeveloper"];
    NSLog(@"%@", array);
}

- (void)NSArray_Test_ObjectAtIndex {
    NSArray *arr = @[@"liuhongfei", @"iOS_Dev"];
    NSObject *object = arr[100];
    NSLog(@"object = %@", object);
}

- (void)NSArray_Test_objectsAtIndexes {
    NSArray *array = @[@"liuhongfei",@"iOS"];
    
    NSIndexSet *indexSet = [NSIndexSet indexSetWithIndex:100];
    [array objectsAtIndexes:indexSet];
}

- (void)NSArray_Test_getObjectsRange {
    // __NSArrayI
    NSArray *array = @[@"1", @"2", @"3"];
    
    // __NSSingleObjectArrayI
    // NSArray *array = @[@"1"];
    
    // NSArray
    // NSArray *array = @[];
    
    NSRange range = NSMakeRange(0, 11);
    __unsafe_unretained id cArray[range.length];
    
    [array getObjects:cArray range:range];
}

#pragma mark - NSMutableArray_Test
- (void)NSMutableArray_Test_ObjectAtIndex {
    NSMutableArray *array = @[@"liuhongfei"].mutableCopy;
    NSObject *object = array[2];
    // NSObject *object = [array objectAtIndex:20];
    NSLog(@"object = %@", object);
}

- (void)NSMutableArray_Test_SetObjectAtIndex {
    NSMutableArray *array = @[@"liuhongfei"].mutableCopy;
    array[3] = @"iOS";
}

- (void)NSMutableArray_Test_RemoveObjectAtIndex {
    NSMutableArray *array = @[@"liuhongfei", @"iOSDeveloper"].mutableCopy;
    [array removeObjectAtIndex:5];
}

- (void)NSMutableArray_Test_InsertObjectAtIndex {
    NSMutableArray *array = @[@"liuhongfei"].mutableCopy;
    
    // test1    beyond bounds
    [array insertObject:@"cool" atIndex:5];
    
    // test2    insert nil obj
    // [array insertObject:nil atIndex:0];
    
    // test3    insert nil obj
    // NSString *nilStr = nil;
    // [array addObject:nilStr]; // 其本质是调用insertObject:
}

- (void)NSMutableArray_Test_GetObjectsRange {
    NSMutableArray *array = @[@"liuhongfei", @"iOSDeveloper"].mutableCopy;
    
    NSRange range = NSMakeRange(0, 11);
    __unsafe_unretained id cArray[range.length];
    
    [array getObjects:cArray range:range];
}

#pragma mark - NSDictionary_Test
- (void)NSDictionary_Test_InstanceDictionary {
    NSString *nilStr = nil;
    NSDictionary *dict = @{
                           @"name" : @"liuhongfei",
                           @"age" : nilStr
                           };
    NSLog(@"%@", dict);
}

#pragma mark - NSMutableDictionary_Test
- (void)NSMutableDictionary_Test_SetObjectForKey_1 {
    NSMutableDictionary *dict = @{
                                   @"name" : @"liuhongfei"
                                   }.mutableCopy;
    NSString *ageKey = nil;
    dict[ageKey] = @(25);
    NSLog(@"%@", dict);
}

- (void)NSMutableDictionary_Test_SetObjectForKey_2 {
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    NSString *ageKey = nil;
    [dict setObject:@(25) forKey:ageKey];
    NSLog(@"%@", dict);
}

- (void)NSMutableDictionary_Test_RemoveObjectForKey {
    NSMutableDictionary *dict = @{
                                  @"name" : @"liuhongfei",
                                  @"age" : @(25)
                                  
                                  }.mutableCopy;
    NSString *key = nil;
    [dict removeObjectForKey:key];
    
    NSLog(@"%@", dict);
}

#pragma mark - NSString_Test
- (void)NSString_Test_CharacterAtIndex {
    NSString *str = @"liuhongfei";
    
    unichar characteristic = [str characterAtIndex:100];
    NSLog(@"--%c--", characteristic);
}

- (void)NSString_Test_SubstringFromIndex {
    NSString *str = @"liuhongfei";
    
    NSString *subStr = [str substringFromIndex:100];
    NSLog(@"%@", subStr);
}

- (void)NSString_Test_SubstringToIndex {
    NSString *str = @"liuhongfei";
    
    NSString *subStr = [str substringToIndex:100];
    NSLog(@"%@", subStr);
}

- (void)NSString_Test_SubstringWithRange {
    NSString *str = @"liuhongfei";
    
    NSRange range = NSMakeRange(0, 100);
    NSString *subStr = [str substringWithRange:range];
    NSLog(@"%@", subStr);
}

- (void)NSString_Test_StringByReplacingOccurrencesOfString {
    NSString *str = @"liuhongfei";
    
    NSString *nilStr = nil;
    str = [str stringByReplacingOccurrencesOfString:nilStr withString:nilStr];
    NSLog(@"%@", str);
}

- (void)NSString_Test_StringByReplacingOccurrencesOfStringRange {
    NSString *str = @"liuhongfei";
    
    NSRange range = NSMakeRange(0, 1000);
    str = [str stringByReplacingOccurrencesOfString:@"liu" withString:@"" options:NSCaseInsensitiveSearch range:range];
    NSLog(@"%@", str);
}

- (void)NSString_Test_stringByReplacingCharactersInRangeWithString {
    NSString *str = @"liuhongfei";
    
    NSRange range = NSMakeRange(0, 1000);
    str = [str stringByReplacingCharactersInRange:range withString:@"lhf"];
    NSLog(@"%@", str);
}

#pragma mark - NSMutableString_Test
- (void)NSMutableString_Test_ReplaceCharactersInRange {
    NSMutableString *strM = [NSMutableString stringWithFormat:@"liuhongfei"];
    NSRange range = NSMakeRange(0, 1000);
    [strM replaceCharactersInRange:range withString:@"--"];
}

- (void)NSMutableString_Test_InsertStringAtIndex {
    NSMutableString *strM = [NSMutableString stringWithFormat:@"liuhongfei"];
    [strM insertString:@"cool" atIndex:1000];
}

- (void)NSMutableString_TestDeleteCharactersInRange {
    NSMutableString *strM = [NSMutableString stringWithFormat:@"liuhongfei"];
    NSRange range = NSMakeRange(0, 1000);
    [strM deleteCharactersInRange:range];
}

#pragma mark - NSAttributedString_Test
- (void)NSAttributedString_Test_InitWithString {
    NSString *str = nil;
    NSAttributedString *attributeStr = [[NSAttributedString alloc] initWithString:str];
    NSLog(@"%@", attributeStr);
}

- (void)NSAttributedString_Test_InitWithAttributedString {
    NSAttributedString *nilAttributedStr = nil;
    NSAttributedString *attributedStr = [[NSAttributedString alloc] initWithAttributedString:nilAttributedStr];
    NSLog(@"%@", attributedStr);
}

- (void)NSAttributedString_Test_InitWithStringAttributes {
    NSDictionary *attributes = @{
                           NSForegroundColorAttributeName : [UIColor redColor]
                           };
    NSString *nilStr = nil;
    NSAttributedString *attributedStr = [[NSAttributedString alloc] initWithString:nilStr attributes:attributes];
    NSLog(@"%@", attributedStr);
}

#pragma mark - NSMutableAttributedString_Test
- (void)NSMutableAttributedString_Test_InitWithString {
    NSString *nilStr = nil;
    NSMutableAttributedString *attrStrM = [[NSMutableAttributedString alloc] initWithString:nilStr];
    NSLog(@"%@", attrStrM);
}

- (void)NSMutableAttributedString_Test_InitWithStringAttributes {
    NSDictionary *attributes = @{
                                 NSForegroundColorAttributeName : [UIColor redColor]
                                 };
    NSString *nilStr = nil;
    NSMutableAttributedString *attrStrM = [[NSMutableAttributedString alloc] initWithString:nilStr attributes:attributes];
    NSLog(@"%@", attrStrM);
}

#pragma mark - KVC
- (void)KVC_Test_SetValueForKey {
    // 创建一个任意的对象
    UITableView *anyObject = [UITableView new];
    [anyObject setValue:self forKey:@"AvoidCrash"];
}

- (void)KVC_Test_SetValueforKeyPath {
    UITableView *anyObject = [UITableView new];
    [anyObject setValue:self forKey:@"AvoidCrash"];
}

- (void)KVC_Test_SetValuesForKeysWithDictionary {
    // 创建一个任意的对象
    UITableView *anyObject = [UITableView new];
    NSDictionary *dictionary = @{
                                 @"name" : @"liuhongfei"
                                 };
    [anyObject setValuesForKeysWithDictionary:dictionary];
}

#pragma mark - unrecognized selector sent to instance
/// 测试没有selector的crash
- (void)testNoSelectorCrash {
    id person1 = @"liuhongfei";
    person1 = [person1 initWithName:@"lhf" age:26 height:170 weight:110];
}

- (void)testNoSelectorCrash2 {
    id person = [AvoidCrashPerson new];
    [person objectForKey:@"key"];
}

@end

@implementation Person

- (instancetype)initWithName:(NSString *)name
                         age:(NSInteger)age
                      height:(float)height
                      weight:(float)weight {
    return self;
}

@end

@implementation AvoidCrashPerson

@end

