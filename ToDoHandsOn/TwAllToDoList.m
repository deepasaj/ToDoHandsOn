#import "TwAllToDoList.h"
#import "TwToDoList.h"


@implementation TwAllToDoList {

}

+ (void) testData {
    [TwAllToDoList
            fromData:@[
            @{@"name": @"Grocery", @"items": @[@{@"title": @"milk", @"description": @"Cow milk", @"completed": @"T"}]},
            @{@"name": @"bill", @"items": @[
                    @{@"title": @"telephone", @"description": @"Phone Tring tring", @"completed": @"F"},
                    @{@"title": @"internet", @"description": @"Net Chat Chat", @"completed": @"T"}
            ]}
    ]
    ];
}

+ (TwAllToDoList *) fromData: (NSArray *) data {
    NSMutableArray *todoLists = [NSMutableArray array];

    [data enumerateObjectsUsingBlock:^(NSDictionary *todoListDictionary, NSUInteger idx, BOOL *stop) {
        [todoLists addObject:[TwToDoList fromData:todoListDictionary]];
    }];
    return todoLists;
}
@end