<?php
$aModule = array(
    'id'          => 'mveith/ampel',
    'title'       => 'Lagerampel in Listenansicht',
    'description' =>  array(
        'de'=>'Lagerampel in Listenansicht',
    ),
    'version'     => '1.0',
    'url'         => 'www.badshop-veith.de',
    'email'       => 'info@badshop-veith.de',
    'author'      => 'Mario Veith',
    'extend'      => array(
    ),
    'blocks' => array(
        array('template' => 'widget/product/listitem_line.tpl', 'block'=>'widget_product_listitem_line_tobasket', 'file'=>'out/blocks/ampel_list.tpl'),
		array('template' => 'widget/product/listitem_infogrid.tpl', 'block'=>'widget_product_listitem_infogrid_tobasket', 'file'=>'out/blocks/ampel_infogrid.tpl'),    
		array('template' => 'widget/product/listitem_grid.tpl', 'block'=>'widget_product_listitem_grid_tobasket', 'file'=>'out/blocks/ampel_grid.tpl'),
		),
		);
