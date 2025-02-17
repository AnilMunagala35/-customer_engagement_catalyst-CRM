import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ViewticketsComponent } from './viewtickets.component';

describe('ViewticketsComponent', () => {
  let component: ViewticketsComponent;
  let fixture: ComponentFixture<ViewticketsComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [ViewticketsComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(ViewticketsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
