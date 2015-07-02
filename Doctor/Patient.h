//
//  Patient.h
//  Doctor
//
//  Created by XCodeClub on 2015-07-02.
//  Copyright (c) 2015 rcacho. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Doctor;
@class Prescription;

typedef enum Symptoms {
    paranoia, hallucinations, depression, mania,
} Symptoms;

@interface Patient : NSObject

@property NSString *name;

@property int *age;

@property BOOL *validHealthCard;

@property Symptoms *symptoms;

@property BOOL prescription;

-(instancetype) init: (NSString *)name card:(BOOL) healthcard condition:(Symptoms *) symptom;

-(void) recieveQuestion: (NSString *)field;

-(void) askQuestion: (Doctor *)aDoctor param:(NSString *) field;

-(void) askForName: (Doctor *)aDoctor;

-(void) askForSpecialization: (Doctor *)aDoctor;

-(void) visitDoctor: (Doctor *)aDoctor;

-(void) requestMedication: (Doctor *)aDoctor;

-(void) takePrescription;


@end
