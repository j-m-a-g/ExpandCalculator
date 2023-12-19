using System;
using Plugin.MaterialDesignControls.Material3;
using Plugin.SimpleAudioPlayer;
using Xamanimation;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.CommunityToolkit.Effects;

namespace ExpandCalculator
{
	public partial class MainPage
	{
		/*
	    GLOBAL FILE VARIABLES
		 */
		
		private string _navigationClickedHex = "#005395";
		private string _navigationUnclickedHex = "#0297df";
		
		// New instance of a global audio player for the app
		ISimpleAudioPlayer _audioPlayer = CrossSimpleAudioPlayer.Current;
		
		public MainPage()
		{
			
			InitializeComponent();
			
			if (Preferences.ContainsKey("do_not_show_new_feature"))
			{
				NewFeatureIntroScrollView.IsVisible = false;
				NewFeatureStackViewChild.IsVisible = false;
				
				WelcomeScrollView.IsVisible = true;
				WelcomeStackLayout.IsVisible = true;
				
				NavigationInstructionLabel.IsVisible = true;
				NavigationFlexLayout.IsVisible = true;
			}
			else
			{
				NewFeatureIntroScrollView.IsVisible = true;
				NewFeatureStackViewChild.IsVisible = true;
				
				_audioPlayer.Load("jingle_bell_rock.mp3");
				_audioPlayer.Play();
			}
			
			OSAppTheme userTheme = Application.Current.RequestedTheme;

			if (Preferences.ContainsKey("holiday_mode_activated"))
			{
				HolidayModeSwitch.IsToggled = true;
			}
			else if (userTheme == OSAppTheme.Dark || Preferences.ContainsKey("dark_mode_activated"))
			{
				DarkModeSwitch.IsToggled = true;
			}
		}
		
		// NewFeatureStackLayout event handlers
		private void NewFeatureContinueButton_OnClicked(object sender, EventArgs e)
		{
			switch (NoNewFeatureDialogOnNextStartup.IsChecked)
			{
				case true:
				{
					Preferences.Set("do_not_show_new_feature", true);
					break;
				}
				case false:
				{
					Preferences.Remove("do_not_show_new_feature");
					break;
				}
			}
			
			_audioPlayer.Stop();
			
			WelcomeScrollView.Animate(new FadeInAnimation());
			WelcomeStackLayout.Animate(new FadeInAnimation());
			NavigationFlexLayout.Animate(new FadeInAnimation());
			
			NewFeatureStackViewChild.IsVisible = false;
			NewFeatureIntroScrollView.IsVisible = false;
			
			WelcomeScrollView.IsVisible = true;
			WelcomeStackLayout.IsVisible = true;
			NavigationInstructionLabel.IsVisible = true;
			NavigationFlexLayout.IsVisible = true;
		}
		
		// WelcomeScrollView event handlers
		private void HomeImageButton_Clicked(object sender, EventArgs e)
		{
			ClickedOrUnclicked(HomeImageButton);
			
			SwitchXamlPages(WelcomeScrollView);
			CalcModesGrid.IsVisible = true;
			NavigationInstructionLabel.IsVisible = true;
		}

		private void ConversionCalcImageButton_Clicked(object sender, EventArgs e)
		{
			ClickedOrUnclicked(ConversionCalcImageButton);
			SwitchXamlPages(FormulaReference);
		}

		private void AreaCalcImageButton_Clicked(object sender, EventArgs e)
		{
			ClickedOrUnclicked(AreaCalcImageButton);
			SwitchXamlPages(AreaCalculator);
		}

		private void VolumeCalcImageButton_Clicked(object sender, EventArgs e)
		{
			ClickedOrUnclicked(VolumeCalcImageButton);
			SwitchXamlPages(VolumeCalculator);
			
			DisplayComingSoonAlert();
		}

		private void DateCalcImageButton_Clicked(object sender, EventArgs e)
		{
			ClickedOrUnclicked(DateCalcImageButton);
			SwitchXamlPages(DateCalculator);
		}

		private void AboutImageButton_Clicked(object sender, EventArgs e)
		{
			ClickedOrUnclicked(AboutImageButton);
			SwitchXamlPages(AboutStackLayout);
		}

		private void SettingsImageButton_Clicked(object sender, EventArgs e)
		{
			ClickedOrUnclicked(SettingsImageButton);
			SwitchXamlPages(SettingsStackLayout);
		}
		
		// Formula references page event handlers
		private void FormulaReferenceGoButton_OnClicked(object sender, EventArgs e)
		{
			switch (FormulaReferenceSegmentedControl.SelectedSegment)
			{
				case 0:
				{
					SwitchFormulaReferencePages(AreaFormulasStackLayout);
					break;
				}
				case 1:
				{
					SwitchFormulaReferencePages(VolumeFormulasStackLayout);
					break;
				}
				case 2:
				{
					SwitchFormulaReferencePages(SurfaceAreaFormulasStackLayout);
					DisplayComingSoonAlert();
					break;
				}
				case 3:
				{
					SwitchFormulaReferencePages(OtherFormulasStackLayout);
					break;
				}
			}

			void SwitchFormulaReferencePages(StackLayout visibleReferencePage)
			{
				AreaFormulasStackLayout.IsVisible = false;
				VolumeFormulasStackLayout.IsVisible = false;

				visibleReferencePage.IsVisible = true;
			}
		}
		
		// AreaCalculator event handlers
		private void AreaShapePicker_OnSelectedIndexChanged(object sender, EventArgs e)
		{
			if (AreaShapePicker.SelectedIndex == 0)
			{
				ChangeAreaShapeCalculation(SquareAreaStackLayout);
				
				SquareFirstSideEntry.Placeholder = "Length (l)";
				SquareSecondSideEntry.Placeholder = "Width (w)";
				
				ChangeAreaImages(AreaFirstImage, AreaSecondImage, "icons8_border_left_96.png", "icons8_border_bottom_96.png");

				SquareFirstSideEntry.Text = "";
				SquareSecondSideEntry.Text = "";
			}
			else if (AreaShapePicker.SelectedIndex == 1)
			{
				ChangeAreaShapeCalculation(SquareAreaStackLayout);
				SquareFirstSideEntry.Placeholder = "Length (l)";
				SquareSecondSideEntry.Placeholder = "Width (w)";
				
				ChangeAreaImages(AreaFirstImage, AreaSecondImage, "icons8_border_left_48.png", "icons8_border_bottom_48.png");
				
				SquareFirstSideEntry.Text = "";
				SquareSecondSideEntry.Text = "";
			}
			else if (AreaShapePicker.SelectedIndex == 2)
			{
				ChangeAreaShapeCalculation(TriangleAreaStackLayout);
				
				ChangeAreaImages(AreaFirstImage, AreaSecondImage, "triangle_base_image.png", "triangle_height_image.png");
			}
			else if (AreaShapePicker.SelectedIndex == 3)
			{
				ChangeAreaShapeCalculation(SquareAreaStackLayout);
				
				SquareFirstSideEntry.Placeholder = "Base (b)";
				SquareSecondSideEntry.Placeholder = "Height (h)";
				
				ChangeAreaImages(AreaFirstImage, AreaSecondImage, "parallelogram_base_image.png", "parallelogram_height_image.png");
				
				SquareFirstSideEntry.Text = "";
				SquareSecondSideEntry.Text = "";
			}
			else if (AreaShapePicker.SelectedIndex == 4)
			{
				ChangeAreaShapeCalculation(TrapezoidStackLayout);
				ChangeTrapezoidAreaImages(AreaFirstImage, AreaSecondImage, AreaThirdImage, "trapezoid_base_a_image.png", "trapezoid_base_b_image.png", "trapezoid_height.png");
			}
			else if (AreaShapePicker.SelectedIndex == 5)
			{
				ChangeAreaShapeCalculation(CircleStackLayout);
			}
		}

		private void SquareFirstSideEntry_OnFocused(object sender, FocusEventArgs e)
		{
			SwitchDiagramImages(AreaFirstImage, AreaSecondImage, AreaFirstImage);
			HideAreaErrorLabel();
		}
		
		private void SquareSecondSideEntry_OnFocused(object sender, FocusEventArgs e)
		{
			SwitchDiagramImages(AreaFirstImage, AreaSecondImage, AreaSecondImage);
			HideAreaErrorLabel();
		}
		
		private void CalculateSquareAreaButton_OnClicked(object sender, EventArgs e)
		{
			CheckUnitSelection();
			
			switch (AreaFirstImage.IsVisible)
			{
				case true:
				{
					AreaFirstImage.IsVisible = false;
					break;
				}
				case false:
				{
					break;
				}
			}
			switch (AreaSecondImage.IsVisible)
			{
				case true:
				{
					AreaSecondImage.IsVisible = false;
					break;
				}
				case false:
				{
					break;
				}
			}
			
			if (AreaUnitsChipsGroup.SelectedItem == "Yards (yd)")
			{
				SquareRectangleArea("yd");
			}
			else if (AreaUnitsChipsGroup.SelectedItem == "Feet (ft)")
			{
				SquareRectangleArea("ft");
			}
			else if (AreaUnitsChipsGroup.SelectedItem == "Inches (in)")
			{
				SquareRectangleArea("in");
			}
			else if (AreaUnitsChipsGroup.SelectedItem == "Kilometers (km)")
			{
				SquareRectangleArea("km");
			}
			else if (AreaUnitsChipsGroup.SelectedItem == "Meters (m)")
			{
				SquareRectangleArea("m");
			}
			else if (AreaUnitsChipsGroup.SelectedItem == "Centimeters (cm)")
			{
				SquareRectangleArea("cm");
			}
			else if (AreaUnitsChipsGroup.SelectedItem == "Millimeters (mm)")
			{
				SquareRectangleArea("mm");
			}

			void SquareRectangleArea(string areaUnit)
			{
				if (String.IsNullOrEmpty(SquareFirstSideEntry.Text) || String.IsNullOrEmpty(SquareSecondSideEntry.Text))
				{
					AreaErrorLabel.IsVisible = true;
				}
				else
				{
					HideAreaErrorLabel();
					AreaResultLabel.IsVisible = true;
					double squareFirstSideEntryDouble = double.Parse(SquareFirstSideEntry.Text);
					double squareSecondSideEntryDouble = double.Parse(SquareSecondSideEntry.Text);
					AreaResultLabel.Text = $"Area = {squareFirstSideEntryDouble * squareSecondSideEntryDouble} {areaUnit}\u00b2";
				}
			}
		}

		private void CalculateTriangleAreaButton_OnClicked(object sender, EventArgs e)
		{
			CheckUnitSelection();
			
			switch (AreaFirstImage.IsVisible)
			{
				case true:
				{
					AreaFirstImage.IsVisible = false;
					break;
				}
				case false:
				{
					break;
				}
			}
			switch (AreaSecondImage.IsVisible)
			{
				case true:
				{
					AreaSecondImage.IsVisible = false;
					break;
				}
				case false:
				{
					break;
				}
			}
			
			if (AreaUnitsChipsGroup.SelectedItem == "Yards (yd)")
			{
				TriangleArea("yd");
			}
			else if (AreaUnitsChipsGroup.SelectedItem == "Feet (ft)")
			{
				TriangleArea("ft");
			}
			else if (AreaUnitsChipsGroup.SelectedItem == "Inches (in)")
			{
				TriangleArea("in");
			}
			else if (AreaUnitsChipsGroup.SelectedItem == "Kilometers (km)")
			{
				TriangleArea("km");
			}
			else if (AreaUnitsChipsGroup.SelectedItem == "Meters (m)")
			{
				TriangleArea("m");
			}
			else if (AreaUnitsChipsGroup.SelectedItem == "Centimeters (cm)")
			{
				TriangleArea("cm");
			}
			else if (AreaUnitsChipsGroup.SelectedItem == "Millimeters (mm)")
			{
				TriangleArea("mm");
			}

			void TriangleArea(string areaUnit)
			{
				if (String.IsNullOrEmpty(TriangleBaseEntry.Text) || String.IsNullOrEmpty(TriangleHeightEntry.Text))
				{
					AreaErrorLabel.IsVisible = true;
				}
				else
				{
					HideAreaErrorLabel();
					AreaResultLabel.IsVisible = true;
					double triangleBaseDouble = double.Parse(TriangleBaseEntry.Text);
					double triangleHeightDouble = double.Parse(TriangleHeightEntry.Text);
					AreaResultLabel.Text = $"Area = {triangleBaseDouble * triangleHeightDouble / 2} {areaUnit}\u00b2";
				}
			}
		}
		
		private void TriangleBaseEntry_OnFocused(object sender, FocusEventArgs e)
		{
			SwitchDiagramImages(AreaFirstImage, AreaSecondImage, AreaFirstImage);
			HideAreaErrorLabel();
		}
		
		private void TriangleHeightEntry_OnFocused(object sender, FocusEventArgs e)
		{
			SwitchDiagramImages(AreaFirstImage, AreaSecondImage, AreaSecondImage);
			HideAreaErrorLabel();
		}
		
		private void CalculateTrapezoidAreaButton_OnClicked(object sender, EventArgs e)
		{
			CheckUnitSelection();
			switch (AreaFirstImage.IsVisible)
			{
				case true:
				{
					AreaFirstImage.IsVisible = false;
					break;
				}
				case false:
				{
					break;
				}
			}
			switch (AreaSecondImage.IsVisible)
			{
				case true:
				{
					AreaSecondImage.IsVisible = false;
					break;
				}
				case false:
				{
					break;
				}
			}
			switch (AreaThirdImage.IsVisible)
			{
				case true:
				{
					AreaThirdImage.IsVisible = false;
					break;
				}
				case false:
				{
					break;
				}
			}
			
			if (AreaUnitsChipsGroup.SelectedItem == "Yards (yd)")
			{
				TrapezoidArea("yd");
			}
			else if (AreaUnitsChipsGroup.SelectedItem == "Feet (ft)")
			{
				TrapezoidArea("ft");
			}
			else if (AreaUnitsChipsGroup.SelectedItem == "Inches (in)")
			{
				TrapezoidArea("in");
			}
			else if (AreaUnitsChipsGroup.SelectedItem == "Kilometers (km)")
			{
				TrapezoidArea("km");
			}
			else if (AreaUnitsChipsGroup.SelectedItem == "Meters (m)")
			{
				TrapezoidArea("m");
			}
			else if (AreaUnitsChipsGroup.SelectedItem == "Centimeters (cm)")
			{
				TrapezoidArea("cm");
			}
			else if (AreaUnitsChipsGroup.SelectedItem == "Millimeters (mm)")
			{
				TrapezoidArea("mm");
			}

			void TrapezoidArea(string areaUnit)
			{
				if (String.IsNullOrEmpty(TrapezoidFirstBaseEntry.Text) || String.IsNullOrEmpty(TrapezoidSecondBaseEntry.Text))
				{
					HideAreaImages();
					AreaErrorLabel.IsVisible = true;
				}
				else
				{
					HideAreaErrorLabel();
					AreaResultLabel.IsVisible = true;
					
					double trapezoidFirstBaseDouble = double.Parse(TrapezoidFirstBaseEntry.Text);
					double trapezoidSecondBaseDouble = double.Parse(TrapezoidSecondBaseEntry.Text);
					double trapezoidHeightDouble = double.Parse(TrapezoidHeightEntry.Text);

					double trapezoidBaseTotal = trapezoidFirstBaseDouble + trapezoidSecondBaseDouble;
					double trapezoidBaseHalf = trapezoidBaseTotal / 2;
					double trapezoidTotalArea = trapezoidBaseHalf * trapezoidHeightDouble;
					
					AreaResultLabel.Text = $"Area = {trapezoidTotalArea} {areaUnit}\u00b2";
				}
			}
		}
		
		private void TrapezoidFirstBaseEntry_OnFocused(object sender, FocusEventArgs e)
		{
			SwitchTrapezoidDiagramImages(AreaFirstImage, AreaSecondImage, AreaThirdImage, AreaFirstImage);
			HideAreaErrorLabel();
		}

		private void TrapezoidSecondBaseEntry_OnFocused(object sender, FocusEventArgs e)
		{
			SwitchTrapezoidDiagramImages(AreaFirstImage, AreaSecondImage, AreaThirdImage, AreaSecondImage);
			HideAreaErrorLabel();
		}

		private void TrapezoidHeightEntry_OnFocused(object sender, FocusEventArgs e)
		{
			SwitchTrapezoidDiagramImages(AreaFirstImage, AreaSecondImage, AreaThirdImage, AreaThirdImage);
			HideAreaErrorLabel();
		}
		
		private void CircleRadiusDiameterEntry_OnFocused(object sender, FocusEventArgs e)
		{
			HideAreaErrorLabel();
			
			// PERFORMANCE TWEAKS
			
			// Checks if AreaResultLabel is visible or not
			// and decides to hide it or do nothing accordingly
			switch (AreaResultLabel.IsVisible)
			{
				case true:
				{
					AreaResultLabel.IsVisible = false;
					break;
				}
				case false:
				{
					break;
				}
			}

			// Checks if CircleDiagramsGrid is visible or not
			// and decides to hide it or do nothing accordingly
			switch (CircleDiagramsGrid.IsVisible)
			{
				case true:
				{
					break;
				}
				case false:
				{
					// We want the CircleDiagramsGrid to appear
					CircleDiagramsGrid.IsVisible = true;
					break;
				}
			}
		}
		
		private void CalculateCircleAreaButton_OnClicked(object sender, EventArgs e)
		{
			CheckUnitSelection();
			switch (CircleDiagramsGrid.IsVisible)
			{
				case true:
				{
					CircleDiagramsGrid.IsVisible = false;
					break;
				}
				case false:
				{
					break;
				}
			}
			
			if (AreaUnitsChipsGroup.SelectedItem == "Yards (yd)")
			{
				CircleArea("yd");
			}
			else if (AreaUnitsChipsGroup.SelectedItem == "Feet (ft)")
			{
				CircleArea("ft");
			}
			else if (AreaUnitsChipsGroup.SelectedItem == "Inches (in)")
			{
				CircleArea("in");
			}
			else if (AreaUnitsChipsGroup.SelectedItem == "Kilometers (km)")
			{
				CircleArea("km");
			}
			else if (AreaUnitsChipsGroup.SelectedItem == "Meters (m)")
			{
				CircleArea("m");
			}
			else if (AreaUnitsChipsGroup.SelectedItem == "Centimeters (cm)")
			{
				CircleArea("cm");
			}
			else if (AreaUnitsChipsGroup.SelectedItem == "Millimeters (mm)")
			{
				CircleArea("mm");
			}

			void CircleArea(string areaUnit)
			{
				if (String.IsNullOrEmpty(CircleRadiusDiameterEntry.Text))
				{
					AreaResultLabel.IsVisible = false;
					AreaErrorLabel.IsVisible = true;
				}
				else
				{
					AreaResultLabel.IsVisible = true;
					HideAreaErrorLabel();
					
					double circleMeasurement = double.Parse(CircleRadiusDiameterEntry.Text);
				
					if (RadiusDiameterSegmentedControl.SelectedSegment == 0)
					{
						double radiusSquared = circleMeasurement * circleMeasurement;
						AreaResultLabel.Text = $"Area = {radiusSquared * Math.PI} {areaUnit}\u00b2";
					}
					else if (RadiusDiameterSegmentedControl.SelectedSegment == 1)
					{
						AreaResultLabel.Text = $"Area = {circleMeasurement * Math.PI} {areaUnit}\u00b2";
					}
				}
			}
		}
		
		// DateCalculator event handlers
		private void DateCalcDifferenceButton_OnClicked(object sender, EventArgs e)
		{
			string dateFormat = "(days.hours:minutes:seconds)";
			
			// Checks whether the DateResultLabel
			// is already visible or not to improve
			// the overall performance - not needing
			// to do an unnecessary calculation
			switch (DateResultLabel.IsVisible)
			{
				case true:
				{
					break;
				}
				case false:
				{
					DateResultLabel.IsVisible = true;
					break;
				}
			}

			if (FirstTimePickerCheckbox.IsChecked && SecondTimePickerCheckbox.IsChecked == false)
			{
				if ((DateCalcFirstDatePicker.Date + FirstDatePickerTime.Time) > DateCalcSecondDatePicker.Date)
				{
					DateResultLabel.Text = 
						$"The difference is: {(DateCalcFirstDatePicker.Date + FirstDatePickerTime.Time) - DateCalcSecondDatePicker.Date} {dateFormat}";
				}
				else if ((DateCalcFirstDatePicker.Date + FirstDatePickerTime.Time) < DateCalcSecondDatePicker.Date)
				{
					DateResultLabel.Text =
						$"The difference is: {DateCalcSecondDatePicker.Date - (DateCalcFirstDatePicker.Date + FirstDatePickerTime.Time)} {dateFormat}";
				}
				else if ((DateCalcFirstDatePicker.Date + FirstDatePickerTime.Time) == DateCalcSecondDatePicker.Date)
				{
					DateResultLabel.Text = "There is no difference";
				}
			}
			else if (SecondTimePickerCheckbox.IsChecked && FirstTimePickerCheckbox.IsChecked == false)
			{
				if (DateCalcFirstDatePicker.Date > (DateCalcSecondDatePicker.Date + SecondDatePickerTime.Time))
				{
					DateResultLabel.Text = 
						$"The difference is: {DateCalcFirstDatePicker.Date - (DateCalcSecondDatePicker.Date + SecondDatePickerTime.Time)} {dateFormat}";
				}
				else if (DateCalcFirstDatePicker.Date < (DateCalcSecondDatePicker.Date + SecondDatePickerTime.Time))
				{
					DateResultLabel.Text =
						$"The difference is: {(DateCalcSecondDatePicker.Date + SecondDatePickerTime.Time) - DateCalcFirstDatePicker.Date} {dateFormat}";
				}
				else if (DateCalcFirstDatePicker.Date == (DateCalcSecondDatePicker.Date + SecondDatePickerTime.Time))
				{
					DateResultLabel.Text = "There is no difference";
				}
			}
			else if (FirstTimePickerCheckbox.IsChecked && SecondTimePickerCheckbox.IsChecked)
			{
				if ((DateCalcFirstDatePicker.Date + FirstDatePickerTime.Time) > (DateCalcSecondDatePicker.Date + SecondDatePickerTime.Time))
				{
					DateResultLabel.Text = 
						$"The difference is: {(DateCalcFirstDatePicker.Date + FirstDatePickerTime.Time) - (DateCalcSecondDatePicker.Date + SecondDatePickerTime.Time)} {dateFormat}";
				}
				else if ((DateCalcFirstDatePicker.Date + FirstDatePickerTime.Time) < (DateCalcSecondDatePicker.Date + SecondDatePickerTime.Time))
				{
					DateResultLabel.Text =
						$"The difference is: {(DateCalcSecondDatePicker.Date + SecondDatePickerTime.Time) - (DateCalcFirstDatePicker.Date + FirstDatePickerTime.Time)} {dateFormat}";
				}
				else if ((DateCalcFirstDatePicker.Date + FirstDatePickerTime.Time) == (DateCalcSecondDatePicker.Date + SecondDatePickerTime.Time))
				{
					DateResultLabel.Text = "There is no difference";
				}
			}
			else if (FirstTimePickerCheckbox.IsChecked == false && SecondTimePickerCheckbox.IsChecked == false)
			{
				if (DateCalcFirstDatePicker.Date  > DateCalcSecondDatePicker.Date)
				{
					DateResultLabel.Text = 
						$"The difference is: {DateCalcFirstDatePicker.Date - DateCalcSecondDatePicker.Date} {dateFormat}";
				}
				else if (DateCalcFirstDatePicker.Date < DateCalcSecondDatePicker.Date)
				{
					DateResultLabel.Text =
						$"The difference is: {DateCalcSecondDatePicker.Date - DateCalcFirstDatePicker.Date} {dateFormat}";
				}
				else if (DateCalcFirstDatePicker.Date == DateCalcSecondDatePicker.Date)
				{
					DateResultLabel.Text = "There is no difference";
				}
			}
		}
		
		private void FirstTimePickerCheckbox_IsCheckChanged(object sender, EventArgs e)
		{
			switch (FirstTimePickerCheckbox.IsChecked)
			{
				case true:
				{
					ViewTimePickersForDateCalc(FirstDatePickerTime, true);
					break;
				}
				case false:
				{
					ViewTimePickersForDateCalc(FirstDatePickerTime, false);
					break;
				}
			}
		}
		
		private void SecondTimePickerCheckbox_IsCheckedChanged(object sender, EventArgs e)
		{
			switch (SecondTimePickerCheckbox.IsChecked)
			{
				case true:
				{
					ViewTimePickersForDateCalc(SecondDatePickerTime, true);
					break;
				}
				case false:
				{
					ViewTimePickersForDateCalc(SecondDatePickerTime, false);
					break;
				}
			}
		}
		
		// About page event handlers
		private async void ExpandUpdateButton_OnClicked(object sender, EventArgs e)
		{
			if (Connectivity.NetworkAccess == NetworkAccess.Internet)
			{
				string url = ExpandUpdateButton.ClassId;
				await Browser.OpenAsync(url);
			}
			else
			{
				await DisplayAlert("No Internet",
					"Sorry, but currently you do not have internet access. Please try again later.", "Ok");
			}
		}

		// Settings page event handlers
		private void DarkModeSwitch_OnToggled(object sender, ToggledEventArgs e)
		{
			HolidayModeSwitch.IsToggled = false;
			if (DarkModeSwitch.IsToggled)
			{
				Preferences.Remove("holiday_mode_activated");
				Preferences.Set("dark_mode_activated", true);
				HolidayModeSantaHat.IsVisible = false;
				EnableDarkMode("#262626", "#434343", "#555555", "#979797");
			}
			else
			{
				Preferences.Remove("dark_mode_activated");
				HolidayModeSantaHat.IsVisible = false;
				DisableDarkMode("#005395", "#0173b7", "#27b1f1", "#4dbef3");
			}
		}
		
		private void HolidayModeSwitch_OnToggled(object sender, ToggledEventArgs e)
		{
			DarkModeSwitch.IsToggled = false;
			if (HolidayModeSwitch.IsToggled)
			{
				Preferences.Remove("dark_mode_activated");
				Preferences.Set("holiday_mode_activated", true);
				HolidayModeSantaHat.IsVisible = true;
				EnableDarkMode("#ff001e", "#00c000", "#00d400", "#00ff00");
			}
			else
			{
				Preferences.Remove("holiday_mode_activated");
				HolidayModeSantaHat.IsVisible = false;
				DisableDarkMode("#005395", "#0173b7", "#27b1f1", "#4dbef3");
			}
		}
		
		private void ClearAllPreferencesButton_OnClicked(object sender, EventArgs e)
		{
			DisplayAlert("Clear All Preferences", "All the app's preferences have now been cleared.", "Ok");
			Preferences.Clear();
		}
		
		/*
		 UNDERLYING PROGRAM METHODS AND FUNCTIONS
		 */

		private void DisplayComingSoonAlert()
		{
			DisplayAlert("Coming Soon", "This feature is not done yet", "Ok");
		}
		
		private void ViewTimePickersForDateCalc(MaterialTimePicker timePicker, bool visibility)
		{
			timePicker.IsVisible = visibility;
		}

		private void HideAreaErrorLabel()
		{
			if (AreaErrorLabel.IsVisible)
			{
				AreaErrorLabel.IsVisible = false;
			}
		}
		
		private void ChangeAreaImages(Image firstImage, Image secondImage, string firstImgSource, string secondImgSource)
		{
			firstImage.Source = firstImgSource;
			secondImage.Source = secondImgSource;
		}
		
		private void ChangeTrapezoidAreaImages(Image firstImage, Image secondImage, Image thirdImage, string firstImgSource, string secondImgSource, string thirdImgSource)
		{
			firstImage.Source = firstImgSource;
			secondImage.Source = secondImgSource;
			thirdImage.Source = thirdImgSource;
		}
		
		private void SwitchDiagramImages(Image firstDiagram, Image secondDiagram, Image showingDiagram)
		{
			AreaResultLabel.IsVisible = false;
			// Allows you to change the informational
			// diagram shown to the user in any calculator page.
			firstDiagram.IsVisible = false;
			secondDiagram.IsVisible = false;

			showingDiagram.IsVisible = true;
		}
		
		private void HideAreaImages()
		{
			AreaFirstImage.IsVisible = false;
			AreaSecondImage.IsVisible = false;
			AreaThirdImage.IsVisible = false;
		}
		
		private void SwitchTrapezoidDiagramImages(Image firstDiagram, Image secondDiagram, Image thirdDiagram, Image showingDiagram)
		{
			AreaResultLabel.IsVisible = false;
			// Allows you to change the informational
			// diagram shown to the user in the trapezoid area
			// calculator page.
			firstDiagram.IsVisible = false;
			secondDiagram.IsVisible = false;
			thirdDiagram.IsVisible = false;

			showingDiagram.IsVisible = true;
		}
		
		private void ChangeAreaShapeCalculation(StackLayout change)
		{
			// Hides the initial instructional text on the
			// AreaCalculator page and changes the StackLayout
			// depending on what shape is selected.
			AreaCalcBeginLabel.IsVisible = false;
			SquareAreaStackLayout.IsVisible = false;
			TriangleAreaStackLayout.IsVisible = false;
			TrapezoidStackLayout.IsVisible = false;
			CircleStackLayout.IsVisible = false;
			
			AreaResultLabel.IsVisible = false;
			HideAreaErrorLabel();
			AreaFirstImage.IsVisible = false;
			AreaSecondImage.IsVisible = false;
			
			change.IsVisible = true;
		}
		
		private void ClickedOrUnclicked(ImageButton clicked)
		{
			// Resets all the background colors of
			// each ImageButton to a non-clicked state, then sets the
			// desired parameter-based ImageButton to have a BackgroundColor
			// of a clicked state.
			HomeImageButton.BackgroundColor = Color.FromHex(_navigationUnclickedHex);
			HomeImageButton.IsEnabled = true;
			ShadowEffect.SetColor(HomeImageButton, Color.Transparent);
			
			ConversionCalcImageButton.BackgroundColor = Color.FromHex(_navigationUnclickedHex);
			ConversionCalcImageButton.IsEnabled = true;
			ShadowEffect.SetColor(ConversionCalcImageButton, Color.Transparent);
			
			AreaCalcImageButton.BackgroundColor = Color.FromHex(_navigationUnclickedHex);
			AreaCalcImageButton.IsEnabled = true;
			ShadowEffect.SetColor(AreaCalcImageButton, Color.Transparent);
			
			VolumeCalcImageButton.BackgroundColor = Color.FromHex(_navigationUnclickedHex);
			VolumeCalcImageButton.IsEnabled = true;
			ShadowEffect.SetColor(VolumeCalcImageButton, Color.Transparent);
			
			DateCalcImageButton.BackgroundColor = Color.FromHex(_navigationUnclickedHex);
			DateCalcImageButton.IsEnabled = true;
			ShadowEffect.SetColor(DateCalcImageButton, Color.Transparent);
			
			AboutImageButton.BackgroundColor = Color.FromHex(_navigationUnclickedHex);
			AboutImageButton.IsEnabled = true;
			ShadowEffect.SetColor(AboutImageButton, Color.Transparent);
			
			SettingsImageButton.BackgroundColor = Color.FromHex(_navigationUnclickedHex);
			SettingsImageButton.IsEnabled = true;
			ShadowEffect.SetColor(SettingsImageButton, Color.Transparent);
			
			clicked.BackgroundColor = Color.FromHex(_navigationClickedHex);
			ShadowEffect.SetColor(clicked, Color.White);
			clicked.IsEnabled = false;
		}
		
		private void SwitchXamlPages(ScrollView visiblePage)
		{
			// Local method that resets all the StackLayout
			// "pages," to a false visibility value and then
			// setting a parameter-based StackLayout component
			// to have a visibility of true.
			WelcomeScrollView.IsVisible = false;
			CalcModesGrid.IsVisible = false;
			NavigationInstructionLabel.IsVisible = false;
			FormulaReference.IsVisible = false;
			AreaCalculator.IsVisible = false;
			VolumeCalculator.IsVisible = false;
			DateCalculator.IsVisible = false;
			AboutStackLayout.IsVisible = false;
			SettingsStackLayout.IsVisible = false;
			
			visiblePage.IsVisible = true; 
			visiblePage.Animate(new FadeInAnimation());
		}

		private void CheckUnitSelection()
		{
			if (AreaUnitsChipsGroup.SelectedItem == null)
			{
				AreaErrorLabel.IsVisible = true;
			}
		}
		
		private void EnableDarkMode(string darkBackgroundAccent, string darkAccent2, string darkAccent3, string darkAccent4)
		{
			_navigationClickedHex = darkAccent3;
			_navigationUnclickedHex = darkBackgroundAccent;
			UpdateNavigationImageButtons();


			ExpandCalcMain.BackgroundColor = Color.FromHex(darkBackgroundAccent);
			
			
			NavigationFlexLayout.BackgroundColor = Color.FromHex(darkAccent2);
			
			DateCalcFirstDatePicker.BackgroundColor = Color.FromHex(darkAccent2);
			DateCalcSecondDatePicker.BackgroundColor = Color.FromHex(darkAccent2);
			DateCalcFirstDatePicker.FocusedBackgroundColor = Color.FromHex(darkAccent2);
			DateCalcSecondDatePicker.FocusedBackgroundColor = Color.FromHex(darkAccent2);
			
			FirstDatePickerTime.BackgroundColor = Color.FromHex(darkAccent2);
			SecondDatePickerTime.BackgroundColor = Color.FromHex(darkAccent2);
			FirstDatePickerTime.FocusedBackgroundColor = Color.FromHex(darkAccent2);
			SecondDatePickerTime.FocusedBackgroundColor = Color.FromHex(darkAccent2);
			
			AreaShapePicker.BackgroundColor = Color.FromHex(darkAccent2);
			AreaShapePicker.FocusedBackgroundColor = Color.FromHex(darkAccent2);
			
			
			ImageButton1.BackgroundColor = Color.FromHex(darkAccent3);
			ImageButton2.BackgroundColor = Color.FromHex(darkAccent3);
			ImageButton3.BackgroundColor = Color.FromHex(darkAccent3);
			ImageButton4.BackgroundColor = Color.FromHex(darkAccent3);
			
			CalculateSquareAreaButton.BackgroundColor = Color.FromHex(darkAccent3);
			CalculateTriangleAreaButton.BackgroundColor = Color.FromHex(darkAccent3);
			CalculateCircleAreaButton.BackgroundColor = Color.FromHex(darkAccent3);
			CalculateTrapezoidAreaButton.BackgroundColor = Color.FromHex(darkAccent3);
			DateCalcDifferenceButton.BackgroundColor = Color.FromHex(darkAccent3);
			ClearAllPreferencesButton.BackgroundColor = Color.FromHex(darkAccent3);
			FormulaReferenceGoButton.BackgroundColor = Color.FromHex(darkAccent3);
			
			AreaUnitsChipsGroup.BorderColor = Color.FromHex(darkAccent3);
			AreaUnitsChipsGroup.SelectedBackgroundColor = Color.FromHex(darkAccent3);
			
			ExpandUpdateButton.BorderColor = Color.FromHex(darkAccent3);
			
			DateCalcDifferenceButton.BackgroundColor = Color.FromHex(darkAccent3);

			
			SquareFirstSideEntry.BackgroundColor = Color.FromHex(darkAccent4);
			SquareFirstSideEntry.FocusedBackgroundColor = Color.FromHex(darkAccent4);
			
			SquareSecondSideEntry.BackgroundColor = Color.FromHex(darkAccent4);
			SquareSecondSideEntry.FocusedBackgroundColor = Color.FromHex(darkAccent4);
			
			TriangleBaseEntry.BackgroundColor = Color.FromHex(darkAccent4);
			TriangleBaseEntry.FocusedBackgroundColor = Color.FromHex(darkAccent4);
			
			TriangleHeightEntry.BackgroundColor = Color.FromHex(darkAccent4);
			TriangleHeightEntry.FocusedBackgroundColor = Color.FromHex(darkAccent4);
			
			TrapezoidHeightEntry.BackgroundColor = Color.FromHex(darkAccent4);
			TrapezoidHeightEntry.FocusedBackgroundColor = Color.FromHex(darkAccent4);
			
			TrapezoidFirstBaseEntry.BackgroundColor = Color.FromHex(darkAccent4);
			TrapezoidFirstBaseEntry.FocusedBackgroundColor = Color.FromHex(darkAccent4);
			
			TrapezoidSecondBaseEntry.BackgroundColor = Color.FromHex(darkAccent4);
			TrapezoidSecondBaseEntry.FocusedBackgroundColor = Color.FromHex(darkAccent4);
			
			CircleRadiusDiameterEntry.BackgroundColor = Color.FromHex(darkAccent4);
			CircleRadiusDiameterEntry.FocusedBackgroundColor = Color.FromHex(darkAccent4);
		}

		private void UpdateNavigationImageButtons()
		{
			switch (NewFeatureIntroScrollView.IsVisible || NewFeatureStackViewChild.IsVisible)
			{
				case true:
				{
					AboutImageButton.SendClicked();
					HomeImageButton.SendClicked();
					WelcomeScrollView.IsVisible = false;
					WelcomeStackLayout.IsVisible = false;
					break;
				}
				case false:
				{
					AboutImageButton.SendClicked();
					SettingsImageButton.SendClicked();
					break;
				}
			}
		}

		private void DisableDarkMode(string lightAccent1, string lightAccent2, string lightAccent3, string lightAccent4)
		{
			_navigationClickedHex = "#005395";
			_navigationUnclickedHex = "#0297df";
			UpdateNavigationImageButtons();
			
			ExpandCalcMain.BackgroundColor = Color.FromHex("#0297df");
			
			
			CalculateSquareAreaButton.BackgroundColor = Color.FromHex(lightAccent1);
			CalculateSquareAreaButton.BackgroundColor = Color.FromHex(lightAccent1);
			CalculateTriangleAreaButton.BackgroundColor = Color.FromHex(lightAccent1);
			CalculateCircleAreaButton.BackgroundColor = Color.FromHex(lightAccent1);
			CalculateTrapezoidAreaButton.BackgroundColor = Color.FromHex(lightAccent1);
			DateCalcDifferenceButton.BackgroundColor = Color.FromHex(lightAccent1);
			ClearAllPreferencesButton.BackgroundColor = Color.FromHex(lightAccent1);
			FormulaReferenceGoButton.BackgroundColor = Color.FromHex(lightAccent1);
			AreaUnitsChipsGroup.BorderColor = Color.FromHex(lightAccent1);
			AreaUnitsChipsGroup.SelectedBackgroundColor = Color.FromHex(lightAccent1);
			
			ExpandUpdateButton.BorderColor = Color.FromHex(lightAccent1);
			
			
			NavigationFlexLayout.BackgroundColor = Color.FromHex(lightAccent2);
			
			DateCalcFirstDatePicker.BackgroundColor = Color.FromHex(lightAccent2);
			DateCalcSecondDatePicker.BackgroundColor = Color.FromHex(lightAccent2);
			DateCalcFirstDatePicker.FocusedBackgroundColor = Color.FromHex(lightAccent2);
			DateCalcSecondDatePicker.FocusedBackgroundColor = Color.FromHex(lightAccent2);
			
			FirstDatePickerTime.BackgroundColor = Color.FromHex(lightAccent2);
			SecondDatePickerTime.BackgroundColor = Color.FromHex(lightAccent2);
			FirstDatePickerTime.FocusedBackgroundColor = Color.FromHex(lightAccent2);
			SecondDatePickerTime.FocusedBackgroundColor = Color.FromHex(lightAccent2);
			
			AreaShapePicker.BackgroundColor = Color.FromHex(lightAccent2);
			AreaShapePicker.FocusedBackgroundColor = Color.FromHex(lightAccent2);
			
			
			ImageButton1.BackgroundColor = Color.FromHex(lightAccent3);
			ImageButton2.BackgroundColor = Color.FromHex(lightAccent3);
			ImageButton3.BackgroundColor = Color.FromHex(lightAccent3);
			ImageButton4.BackgroundColor = Color.FromHex(lightAccent3);
			
			
			SquareFirstSideEntry.BackgroundColor = Color.FromHex(lightAccent4);
			SquareFirstSideEntry.FocusedBackgroundColor = Color.FromHex(lightAccent4);
			
			SquareSecondSideEntry.BackgroundColor = Color.FromHex(lightAccent4);
			SquareSecondSideEntry.FocusedBackgroundColor = Color.FromHex(lightAccent4);
			
			TriangleBaseEntry.BackgroundColor = Color.FromHex(lightAccent4);
			TriangleBaseEntry.FocusedBackgroundColor = Color.FromHex(lightAccent4);
			
			TriangleHeightEntry.BackgroundColor = Color.FromHex(lightAccent4);
			TriangleHeightEntry.FocusedBackgroundColor = Color.FromHex(lightAccent4);
			
			TrapezoidHeightEntry.BackgroundColor = Color.FromHex(lightAccent4);
			TrapezoidHeightEntry.FocusedBackgroundColor = Color.FromHex(lightAccent4);
			
			TrapezoidFirstBaseEntry.BackgroundColor = Color.FromHex(lightAccent4);
			TrapezoidFirstBaseEntry.FocusedBackgroundColor = Color.FromHex(lightAccent4);
			
			TrapezoidSecondBaseEntry.BackgroundColor = Color.FromHex(lightAccent4);
			TrapezoidSecondBaseEntry.FocusedBackgroundColor = Color.FromHex(lightAccent4);
			
			CircleRadiusDiameterEntry.BackgroundColor = Color.FromHex(lightAccent4);
			CircleRadiusDiameterEntry.FocusedBackgroundColor = Color.FromHex(lightAccent4);
		}
	}
}
