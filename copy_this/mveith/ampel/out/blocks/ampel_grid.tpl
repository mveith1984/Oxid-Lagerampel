[{oxstyle include=$oViewConf->getModuleUrl('mveith/ampel', 'out/src/css/ampel.css')}]
[{$smarty.block.parent}]
<div id="ampel_list">
[{block name="details_productmain_stockstatus"}]
                    [{if $product->getStockStatus() == -1}]
                        <span class="stockFlagl notOnStock">
                            </span>
                    [{elseif $product->getStockStatus() == 1}]
                        <span class="stockFlagl lowStock">
                            </span>
                    [{elseif $product->getStockStatus() == 0}]
                        <span class="stockFlagl">
                            </span>
                    [{/if}]
                [{/block}]
				</div>
