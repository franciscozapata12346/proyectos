import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

import { HomeComponent } from './home/home.component';
import { DepartamentoComponent } from './departamento/departamento.component';
import { EmpleadoComponent } from './empleado/empleado.component';

const routes: Routes = [
  {path:'home', component:HomeComponent},
  {path:'departamento', component:DepartamentoComponent},  
  {path:'empleado', component:EmpleadoComponent},
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
