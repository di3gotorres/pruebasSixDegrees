import { Component } from '@angular/core';
import { UsuarioService } from './services/usuario.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'FrontEnd';
  usuarios: any[] = [];

  constructor(private usuarioService: UsuarioService) {

  }
  getUsuarios() {
    this.usuarioService.getusuarios().subscribe(
      data => {
        console.log(data);
        this.usuarios = data;
      }
    )
  }
}
