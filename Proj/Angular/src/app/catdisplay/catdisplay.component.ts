import { CommonModule } from '@angular/common';
import { Component } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { ActivatedRoute, RouterLink, RouterOutlet } from '@angular/router';
import { ProductServiceService } from '../product-service.service';

@Component({
  selector: 'app-catdisplay',
  standalone: true,
  imports: [CommonModule, RouterLink, FormsModule, RouterOutlet],
  templateUrl: './catdisplay.component.html',
  styleUrl: './catdisplay.component.css'
})
export class CatdisplayComponent {
  public productsArray:any[] =[];


  constructor(private activatedRoute:ActivatedRoute, private prodServiceObj:ProductServiceService) {
    let sid =   this.activatedRoute.snapshot.params["category"];
    this.prodServiceObj.getProductByCategory(sid).subscribe((resData: any) => {  
      this.productsArray = resData.map((product: any) => {
        console.log(this.productsArray);
        // Calculate the discount amount
        let discountAmount: number = product.unitPrice * (product.discount / 100);
  
        // Calculate the final price after applying the discount
        product.finalPrice = product.unitPrice - discountAmount;
        console.log(this.productsArray);
        // Return the updated product object with the new finalPrice field
        return product;
      });
    });

   }
  

}
