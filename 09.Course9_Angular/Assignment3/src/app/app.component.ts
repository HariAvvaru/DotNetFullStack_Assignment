import { CommonModule } from '@angular/common';
import { Component } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { RouterOutlet } from '@angular/router';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [RouterOutlet, CommonModule, FormsModule],
  templateUrl: './app.component.html',
  styleUrl: './app.component.css',
})
export class AppComponent {
  public pname: string = '';
  public uprice: number = 0;
  public quant: number = 0;
  public tot: number = 0;

  public getTotal(): void {
    this.tot = this.uprice * this.quant;
  }

  public getMinus(): void {
    this.quant -= 1;
    this.getTotal();
  }

  public getPlus(): void {
    this.quant += 1;
    this.getTotal();
  }
}
