   M S B A M L   `   `   `  ����C  ?Syndi2.0, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:Syndi2._0	Syndi2._0  5   	       Syndi2._0.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:Syndi2._0     5   	   -   5          � WindowStartupLocation$  CenterScreen=�5   	    � WindowState$ 	Maximized=�5	   	    � Title$ Syndi��5
   	   $	��768��6   $
��1368��6$   $��Segoe UI Light)�61   ��5      �� 5   
    �� ImageSource$ Resource/SpaceBg.png��6    j� Stretch$ UniformToFill=�68   6R   .��5      � .+�5   
   � $��59��6   $	��Top=�6   ���	#FF131313.+�5      �� $��24��6   $��24��6    $
��Left=�6+   $��Center=�6F   $��Resource/SyndiIcon.png��6a   $��
11,18,0,17q�6�   $
��Fill=�6�    J� RenderTransformOrigin$ 0.446,0.461&�6�   �� 5      -   5         ��Name$ 	textBlock��5      $��
46,11,0,18q�6+   $
��Wrap=�6?   $��Syndi��6S   $��60��6`   $��24(�6k   $��30��6y   $
��Left=�6�   
�������6�   �� 5         FolderButtonBorder#��[  6   $��59��6A   $��59��6L   $��Right=�6X   $��0q�6t   ._�5      �� -   5         ��Name$ button��5        FolderButton#��[ 6)   $��0q�6O   $��58��6Z   $��58��6e    � ToolTip$ Refresh Page��6q   	 � Cursor$
	 Hand��6�   .��5      �� -   5        
 ��Name$
 Refresh_Icon��5      $��Resource/Icons/reload.png��62   $��Center=�6U   $��Center=�6r   $��27��6�   $��27��6�   5      5      5      �� 5   
   $��48��6   ���	#FF212121$��0,59,0,0q�67   $
��Left=�6I   .+�5      �� -   5        $��64��5      $��48��6!   $��0q�6,   $��Stretch=�67   $��0q�6S   $��Right=�6g   $
 Home��6�   $
	 Hand��6�   ��6�   Z� .��5      �� -   5        $
 	Home_Icon��5      $��24��6+   $��24��67   $��Center=�6B   $��Center=�6_   $��Resource/Icons/home.png��6z   $
��Fill=�6�   5      �� 5      -   5        $��64��5      $��48��6!   $��0q�6,   $��Stretch=�67   $��0q�6S   $��Stretch=�6}   $ Share your folders��6�   $
	 Hand��6�   ��6g   Z� .��5      �� -   5        $
 
Share_Icon��5      $��24��6,   $��24��68   $��Center=�6C   $!��Resource/Icons/molecule.png��6`   $
��Fill=�6�   $��Center=�6�   $ 0.457,0.486&�6�   5      �� 5       -	   5        $ searchPageButton��5       $��64��6/   $��48��6;   $��0q�6F   $��Stretch=�6Q   $��0q�6m   $��Stretch=�6�   $ Search��6�   $
	 Hand��6�   ��6�   Z� .��5!      �� -
   5        $
 Search_Icon��5!      $��24��6-   $��24��69   $��Center=�6D   $��Center=�6a   $��Resource/Icons/search.png��6}   $
��Fill=�6�   $ 0.457,0.486&�6�   5"      �� 5#      -   5        $ settingsPageButton��5#      $��64��61   $��48��6=   $��0q�6H   $��0q�6S   $��Stretch=�6}   $ Settings��6�   $
	 Hand��6�   $��Bottom=�6�   ��6g   Z� .��5$      �� -   5        $
 settings��5$      $��24��6*   $��24��66   $��Center=�6A   $��Center=�6^   $!��Resource/Icons/settings.png��6z   $
��Fill=�6�   $ 0.457,0.486&�6�   5%      5&      ]� 5'   
   .+�5(       � -   5          �Name$ 	MainFrame��5(        � NavigationUIVisibility$ Hidden=�6'   $��	48,59,0,0q�6G   5)      5*      5+      