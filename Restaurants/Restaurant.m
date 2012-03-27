//
//  Restaurant.m
//  Restaurants
//

#import "Restaurant.h"

@implementation Restaurant

-(float) priceOfDinnerForGuests:(int)numberOfGuests
{
    float entreePrice = 22.50;
    float appetizerPrice = 11.00;
    float dessertPrice = 5.50;
    float winePrice = 34.25;
    
    
    float taxRate = .0875;
    float tipRate = .2;
    
    float numberOfAppetizersOrdered = ceilf((float)numberOfGuests/2);
    int numberOfDessertsOrdered = numberOfGuests;
    int numberOfEntreesOrdered = numberOfGuests;
    float numberOfWineBottlesOrdered = ceilf((float)numberOfGuests/4);
    
    float dinnerPrice = numberOfEntreesOrdered*entreePrice+numberOfAppetizersOrdered*appetizerPrice+numberOfDessertsOrdered*dessertPrice+numberOfWineBottlesOrdered*winePrice;
    

    
    float tip = tipRate*dinnerPrice;
    
    float taxes = taxRate*dinnerPrice;

    /* Set dinnerPrice to be the cost of:
        1 entree per person
        1 dessert per person
        1 appetizer for every 2 people 
        1 bottle of wine for every 4 people. 
     
     Make sure to also calculate the tax and tip correctly, and feel free to use the numberOfXXXXXOrdered variables to help with your calculations;
     */
    
    // *********************   
    // Your code goes here
    // *********************
    
    
    // Print the dinner price
    NSLog(@"Dinner for a family of %d costs $%.2f. The tip should be $%.2f and the taxes will be $%.2f", numberOfGuests, dinnerPrice, tip, taxes);
    NSLog(@"Apps:%f\nDessert:%i\nEntree:%i\nWine:%f\n\n\n\n",numberOfAppetizersOrdered,numberOfDessertsOrdered,numberOfEntreesOrdered,numberOfWineBottlesOrdered);
    return dinnerPrice;
    
}

- (id)init {
    
    self = [super init];
    if (self) {
        float priceForFamilyOf10 = [self priceOfDinnerForGuests:10];
        float priceForFamilyOf9 = [self priceOfDinnerForGuests:9];
        float priceForFamilyOf8 = [self priceOfDinnerForGuests:8];
        float priceForFamilyOf7 = [self priceOfDinnerForGuests:7];
        float priceForFamilyOf6 = [self priceOfDinnerForGuests:6];
        float priceForFamilyOf5 = [self priceOfDinnerForGuests:5];
        float priceForFamilyOf4 = [self priceOfDinnerForGuests:4];
        float priceForFamilyOf3 = [self priceOfDinnerForGuests:3];
        float priceForFamilyOf2 = [self priceOfDinnerForGuests:2];
        float priceForFamilyOf1 = [self priceOfDinnerForGuests:1];
        
        float totalRestaurantDinnerPrice = priceForFamilyOf1+priceForFamilyOf2+priceForFamilyOf3+priceForFamilyOf4+priceForFamilyOf5+priceForFamilyOf6+priceForFamilyOf7+priceForFamilyOf8+priceForFamilyOf9+priceForFamilyOf10;
        
        NSLog(@"Total Restaurant Tabs: %.2f",totalRestaurantDinnerPrice);
    }
    return self;
}

@end
