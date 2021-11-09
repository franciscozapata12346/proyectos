import { Component, OnInit } from '@angular/core';

import { environment } from 'src/environments/environment';
import { HttpClient } from '@angular/common/http';
import * as moment from 'moment';


@Component({
  selector: 'app-empleado',
  templateUrl: './empleado.component.html',
  styleUrls: ['./empleado.component.css']
})
export class EmpleadoComponent implements OnInit {

  constructor(private http:HttpClient) {
    
  }

  departamentos: any =[];
  empleados: any = [];

  Titulomodal = "";
  idEmpleado = 0;
  nombreEmpleado = "";
  nombreDepto="";
  fechaInicio = "";
  fotoPerfil="anonymous.png";
  fotoUrl = environment.FOTO_URL;

  

  ngOnInit(): void {
    this.obtenerEmpleados();
  }

  obtenerEmpleados(){
    this.http.get<any>(environment.API_URL + 'empleado').subscribe( data => {
      this.empleados = data;
    });

    this.http.get<any>(environment.API_URL + 'departamento').subscribe( data => {
      this.departamentos = data;
    });
  }

  addClick(){
    this.Titulomodal = "Agregar empleado";
    this.idEmpleado = 0;
    this.nombreEmpleado = "";
    this.nombreDepto = "";
    this.fechaInicio = "";
    this.fotoPerfil = "anonymous.png";
  }

  editClick(emp : any){
    this.Titulomodal = "Modificar empleado";
    this.idEmpleado = emp.Id;
    this.nombreEmpleado = emp.nombreEmpleado;
    this.nombreDepto = emp.Departamento;
    this.fechaInicio = moment(emp.fechaInicio).format('YYYY-MM-DD');
    this.fotoPerfil = emp.fotoPerfil;
  }

  createClick(){
    var val={
      nombreEmpleado : this.nombreEmpleado,
      Departamento : this.nombreDepto,
      fechaInicio : this.fechaInicio,
      fotoPerfil : this.fotoPerfil
    };
    this.http.post(environment.API_URL+'empleado', val).subscribe(res=>{
      alert("Agregado exitoso");
      this.obtenerEmpleados();
    }, error => {
      alert("Ocurrio un error al agregar el dato");
    });
  }

  updateClick(){
    var val={
      Id : this.idEmpleado,
      nombreEmpleado : this.nombreEmpleado,
      Departamento : this.nombreDepto,
      fechaInicio : this.fechaInicio,
      fotoPerfil : this.fotoPerfil
    };
    this.http.put(environment.API_URL+'empleado/' + val.Id, val).subscribe(res=>{
      alert("Modificacion exitosa");
      this.obtenerEmpleados();
    }, error => {
      alert("Ocurrio un error al modificar el dato");
    })
  }

  deleteClick(id: any){
    if(confirm("¿Está seguro que desea elminar el departamento?")){
      this.http.delete(environment.API_URL + 'empleado/' + id).subscribe(
        res=>{
          alert("Eliminacion exitosa");
          this.obtenerEmpleados();
        }, error => {
          alert("Ocurrio un error al eliminar el dato");
        })
    }
  }

  imageUpload(event:any){
    var file=event.target.files[0];
    const formData: FormData = new FormData();
    formData.append('file', file,file.name);

    this.http.post(environment.API_URL+'empleado/savefile', formData)
    .subscribe((data:any) => {
      this.fotoPerfil = file.name;
    });    
  }

  Filtro(){
    var deptoIdFiltro = this.deptoIdFiltro;
    var deptoNameFiltro = this.deptoNameFiltro;


    this.departamentos = this.departamentosSinFiltro.filter(
      function(el:any){
        return el.Id.toString().toLowerCase().includes(
          deptoIdFiltro.toString().trim().toLowerCase()
        )&&
          el.nombreDepto.toString().toLowerCase().includes(
            deptoNameFiltro.toString().trim().toLowerCase()
          )
      }
    );
  }

  sortResult(prop:any, asc:any){
    this.departamentos = this.departamentosSinFiltro.sort(function(a:any,b:any){
      if(asc){
        return (a[prop]>b[prop])?1:((a[prop]<b[prop])?-1:0)  ;
      }else{
        return (b[prop]>a[prop])?1:((b[prop]<a[prop])?-1:0);
      }
    });
  }

}
