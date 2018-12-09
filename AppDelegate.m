//
//  AppDelegate.m
//  05NSArray
//
//  Created by Denis on 25.08.2018.
//  Copyright © 2018 Denis. All rights reserved.
//

#import "AppDelegate.h"
#import "Human.h"
#import "Swimmer.h"
#import "Runner.h"
#import "Cyclist.h"
#import "Developer.h"
#import "Animal.h"
#import "Dog.h"
#import "Cat.h"
#import "Bird.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    /*Уровень ученик:
    (просто повторение того что увидел)
    
    1. Создать класс "человек", который будет содержать в себе базовые качества - "имя", "рост", "вес", "пол", а также будет иметь метод "передвижение".
    2. Создать дочерние классы (наследники) "велосипедист", "бегун", "пловец" и переопределить метод "передвижение" в каждом из этих классов.
    3. При старте программы создать по одному объекту каждого класса и объединить их в массив.
    4. В цикле пройти по всем элементам массива и вывести на экран все характеристики каждого объекта (имя, рост и тд) и у каждого вызвать метод "передвижение".
    
    Если получилось пройти уровень ученик, то можно попробовать уровень студент:
    (небольшая импровизация + дополнительная мозговая деятельность)
    
    5. Создать еще одного наследника от класса человек, добавить в него пару новых свойств, добавить в массив и в цикле вывода вывести его свойства как дополнение к свойствам человека
    6. Метод "передвижение" реализовать таким образом, чтобы перед тем как выполнить свое собственное передвижение, он выполнял передвижение реализованное в классе человек
    7. Массив выводить в обратном порядке.
    
    Уровень Мастер:
    (простор для фантазии + больше мозговой деятельности + больше практики)
    
    8. Создать класс "животное" (не наследник класса человек!) со своими собственными базовыми свойствами (отличными от человеческих) и методом "передвижение".
    9. Унаследоваться от него и создать пару других классов с переопределенным передвижением.
    10. Объединить всех людей и животных в один массив.
    11. В цикле выводить тип объекта (человек или животное) перед тем как выводить его свойства и вызывать метод
    
    Уровень Звезда:
    (разобраться с тем чего Леша не объяснял! + реальная задача!)
    
    12. Поместить всех людей в один массив, а животных в другой массив (количество людей и животных должно быть разное)
    13. В одном цикле выводить сначала человека а потом животное, доставая данные поочередно из двух разных массивов, если в одном из массивов объектов больше, то в конце должны выводиться только объекты этого массива (так как других уже нет)
    
    Уровень Супермен!
    (кодинг за гранью возможного! + вероятность успеха практически 0! + реальный вызов!)
    
    14. Соединить животных и людей в одном массиве.
    15. Используя нужный метод класса NSArray отсортировать массив (как результат будет другой массив). 16. Сортировать так: сначала люди, а потом животные, люди отсортированы по имени, а животные по кличкам
    17. Реально требует разобраться с сортировкой самому, тяжело, но достойно уважения

    */
    
#pragma mark - Apprentice -
    NSLog(@"\n\n ************************************************************** \n\n");
    NSLog(@"Apprentice \n\n");
    /*Уровень ученик:
    (просто повторение того что увидел)
    
    1. Создать класс "человек", который будет содержать в себе базовые качества - "имя", "рост", "вес", "пол", а также будет иметь метод "передвижение".
    2. Создать дочерние классы (наследники) "велосипедист", "бегун", "пловец" и переопределить метод "передвижение" в каждом из этих классов.
    3. При старте программы создать по одному объекту каждого класса и объединить их в массив.
    4. В цикле пройти по всем элементам массива и вывести на экран все характеристики каждого объекта (имя, рост и тд) и у каждого вызвать метод "передвижение".
     */
    
#pragma mark - Task 1,2,3,4
    
    Human* human = [[Human alloc] init];
    Cyclist* cyclist = [[Cyclist alloc] init];
    Runner* runner = [[Runner alloc] init];
    Swimmer* swimmer = [[Swimmer alloc] init];
    
    Developer* developer = [[Developer alloc] init];
    developer.name = @"Developer";
    developer.age = 31;
    developer.height = 1.7f;
    developer.weight =80.f;
    developer.team = @"Onliniko";
    developer.experience = 1.f;
    
    human.name = @"Human";
    human.age = 25;
    human.height = 1.8f;
    human.weight =80.f;
    
    cyclist.name = @"Cyclist";
    cyclist.age = 26;
    cyclist.height = 1.7f;
    cyclist.weight =81.f;
    
    runner.name = @"Runner";
    runner.age = 27;
    runner.height = 1.6f;
    runner.weight =86.f;
    
    swimmer.name = @"Swimmer";
    swimmer.age = 28;
    swimmer.height = 1.9f;
    swimmer.weight =89.f;
    
    
    
    NSArray* array = [NSArray arrayWithObjects:human, cyclist, runner, swimmer, developer, nil];
    for(Human* individual in array){
        
        NSLog(@"%@",individual);
        if([individual isKindOfClass:[Developer class]]){
            Developer* dev =(Developer*)individual;
            NSLog(@"%@",dev);
        }
        
        [individual movement];
        }
   
    
    
    #pragma mark - Student -
    NSLog(@"\n\n ************************************************************** \n\n");
    NSLog(@"Student\n\n");
    
    #pragma mark - Task 5,6
    
  /*
   Если получилось пройти уровень ученик, то можно попробовать уровень студент:
    (небольшая импровизация + дополнительная мозговая деятельность)
    
    5. Создать еще одного наследника от класса человек, добавить в него пару новых свойств, добавить в массив и в цикле вывода вывести его свойства как дополнение к свойствам человека
    6. Метод "передвижение" реализовать таким образом, чтобы перед тем как выполнить свое собственное передвижение, он выполнял передвижение реализованное в классе человек
    7. Массив выводить в обратном порядке.
    */
    
    #pragma mark - Task7
    
   
    //7. Массив выводить в обратном порядке.
    
    for(long i=[array count]-1; i >= 0; i-- ){
        Human* hum = [array objectAtIndex:i];
        NSLog(@"%@",hum);
            if([hum isKindOfClass:[Developer class]]){
                Developer* dev =(Developer*)hum;
                NSLog(@"%@",dev);
                
        }
        
        [[array objectAtIndex:i] movement];
    }
    #pragma mark - Master -
    NSLog(@"\n\n ************************************************************** \n\n");
    NSLog(@" Master \n\n");
    
    /*
    Уровень Мастер:
    (простор для фантазии + больше мозговой деятельности + больше практики)
    
    8. Создать класс "животное" (не наследник класса человек!) со своими собственными базовыми свойствами (отличными от человеческих) и методом "передвижение".
    9. Унаследоваться от него и создать пару других классов с переопределенным передвижением.
    10. Объединить всех людей и животных в один массив.
    11. В цикле выводить тип объекта (человек или животное) перед тем как выводить его свойства и вызывать метод
     */
    #pragma mark - Task 8,9
    
    #pragma mark - Task 10
    
    Animal* animal = [[Animal alloc] init];
    Dog* dog= [[Dog alloc] init];
    Cat* cat = [[Cat alloc] init];
    Bird* bird = [[Bird alloc] init];
    

    animal.petName = @"Animal";
    animal.ageAnimal = 5;
    animal.weightAnimal =30.f;
    
    dog.petName = @"Dog";
    dog.ageAnimal = 3;
    dog.weightAnimal = 20.f;
    
    cat.petName = @"Cat";
    cat.ageAnimal = 2;
    cat.weightAnimal = 3.f;
    
    bird.petName = @"Bird";
    bird.ageAnimal = 1;
    bird.weightAnimal = 0.3f;
    
    NSArray* arrayHumanAnimal = [NSArray arrayWithObjects:human, cyclist, runner, swimmer, developer, animal, dog, cat, bird, nil];
    
    #pragma mark - Task 10
    
    
    for (NSObject* object in arrayHumanAnimal)
    {
        if ([object isKindOfClass:[Human class]]){
            Human* tempHuman = (Human*) object;
            NSLog(@"\nType = %@",tempHuman.type);
            NSLog(@"%@",tempHuman);
            [tempHuman movement];
        }else if([object isKindOfClass:[Animal class]]){
            Animal* tempAnimal = (Animal*) object;
            NSLog(@"\n Type = %@",tempAnimal.type);
            NSLog(@"%@",tempAnimal);
            [tempAnimal movement];
        }
    }
#pragma mark - Star -
    NSLog(@"\n\n ************************************************************** \n\n");
    NSLog(@" Star \n\n");
   /* Уровень Звезда:
    (разобраться с тем чего Леша не объяснял! + реальная задача!)
    
    12. Поместить всех людей в один массив, а животных в другой массив (количество людей и животных должно быть разное)
    13. В одном цикле выводить сначала человека а потом животное, доставая данные поочередно из двух разных массивов, если в одном из массивов объектов больше, то в конце должны выводиться только объекты этого массива (так как других уже нет)
    */
    
#pragma mark - Task 12,13
    
    NSArray* arrayHuman = [NSArray arrayWithObjects:human, cyclist, runner, swimmer, developer, nil];
    NSArray* arrayAnimal = [NSArray arrayWithObjects:animal, dog, nil];
 
    
    long countHumanInArray = [arrayHuman count];
    long countAnimalInArray = [arrayAnimal count];
    long iMax = (countHumanInArray > countAnimalInArray ? countHumanInArray : countAnimalInArray);
    
    for (long i = 0; i < iMax; i++) {
        if(i <= (countHumanInArray-1)){
            NSLog(@"%@",[arrayHuman objectAtIndex:i]);
        }
        if (i <= (countAnimalInArray-1)) {
            NSLog(@"%@",[arrayAnimal objectAtIndex:i]);
        }
    }
#pragma mark - SuperMan -
    NSLog(@"\n\n ************************************************************** \n\n");
    NSLog(@" SuperMan \n\n");
   /* Уровень Супермен!
    (кодинг за гранью возможного! + вероятность успеха практически 0! + реальный вызов!)
    
    14. Соединить животных и людей в одном массиве.
    15. Используя нужный метод класса NSArray отсортировать массив (как результат будет другой массив).
    16. Сортировать так: сначала люди, а потом животные, люди отсортированы по имени, а животные по кличкам
    17. Реально требует разобраться с сортировкой самому, тяжело, но достойно уважения
    
    */
    #pragma mark - Task 14,15,16,17
    
    
    NSMutableArray* arrayHumanAndAnimalUnsorted = [NSMutableArray array];
    [arrayHumanAndAnimalUnsorted addObjectsFromArray:arrayHuman];
    [arrayHumanAndAnimalUnsorted addObjectsFromArray:arrayAnimal];
    NSArray* arrayHumanAndAnimalSorted = [arrayHumanAnimal sortedArrayUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
        if ([obj1 isKindOfClass:[Human class]] && [obj2 isKindOfClass:[Human class]]){
            return [[(Human*)obj1 name] compare:[(Human*)obj2 name]];
        }else if(([obj1 isKindOfClass:[Animal class]] && [obj2 isKindOfClass:[Animal class]])){
            return [[(Animal*)obj1 petName] compare:[(Animal*)obj2 petName]];
        }else if([obj1 isKindOfClass:[Human class]]){
            return NSOrderedAscending;
        }else{
            return NSOrderedDescending;
        }
    }];
    
    NSLog(@"%@", arrayHumanAndAnimalSorted);
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
