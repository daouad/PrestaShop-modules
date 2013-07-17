{*
* 2007-2013 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2013 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}

{literal}
<script>
function popup1x(){ 
	var win2 = window.open('http://www.kwixo.com/static/payflow/html/popup-1x.htm','WIKwixo','toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=no,resizable=yes, width=820, height=800'); 
}

function popuprnp1xrnp(){ 
	var win2 = window.open('http://www.kwixo.com/static/payflow/html/popup-1x-rnp.htm','WIKwixo','toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=no,resizable=yes, width=820, height=800'); 
}

function popuprnp3x(){ 
	var win2 = window.open('http://www.kwixo.com/static/payflow/html/popup-3x.htm','WIKwixo','toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=no,resizable=yes, width=820, height=800');
}

function popupsimulcred(urlsimul){
	var win2 = window.open(urlsimul,'WIKwixo','toolbar=no, location=no, directories=no, status=no,menubar=no, scrollbars=no, resizable=yes, width=550, height=714');
}
</script>
{/literal}

{if $kwixo_standard eq '1'}
	<p class="payment_module">
		<a id="kwixo_payment" href="{$kwixo_std_link}">
			<span class="kwixo_payment_img"><img src="{$logo_kwixo_standard}" /></span>
			<span class="kwixo_payment_text"><span class="kwixo_payment_title">{l s="Immediate payment in one time" mod='kwixo'}</span>
				<br/>{l s="1 time payment by credit card" mod='kwixo'}
				<br/><br/><span onClick="popup1x();return false;"><u>{l s='Learn more' mod='kwixo'}</u></span>
			</span>
		</a>
	</p>
{/if}

{if $kwixo_comptant eq '1'}
	<p class="payment_module">
		<a id="kwixo_payment" href="{$kwixo_cpt_link}">
			<span class="kwixo_payment_img"><img src="{$logo_kwixo_comptant}" /></span>
			<span class="kwixo_payment_text"><span class="kwixo_payment_title">{l s="1 time payment with payment after receiving" mod='kwixo'}</span>
				<br/>{l s="Payment after receiving one time by Credit Card" mod='kwixo'}
				<br/><br/><span onClick="popuprnp1xrnp();return false;"><u>{l s='Learn more' mod='kwixo'}</u></span>
			</span>
		</a>
	</p>
{/if}

{if $kwixo_facturable eq '1'}
	<p class="payment_module">
		<a id="kwixo_payment" href="{$kwixo_facturable_link}">
			<span class="kwixo_payment_img"><img src="{$logo_kwixo_comptant}" /></span>
			<span class="kwixo_payment_text"><span class="kwixo_payment_title">{l s="Kwixo in one time payment by credit card option after receipt" mod='kwixo'}</span>
				<br/>{l s="Payment after receiving one time by Credit Card" mod='kwixo'}
				<br/><br/><span onClick="popuprnp1xrnp();return false;"><u>{l s='Learn more' mod='kwixo'}</u></span>
			</span>
		</a>
	</p>
{/if}

{if $kwixo_credit eq '1'}
	<p class="payment_module">
		<a id="kwixo_payment" href="{$kwixo_credit_link}">
			<span class="kwixo_payment_img"><img src="{$logo_kwixo_credit}" /></span>
			<span class="kwixo_payment_text"><span class="kwixo_payment_title">{l s="Payment in installments with payment after receipt" mod='kwixo'}</span>
				<br/>{l s="Payment in installments - Flow after receipt" mod='kwixo'}
				<br/><br/><span onClick="popuprnp3x();return false;"><u>{l s='Learn more' mod='kwixo'}</u></span>
				<span onClick="popupsimulcred('{$url_simul}');return false;"><u>{l s='Evaluate my monthly' mod='kwixo'}</u></span>
			</span>
		</a>
	</p>
{/if}
