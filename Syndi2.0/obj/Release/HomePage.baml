   M S B A M L   `   `   `  ���� C  ?Syndi2.0, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:Syndi2._0	Syndi2._0      Syndi2._0.HomePage   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     )localclr-namespace:Syndi2._0     -     N� Title$  HomePage�� N� 
Background ��  �� ImageSource$ Resource/Clouds.png�� �� Opacity$	 0.2Q� j� 
AlignmentX$
 Left=� j� 
AlignmentY$	 Top=� j� Stretch$ UniformToFill=� j� Viewbox$ 0,0,1.5,1.5�.����  �� PanningDeceleration$ 0.003Q�	 �� PanningMode$	 VerticalOnly=�
 �� PanningRatio$	
 0.5Q�.��]� .+�� ����  �� EndPoint$ 0.5,1&� �� 
StartPoint$ 0.5,0&�.���  � Color$ 	#CC000000�� � Offset$ 0Q�� $ 1Q�$ 	#7F000000��� $ 	#33000000��$ 0.261Q�.+��� -    ��Name$ PcName��$��0,30,0,0q�$
��Wrap=�$��PC-Name��$��24(�$	��Top=�$��Center=�
�������$��Segoe UI Light)�� $��0,67,0,0q�$	��113��$	��Top=�$��Center=�$	��220��.+��� -   $ NumberOfConnections��$��
104,10,0,0q�$
��Wrap=�$	��000��$	��Top=�$��48(�$
��Left=�$��Segoe UI Light)�
�������$	��106��$��73���� -    ��Name$ Assets_Icons_ethernet_png��$��65��$��	34,10,0,0q�$!��Resource/Icons/ethernet.png��$
��Fill=�$	��Top=�$
��Left=�$��60���� -   $ 
textBlock1��$��0,0,0,2q�$��Bottom=�$��27��$��Center=�$��Segoe UI Light)�$��20(��� 
�������$�connections ���� -    ��Name$ availableText�����	#FFE8554E$
��Bold"�$��Segoe UI)�$�unavailable���� -   $ Avail��$
��Left=�$��39��$��
90,232,0,0q�$
��Wrap=�$��Explore your connections��$	��Top=�$	��258��$��24(�
�������$��Segoe UI Light)�� $	��192��$��40,271,40,0q�$	��Top=� � ColumnDefinitions �� $��48 ��� $��1172* ��� $��48 �.+��� -    ��Name$ BrowseLeftPc��$��<��$��0��$��	MS Gothic)�$��32(����	#7FFFFFFF$
��0,72q�$��48��$��Center=�$��48�� � Cursor$
 Hand����Z� ��Z� �� -	   $ BrowseRightPc��$��>��$��2�����	#7FFFFFFF$��32(�$��	MS Gothic)�$
��0,72q�$��48��$��Center=�$
 Hand����Z� ��Z� �� -
    ��Name$ PCScrollViewer��$��1��$	 HorizontalOnly=�$��Hidden=�$��Hidden=�.��]� .+��� -    ��Name$ PcListTileContainer��$��1�� �� Orientation$ 
Horizontal=��� -   $ 
Avail_Copy��$
��Left=�$��39��$��
90,484,0,0q�$
��Wrap=�$	��Top=�$	��459��$��24(�
�������$��Segoe UI Light)��� $�Files shared by ���� -   $ CurrentViewPc��$��Segoe UI)�$� ��$
��Bold"�$��20(�� $��48��$��88,529,88,0q�$	��Top=�.+��� $	 HorizontalOnly=�$��Hidden=�$��Hidden=�$��0,0,0,2q�.���� -   $ FolderPathPanel��$��0q�$ 
Horizontal=�� $	��250��$��40,591,40,50q�$	��Top=� �� $��48 ��� $��1172* ��� $��48 �.+��� -   $ BrowseLeftFiles��$��<��$��0��$��	MS Gothic)�$��32(����	#7FFFFFFF$
��0,72q�$��48��$��Center=�$��48��$
 Hand����Z� ��Z� �� -   $ BrowseRightFiles��$��>��$��2�����	#7FFFFFFF$��32(�$��	MS Gothic)�$
��0,72q�$��48��$��Center=�$
 Hand����Z� ��Z� �� -   $ PCFolderScroll��$��1��$	 HorizontalOnly=�$��Hidden=�$��Hidden=�$��0,2,0,-2q�.���� -   $ PcDetailsContainer��$��0q�$ 
Horizontal=�