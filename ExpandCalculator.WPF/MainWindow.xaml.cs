using Xamarin.Forms;
using Xamarin.Forms.Platform.WPF;

namespace ExpandCalculator.WPF
{
	public partial class MainWindow : FormsApplicationPage
	{
		public MainWindow()
		{
			InitializeComponent();
			Forms.Init();
			LoadApplication(new ExpandCalculator.App());
		}
	}
}