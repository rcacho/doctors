//
//  Doctor.h
//  Doctor
//
//  Created by XCodeClub on 2015-07-02.
//  Copyright (c) 2015 rcacho. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Prescription.h"
#import "PrescriptionRecord.h"

@interface Doctor : NSObject

@property NSString *name;

@property NSString *specialization;

@property NSMutableArray *patientList;

@property PrescriptionRecord *record;

-(instancetype) init:(NSString *)name;

-(void) askQuestion:(Patient *)aPateint param:(NSString *)field;

-(void) askForName:(Patient *)aPatient;

-(void) askForAge:(Patient *)aPatient;

-(void) recieveQuestion:(NSString *)field;

-(BOOL) auditPatient:(Patient *)aPatient;

-(void) addPatient:(Patient *)aPatient;

-(BOOL) isPatient:(Patient *)aPatient;

-(void) medicatePatient:(Patient *)aPatient;

-(PrescriptionType) diagnosis: (Symptoms *) symptom;

-(NSMutableArray*) searchRecord:(Patient *)aPatient;

-(void) printPatientList;

@end
