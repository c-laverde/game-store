import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Page } from '../interfaces/page';

@Injectable({
  providedIn: 'root'
})
export class PageService {

  constructor(private http: HttpClient) { }

  getPages() {
    return this.http.get<Page[]>('/assets/data/pages.json');
  }
}
