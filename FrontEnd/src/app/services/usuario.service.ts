import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable, observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class UsuarioService {
private urlServicio ='https://localhost:44360/api/usuario';
  constructor(private http:HttpClient) { 

  }
  getusuarios():Observable<any>{
    return this.http.get(this.urlServicio);
   }
}
