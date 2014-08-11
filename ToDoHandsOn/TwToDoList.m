#import "TwToDoList.h"
#import "TwToDoItem.h"

@implementation TwToDoList {

}

- (instancetype)initWithTitle:(NSString *)title toDoItems:(NSArray *)toDoItems {
    self = [super init];
    if (self) {
        self.title = title;
        self.toDoItems = toDoItems;
    }

    return self;
}

+ (TwToDoList *)listWithTitle:(NSString *)title toDoItems:(NSArray *)toDoItems {
    return [[self alloc] initWithTitle:title toDoItems:toDoItems];
}

+ (TwToDoList *) fromData: (NSDictionary *)todoDictionary {

    NSString *name = todoDictionary[@"name"];
    NSArray *items = todoDictionary[@"items"];
    NSMutableArray *generatedItems;
    [items enumerateObjectsUsingBlock:^(NSDictionary *dataItem, NSUInteger idx, BOOL *stop) {
        [generatedItems addObject:[TwToDoItem fromData:dataItem]];
    }];
    return [TwToDoList listWithTitle:name toDoItems: generatedItems];
}

@end