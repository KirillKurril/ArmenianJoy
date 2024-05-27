using Microsoft.Maui.Controls.Shapes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Backgammon.UI.Selectors
{
    public class EllipseTemplateSelector : DataTemplateSelector
    {
        protected override DataTemplate OnSelectTemplate(object item, BindableObject container)
        {
            Ellipse ellipse = item as Ellipse;

            if (ellipse.Fill == Brush.White)
            {
                return new DataTemplate(() =>
                {
                    return new Ellipse { WidthRequest = 18, HeightRequest = 18, Fill = Brush.White };
                });
            }
            else if (ellipse.Fill == Brush.Black)
            {
                return new DataTemplate(() =>
                {
                    return new Ellipse { WidthRequest = 18, HeightRequest = 18, Fill = Brush.Black };
                });
            }

            return new DataTemplate(() =>
            {
                return new Ellipse { WidthRequest = 18, HeightRequest = 18, Fill = Brush.Red };
            });
        }
    }
}
