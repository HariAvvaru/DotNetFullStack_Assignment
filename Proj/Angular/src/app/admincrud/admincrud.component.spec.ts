import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AdmincrudComponent } from './admincrud.component';

describe('AdmincrudComponent', () => {
  let component: AdmincrudComponent;
  let fixture: ComponentFixture<AdmincrudComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [AdmincrudComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(AdmincrudComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
