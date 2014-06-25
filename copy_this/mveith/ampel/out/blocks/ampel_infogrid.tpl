[{oxstyle include=$oViewConf->getModuleUrl('mveith/ampel', 'out/src/css/ampel.css')}]
[{$smarty.block.parent}]
<div id="ampel_list_ig">
[{block name="details_productmain_stockstatus"}]
                    [{if $product->getStockStatus() == -1}]
                        <span class="stockFlagig notOnStock">
                            </span>
                    [{elseif $product->getStockStatus() == 1}]
                        <span class="stockFlagig lowStock">
                            </span>
                    [{elseif $product->getStockStatus() == 0}]
                        <span class="stockFlagig">
                            </span>
                    [{/if}]
                [{/block}]
				</div>
