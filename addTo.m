
@synthesize singlePicker;
@synthesize pickerData;


- (void)viewDidLoad
{
    NSArray *array = [[NSArray alloc]        initWithObjects:@"1",@"2",@"3",@"4",@"5", @"6", @"7", @"8", @"9",nil];
    self.pickerData = array;
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView
numberOfRowsInComponent:(NSInteger)component
{
    return [pickerData count];
}

-(NSString *)pickerView:(UIPickerView *)pickerView
            titleForRow:(NSInteger)row
           forComponent:(NSInteger)component 
{
    return[pickerData objectAtIndex:row];
}


Add the 2 lines to your converter function after your initialization:
        NSInteger row = [singlePicker selectedRowInComponent:0];
        NSString *selected = [pickerData objectAtIndex:row];
