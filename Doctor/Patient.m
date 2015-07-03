//
//  Patient.m
//  Doctor
//
//  Created by XCodeClub on 2015-07-02.
//  Copyright (c) 2015 rcacho. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@implementation Patient


-(instancetype) init:(NSString *)some_name condition:(Symptoms *)symptom{
    self = [super init];
    if (self) {
        // should we use underscore or '.'?
        self.name = some_name;
        self.symptoms = symptom;
    }
    return self;
}

-(void) validate {
    [self setValidHealthCard:YES];
}

-(void) inValidate {
    [self setValidHealthCard:NO];
}

-(void) recieveQuestion:(NSString *)field {
    if ([field  isEqual: @"name"]
        ) {
        NSLog(@"My name is %@\n",[self name]);
    } else if ([field isEqual:@"age"]) {
        NSLog(@"My age is %d",*[self age]);
    }
}

-(void) askQuestion: (Doctor *)aDoctor param:(NSString *) field {
    [aDoctor recieveQuestion:field];
}

-(void) askForName:(Doctor *)aDoctor {
    [self askQuestion:aDoctor param:@"name"];
}

-(void) askForSpecialization:(Doctor *)aDoctor {
    [self askQuestion:aDoctor param:@"specialization"];
}

-(void) visitDoctor:(Doctor *)aDoctor {
    [aDoctor auditPatient:self];
}

-(void) requestMedication:(Doctor *)aDoctor {
    [aDoctor medicatePatient:self];
}

-(void) takePrescription {
    [self setPrescription:YES];
}

@end
