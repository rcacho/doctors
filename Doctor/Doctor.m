//
//  Doctor.m
//  Doctor
//
//  Created by XCodeClub on 2015-07-02.
//  Copyright (c) 2015 rcacho. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor

-(instancetype) init:(NSString *)some_name {
    self = [super init];
    if (self) {
        self.name = some_name;
        self.patientList = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void) askQuestion:(Patient *)aPatient param: (NSString *)field {
    [aPatient recieveQuestion:field];
}

-(void) askForName:(Patient *)aPatient {
    [self askQuestion: aPatient param:@"name"];
}

-(void) askForAge:(Patient *)aPatient {
    [self askQuestion:aPatient param:@"age"];
}

-(void) recieveQuestion:(NSString *)field {
    if ([field  isEqual: @"name"]
        ) {
        NSLog(@"My name is %@\n",[self name]);
    } else if ([field isEqual:@"specialzation"]) {
        NSLog(@"My age is %@", [self specialization]);
    }
}

-(BOOL) auditPatient:(Patient *)aPatient {
    if ([aPatient validHealthCard]) {
        [self addPatient:aPatient];
        return true;
    } else {
        return false;
    }
}

-(void) addPatient:(Patient *)aPatient {
    NSMutableArray *patientList = [self patientList];
    [patientList addObject:aPatient];
}

-(BOOL) isPatient:(Patient *)aPatient {
    NSMutableArray *patientList = [self patientList];
    for (Patient* patient in patientList) {
        if (aPatient == patient) {
            return YES;
        }
    }
    return NO;
}

-(void) medicatePatient:(Patient *)aPatient {
    if ([self isPatient:aPatient]) {
        
        Symptoms *symptom = [aPatient symptoms];
        PrescriptionType prescrip = [self diagnosis:*symptom];
        Prescription *prescription = [[Prescription alloc] init:aPatient type:prescrip];
        PrescriptionRecord *record = [self record];
        [record addPrescription:prescription];
        
    } else {
        printf("Sorry you are not my patient.");
    }
}

-(PrescriptionType) diagnosis:(Symptoms)symptom {
    switch (symptom) {
        case paranoia:
            return zyprexa;
            break;
        case hallucinations:
            return clozapine;
            break;
        case depression:
            return lithium;
            break;
        case mania:
            return lithium;
        default:
            return zyprexa;
            break;
    }
}

-(NSMutableArray*) searchRecord:(Patient *)aPatient {
    NSMutableArray *patientPrescriptionList = [[NSMutableArray alloc] init];
    PrescriptionRecord *Prescrecord = [self record];
    NSMutableArray *record = [Prescrecord globalPrescritptionList];
    for (Prescription* prescription in record) {
        Patient *patient = [prescription prescriber];
        if (patient == aPatient) {
            [patientPrescriptionList addObject:prescription];
        }
    }
    return patientPrescriptionList;
}

-(void) printPatientList {
    NSMutableArray *patientList;
    patientList = [self patientList];
    for (Patient *patient in patientList) {
        NSString *name = [patient name];
        NSLog(@"The name of one of the patients is: %@", name);
    }
}

@end







