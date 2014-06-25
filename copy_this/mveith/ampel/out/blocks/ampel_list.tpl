[{oxstyle include=$oViewConf->getModuleUrl('mveith/ampel', 'out/src/css/ampel.css')}]
[{$smarty.block.parent}]
<div id="ampel_list">
[{block name="details_productmain_stockstatus"}]
                    [{if $product->getStockStatus() == -1}]
                        <span class="stockFlagl notOnStock">
                            [{if $product->oxarticles__oxnostocktext->value}]
                                [{$product->oxarticles__oxnostocktext->value}]
                            [{elseif $oViewConf->getStockOffDefaultMessage()}]
                                [{oxmultilang ident="MESSAGE_NOT_ON_STOCK"}]
                            [{/if}]
                            [{if $product->getDeliveryDate()}]
                                [{oxmultilang ident="AVAILABLE_ON"}] [{$product->getDeliveryDate()}]
                            [{/if}]
                        </span>
                    [{elseif $product->getStockStatus() == 1}]
                        <span class="stockFlagl lowStock">
                            [{oxmultilang ident="LOW_STOCK"}]
                        </span>
                    [{elseif $product->getStockStatus() == 0}]
                        <span class="stockFlagl">
                            [{if $product->oxarticles__oxstocktext->value}]
                                [{$product->oxarticles__oxstocktext->value}]
                            [{elseif $oViewConf->getStockOnDefaultMessage()}]
                                [{oxmultilang ident="READY_FOR_SHIPPING"}]
                            [{/if}]
                        </span>
                    [{/if}]
                [{/block}]
				</div>
