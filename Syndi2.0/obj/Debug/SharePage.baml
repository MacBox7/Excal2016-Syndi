   M S B A M L   `   `   `  ����C  ?Syndi2.0, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:Syndi2._0	Syndi2._0  5          Syndi2._0.SharePage   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      )localclr-namespace:Syndi2._0     5        N� Title$  	SharePage��5
      .��5      ��  �� PanningDeceleration$ 0.003Q�6    �� PanningMode$ VerticalOnly=�6/    �� PanningRatio$	 0.5Q�6J   .��5   
   ]� .+�5      � ��5      �� 5       �� EndPoint$ 0.5,1&�6*    �� 
StartPoint$ 0.5,0&�6;   .��5      �  � Color$ 	#CC000000��6'    � Offset$ 0Q�69   � 5      $ 1Q�6'   $ 	#CC000000��62   � 5      $ 	#33000000��6'   $ 0.213Q�69   � 5      $ 	#7F000000��6'   $ 0.434Q�69   5      .+�5      �� $��Share��6   $��
102,50,0,0q�6)   $
��auto��6>   $
��Left=�6K   $	��Top=�6f   $��24(�6~   
�������$��Segoe UI Light)�6�   �� 5      -   5         ��Name$ openBrowser��5      $��
102,98,0,0q�6H   ���	#FF8B8B8B	 � ToolTip$	 Share new folder��6s   $
��Left=�6�   $	��Top=�6�   $	��360��6�   $	��120��6�   
 � Cursor$

 Hand��6�   ��6�   Z� .��5      �� -   5         ��Name$ image��5      $��64��6+   $��64��67   $��Resource/Icons/plus.png��6B   5      �� 5      $��Folders Shared��6   $��102,268,0,0q�62   $��24(�6G   
�������$��Segoe UI Light)�6h   $
��auto��6�   $	��Top=�6�   $
��Left=�6�   � 5      $	��192��6   $��40,317,40,0q�6$   $	��Top=�69    � ColumnDefinitions 5      �� 5      $��48 �6+   �� 5      $��1172* �6+   �� 5      $��48 �6+   .+�5!      �� -   5        $ 
BrowseLeft��5!      $��<��61   $��	MS Gothic)�6@   $��32(�6W   ���	#7FFFFFFF$
��0,72q�6�   $��48��6�   $��Center=�6�   $
��Left=�6�   $��48��6�   ��6e   Z� ��6�   Z� 6  �� 5"      -   5         ��Name$ SharedFolderScrollViewer��5"   #   $��1��6E   $ HorizontalOnly=�6U   $��Hidden=�6r   $��Hidden=�6�   .��5#      �� -   5         ��Name$ FolderContainer��5#   %    �� Orientation$ 
Horizontal=�6>   $��0q�6W   5$      �� 5%      -   5        $ BrowseRight��5%      $��>��62   $��2��6A   ���	#7FFFFFFF$��32(�6�   $��	MS Gothic)�6�   $
��0,72q�6�   $��48��6�   $��Center=�6�   ��6Q   Z� ��6g   Z� 6�   5&      5'      5(      5)      5*      