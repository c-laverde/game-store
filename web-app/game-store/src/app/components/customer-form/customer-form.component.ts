import { Component, OnInit } from '@angular/core';
import { ModalController } from '@ionic/angular';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { CustomerService } from 'src/app/services/customer.service';
import { Customer } from 'src/app/interfaces/customer';

@Component({
  selector: 'app-customer-form',
  templateUrl: './customer-form.component.html',
  styleUrls: ['./customer-form.component.scss'],
})
export class CustomerFormComponent implements OnInit {

  cForm: FormGroup;

  constructor(
    private modalCtrl: ModalController,
    private formBuilder: FormBuilder,
    private customerService: CustomerService
    ) { }

  ngOnInit() {
    this.initForm();
  }

  initForm() {
    this.cForm = this.formBuilder.group({
      document: ['', Validators.compose([Validators.maxLength(10), Validators.required])],
      name: ['', Validators.compose([Validators.pattern('[a-zA-Z ]*'), Validators.required])],
      age: ['', Validators.compose([Validators.required, Validators.maxLength(2)])]
    });
  }
  
  close() {
    this.saveCustomer();
    this.modalCtrl.dismiss({
      reloadData: true
    });
  }

  saveCustomer(): void {
    let newCustomer: Customer = {
      age: this.cForm.get("age").value,
      document: this.cForm.get("document").value,
      name: this.cForm.get("name").value
    };

    this.customerService.save(newCustomer).subscribe(
      response => {
        console.log(response);
      },
      err => {
        console.warn("An error ocurred. ", err);
      }
    );
  }

}
