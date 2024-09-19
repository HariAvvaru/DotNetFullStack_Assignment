import { CommonModule } from '@angular/common';
import { HttpClient } from '@angular/common/http';
import { Component } from '@angular/core';
import { FormsModule } from '@angular/forms';

@Component({
  selector: 'app-http-demo1',
  standalone: true,
  imports: [CommonModule, FormsModule],
  providers: [HttpClient],
  templateUrl: './http-demo1.component.html',
  styleUrl: './http-demo1.component.css'
})
export class HttpDemo1Component {
  public usersArray:any[]=[];

  constructor(private httpObj:HttpClient){

  }

  public getDat(){
    let url="https://reqres.in/api/users";
    this.httpObj.get(url).subscribe((resData:any)=>{
      this.usersArray=resData.data;
    });
  }



}
