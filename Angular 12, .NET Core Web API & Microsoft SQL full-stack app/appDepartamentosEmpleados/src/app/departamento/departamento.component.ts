import { Component, OnInit } from '@angular/core';
import { environment } from 'src/environments/environment';
import { HttpClient } from '@angular/common/http';

@Component({
  selector: 'app-departamento',
  templateUrl: './departamento.component.html',
  styleUrls: ['./departamento.component.css']
})
export class DepartamentoComponent implements OnInit {

  constructor(private http:HttpClient) {
    
  }

  departamentos: any =[];

  Titulomodal = "";
  idDepto = 0;
  nombreDepto = "";

  deptoIdFiltro="";
  deptoNameFiltro="";
  departamentosSinFiltro:any=[];


  ngOnInit(): void {
    this.obtenerDeptos();
    
  }

  obtenerDeptos(){
    this.http.get<any>(environment.API_URL + 'departamento').subscribe( data => {
      this.departamentos = data;
      this.departamentosSinFiltro=data;
    });
  }

  addClick(){
    this.Titulomodal = "Agregar Deptartamento";
    this.idDepto = 0;
    this.nombreDepto = "";
  }

  editClick(depto : any){
    this.Titulomodal = "Editar Deptartamento";
    this.idDepto = depto.Id;
    this.nombreDepto = depto.nombreDepto;
  }

  createClick(){
    var val={
      nombreDepto:this.nombreDepto
    };
    this.http.post(environment.API_URL+'departamento', val).subscribe(res=>{
      alert("Agregado exitoso");
      this.obtenerDeptos();
    }, error => {
      alert("Ocurrio un error al agregar el dato");
    });
  }

  updateClick(){
    var val={
      Id:this.idDepto,
      nombreDepto:this  .nombreDepto
    };
    this.http.put(environment.API_URL+'departamento/' + val.Id, val).subscribe(res=>{
      alert("Modificacion exitosa");
      this.obtenerDeptos();
    }, error => {
      alert("Ocurrio un error al modificar el dato");
    })
  }

  deleteClick(id: any){
    if(confirm("¿Está seguro que desea elminar el departamento?")){
      this.http.delete(environment.API_URL + 'departamento/' + id).subscribe(
        res=>{
          alert("Eliminacion exitosa");
          this.obtenerDeptos();
        }, error => {
          alert("Ocurrio un error al eliminar el dato");
        })
    }
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
