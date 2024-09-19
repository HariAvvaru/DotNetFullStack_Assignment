import { CommonModule } from '@angular/common';
import { Component } from '@angular/core';
import { RouterOutlet } from '@angular/router';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [RouterOutlet, CommonModule],
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})
export class AppComponent {
  public dataArray:any[]=[
    {dno: "1", dname: "Angular", loc: "Vijayawada"},
    {dno: "2", dname: "C#", loc: "Hyderabad"},
    {dno: "3", dname: "SQL", loc: "Banglore"},
    {dno: "4", dname: "Python", loc: "Mumbai"},
    {dno: "5", dname: "Java", loc: "Vizag"},
  ]
}
