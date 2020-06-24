import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { IonicModule } from '@ionic/angular';
import { ReactiveFormsModule } from '@angular/forms';
import { CustomerFormComponent } from './customer-form/customer-form.component';
import { GameFormComponent } from './game-form/game-form.component';

@NgModule({
  declarations: [
    CustomerFormComponent,
    GameFormComponent,
  ],
  imports: [
    CommonModule,
    IonicModule,
    ReactiveFormsModule
  ],
  exports: [
    CustomerFormComponent,
    GameFormComponent,
  ]
})
export class ComponentsModule { }
