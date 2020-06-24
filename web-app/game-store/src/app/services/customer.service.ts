import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Customer } from '../interfaces/customer';

@Injectable({
  providedIn: 'root'
})
export class CustomerService {

  constructor(private http: HttpClient) { }

  getAll(): Observable<Customer[]> {
    const url = '/api/customer/all';
    const headers = new HttpHeaders({
      "Content-type": "application/json"
    });

    return this.http.get<Customer[]>(url, { headers });
  }

  save(customer: Customer): Observable<Customer> {
    const url = '/api/customer/save';
    const headers = new HttpHeaders({
      "Content-type": "application/json"
    });

    return this.http.post<Customer>(url, customer, { headers });
  } 
}
