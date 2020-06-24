import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { CustomersPageRoutingModule } from './customers-routing.module';

import { CustomersPage } from './customers.page';
import { MaterialModule } from 'src/app/material.module';
import { ComponentsModule } from 'src/app/components/components.module';
import { CustomerFormComponent } from 'src/app/components/customer-form/customer-form.component';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    CustomersPageRoutingModule,
    MaterialModule,
    ComponentsModule
  ],
  entryComponents: [
    CustomerFormComponent
  ],
  declarations: [CustomersPage]
})
export class CustomersPageModule {}
