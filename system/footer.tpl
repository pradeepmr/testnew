</div>
<?php if($ismobile==0)
    { ?>
<script src="https://www.google.com/recaptcha/api.js?onload=myCallBack&render=6LcN_akUAAAAAFiQ2S4tDTDUVDSmUkarhtOu7x5k" async defer></script>
<?php $route=$this->request->get['route']; ?>
  
<script>var myCallBack = function() {
    
  grecaptcha.ready(function() {
      grecaptcha.execute('6LcN_akUAAAAAFiQ2S4tDTDUVDSmUkarhtOu7x5k', {action: 'quickcontact'}).then(function(token) { console.log(token); document.getElementById('g-recaptcha-response').value =    token;  });

      <?php if($route=='information/contact'){ ?> grecaptcha.execute("6LcN_akUAAAAAFiQ2S4tDTDUVDSmUkarhtOu7x5k", {action: 'contactform'}).then(function(token) { console.log(token); document.getElementById('g-recaptcha--contact-response').value =    token; });<?php }?> 

  }); };
  </script> 
<style>div.grecaptcha-badge{width:0 !important;}div.grecaptcha-badge.show{width:256px !important; }</style>
<?php }?>


<?php if($ismobile!=1 && $this->request->get['route'] != 'product/product' && $ishome!=1){?>

<script type="text/javascript" src="catalog/view/javascript/owl.carousel.js"  defer="defer"></script>

<link rel="stylesheet" type="text/css" href="catalog/view/javascript/owl.carousel.min.css" />

<?php } ?>

<script type="text/javascript">

  $(document).ready(function(){

  $('#reviewsection').owlCarousel({onInitialize: carouselcallback,loop: true, dots:true,margin: 20, responsiveClass: true,responsive: {  0: {   items: 1, nav: true,  }, 600: { items: 3, nav: true, loop: true }, 1000: { items: 3, nav: true, loop: true, margin: 20 },  1400: { items:3,  nav: true,   loop: true,  margin: 20   }   } });   

});

</script></div></section></div></div><div class="clear"></div>
</div>
<?php if($ismobile!=1){?>
<div class="footer-top-wrapper">

<div class="main-wrapper">
<?php if($ismobile!=1 && $ishome==1){?>

<h2 class="review_heading main-heading-1">customer reviews</h2>
<div id="reviewsection" class="owl-carousel owl-theme review-section">
<?php foreach($reviews as $review){?>
<div class="review-section__item">
<div class="review-section__header">
<div class="review-section__header-icon"><?php echo substr($review['author'],0,1);?></div>
<div class="review-section__header-right"><h4><?php echo $review['author'];?></h4><div class="ratingspan<?php echo $review['ratingclass'];?>"></div> </div>
</div>
<div class="review-section__details">
<b>Product & Design Quality</b>- <?php echo $review['productreview'];?><br><br>
<b>Customer Service & shipping</b>- <?php echo $review['service_review'];?>
</div>
</div>
<?php }?>
</div>

<?php }?>


        <div class="clients-section">



        <?php if($ismobile==1){?><h4 class="mobile-esteem-client"><span>Esteemed</span> Clients</h4>

        <?php }else{?>

        <h4 class="clients-section__heading main-heading-1">Esteemed Clients</h4>

        <div class="clients-section__link"><a href="<?php echo str_replace('&', '&amp;', $clients); ?>" title="Clients">View More Clients</a></div>

      <?php }?>

      <div id="esteemedclients" class="clients-section__container"></div>

        <?php if($ismobile==1){?>

        <p class="moreclientslink"><a href="<?php echo str_replace('&', '&amp;', $clients); ?>" title="Clients">View More Clients</a></p><?php }?>



      </div>

</div>

</div>
<?php }?>




<?php if($ismobile!=1){?>

<footer>



<div class="main-wrapper">

<div class="web-row">

<div class="footer__columns">

<!-- <img src="catalog/view/theme/proimprint/images/footer-lady.png"/> -->

</div>

<div class="footer__columns">

	<div class="footer__subscribe-wrapper">

		<h3>SUBSCRIBE NOW</h3>

		<div class="footer_subscribe-text">Sign Up For Our Email List And Receive Exclusive Offers and Coupons!</div>

		<span class="footer_subscribe-button pim-btn btn--blue" title="Sign Up" onclick="viewpopup();">SUBSCRIBE</span>

	</div>

	<div class="footer__youtube-wrapper">

		<div class="footer_youtube-header"><img src="catalog/view/theme/proimprint/images/youtubechannel.png"></div>

		<div class="footer_youtube-text">Subscribe to our channel and never miss a new video!</div>

		<a href="https://youtube.com/c/ProImprint" target="_blank"><span class="footer_youtube-button pim-btn btn--red" title="SUBSCRIBE">SUBSCRIBE</span></a>

	</div>

</div>

<div class="footer__columns">

<h3>BLOG POSTS</h3>

<?php if(!empty($blog)){ ?>

<ul>

<?php for($i=0;$i<4;$i++){ if (isset($blog[$i]) && is_array($blog[$i])) { ?>  

	<li>

	<a href="<?php echo $blog[$i]['guid']; ?>" target="_blank" title="<?php echo $blog[$i]['post_title']; ?>"><?php echo $blog[$i]['post_title']; ?></a></li>

<?php } } ?>

</ul>

<div class="footer__blog-viewall"><a href="<?php echo str_replace('&', '&amp;', $blog_url); ?>" target="_blank" title="Read More Blog posts"><?php echo "Read More Blog posts"; ?> </a></div>

<?php }?>

</div>

<div class="footer__columns">

		<div id="footer__contact">

			

				<div class="footer__contact-heading"><h3>Contact Us</h3></div>

				<form action="<?php echo str_replace('&', '&amp;', $qaction); ?>" method="post" enctype="multipart/form-data" id="quickcontact" name="quickcontact">

				<input type="hidden" id="g-recaptcha-response" name="g-recaptcha-response">



				<div class="footer__contact-fromwrap">

					<div class="footer__contact-right">

						<input name="quickcontactname"  value="<?php echo $qname; ?>" type="text"  class="footer__textbox" placeholder="Name" onkeypress="Trim(document.quickcontact.quickcontactname)"/>   

						<?php if ($error_qname) { ?><span class="error"><?php echo $error_qname; ?></span><?php } ?>

					</div>

				</div>

				<div class="footer__contact-fromwrap">

					<div class="footer__contact-right">

						
						<input name="quickcontactphone" placeholder="Phone" type="text" value="<?php echo $qphone; ?>" class="footer__textbox"  onafterpaste="this.value=this.value.replace(/\D/g,'')" onkeypress="return isNumberKeys(event);" />

						<?php if ($error_qphone) { ?><span class="error"><?php echo $error_qphone; ?></span><?php } ?>

					</div>

				</div>

				<div class="footer__contact-fromwrap">

					<div class="footer__contact-right">

						<input name="quickcontactemail" placeholder="Email" id="quickcontactemail" value="<?php echo $qemail; ?>" type="text" class="footer__textbox"  onkeypress="Trim(document.quickcontact.quickcontactemail)"/>

						<?php if ($error_qemail) { ?><span class="error"><?php echo $error_qemail; ?></span><?php } ?>

					</div>

				</div>

				<div class="footer__contact-fromwrap">

					<div class="footer__contact-right">

						<textarea rows="25" name="quickcontactcomments" placeholder="Comments" class="footer__commentbox" cols="25"><?php echo $qcomments; ?></textarea><?php if ($error_qcomments) { ?><span class="error"><?php echo $error_qcomments; ?></span><?php } ?>

					</div>

				</div>

				<div class="footer__contact-fromwrap">

					<div id="recaptcha2" style="transform:scale(0.81);-webkit-transform:scale(0.81);transform-origin:0 0;-webkit-transform-origin:0 0;"></div>

					<?php if ($error_captcha) { ?><span class="error" style="text-align:right"><?php echo $error_captcha; ?></span><?php } ?>

				</div>

				<div class="footer__contact-fromwrap">

					<button type="button" class="pim-btn btn--blue" onclick="validate_quickcontact(quickcontact);">Submit</button>

				</div>

					</form> 

			</div>

</div>





</div></div>



</footer>



<div class="main-wrapper">

<div class="web-row">

	<div class="footer__menu">

		<ul>

			<li><a href="<?php echo str_replace('&', '&amp;', $home); ?>" title="Home" class="footer"><?php echo $text_home; ?></a> </li>
			
			<li><a href="<?php echo str_replace('&', '&amp;', $about); ?>"  title="About Us" class="footer"><?php echo $text_about; ?></a> </li>
            
            <li><a href="<?php echo HTTP_SERVER ?>Customer-Service" title="Customer Service" class="footer">Customer Service</a> </li>
			
			<li><a href="<?php echo str_replace('&', '&amp;', $contact); ?>"  title="Contact Us" class="footer"><?php echo $text_contact; ?></a></li>
			
			<li><a href="<?php echo str_replace('&', '&amp;', $priceguarantee); ?>" id="tab_priceguarantee" title="Price Guarantee" class="footer"><?php echo $text_priceguarantee; ?></a> </li>

			<li><a href="<?php echo str_replace('&', '&amp;', $faqs); ?>"  title="Faqs" class="footer"><?php echo $text_faqs; ?></a> </li>
			
			<li><a href="<?php echo str_replace('&', '&amp;', $termsandconditions); ?>" id="tab_termsandconditions" title="Terms and Conditions" class="footer"><?php echo $text_termsandconditions; ?></a> </li>
			
			<li><a href="<?php echo str_replace('&', '&amp;', $privacypolicy); ?>" id="tab_privacypolicy" title="Privacy Policy" class="footer"><?php echo $text_privacypolicy; ?></a> </li>

			<li><a href="<?php echo HTTP_SERVER ?>Reviews" title="Reviews" class="footer">Reviews</a> </li>
			
			<li><a href="<?php echo HTTP_SERVER ?>Careers" title="Careers" class="footer">Careers</a> </li>
			
			<li><a href="<?php echo str_replace('&', '&amp;', $clients); ?>" title="Clients" class="footer">Clients</a></li>

			<li><a href="<?php echo str_replace('&', '&amp;', $sitemap); ?>" title="Sitemap" class="footer">Sitemap</a></li> 


		</ul>

	</div>

	<div class="footer__icons">

		<div class="footer__icons-columns column__1"><img src="catalog/view/theme/proimprint/images/payment-method-icons.png?version-1106217"></div>

		<div class="footer__icons-columns column__2"><img src="catalog/view/theme/proimprint/images/pcidss.png?version-110621"><img src="catalog/view/theme/proimprint/images/bbb-d-b-icon.png"><img src="catalog/view/theme/proimprint/images/SSL-Secured.png"></div>

		<div class="footer__icons-columns column__3"></div>

	</div>
<?php
$starService = 'star-service.png';
  $starServiceWebp = (explode('.',$starService)[0]).'.webp';
  if(WEBP==1 && file_exists('catalog/view/theme/default/images/'.$starServiceWebp)){
    $starService = $starServiceWebp;
  }
  ?>
	<div id="lcqualitybadge" class="footer-livchat-badge"><a href="https://quality.livechatinc.com/7428551" target="_blank"><img class="dymimg" src="catalog/view/theme/default/images/footerblank.jpg" data-src="catalog/view/theme/default/images/<?php echo $starService; ?>" alt="Excellent Service" title="Excellent Service" border="0" width="152" height="88"/></a></div>

</div>



</div>





<?php }else{?><div class="footerbg mobile-footer-bg"><div class="footer_main_content"><div class="footer_information"><h3 class="footerh3">Information</h3></div><div class="mob-footer-cent"><ul><li class="padlft"><a href="<?php echo str_replace('&', '&amp;', $home); ?>" title="Home"><?php echo $text_home; ?></a> </li>
<li><a href="<?php echo str_replace('&', '&amp;', $about); ?>"  title="About Us"><?php echo $text_about; ?></a> </li>
<li><a href="<?php echo HTTP_SERVER ?>Customer-Service" title="Customer Service">Customer Service</a> </li>
<li><a href="<?php echo str_replace('&', '&amp;', $contact); ?>"  title="Contact Us"><?php echo $text_contact; ?></a></li>
<li><a href="<?php echo str_replace('&', '&amp;', $priceguarantee); ?>" id="tab_priceguarantee" title="Price Guarantee"><?php echo $text_priceguarantee; ?></a> </li>
<li><a href="<?php echo str_replace('&', '&amp;', $faqs); ?>"  title="Faqs"><?php echo $text_faqs; ?></a> </li>
<li class="padlft"><a href="<?php echo str_replace('&', '&amp;', $termsandconditions); ?>" id="tab_termsandconditions" title="Terms and Conditions"><?php echo $text_termsandconditions; ?></a> </li>

<li><a href="<?php echo str_replace('&', '&amp;', $privacypolicy); ?>" id="tab_privacypolicy" title="Privacy Policy"><?php echo $text_privacypolicy; ?></a> </li>
<li><a href="<?php echo HTTP_SERVER ?>Reviews" title="Reviews">Reviews</a> </li>
<li><a href="<?php echo HTTP_SERVER ?>Careers" title="Careers">Careers</a> </li>
<li ><a href="<?php echo str_replace('&', '&amp;', $clients); ?>" title="Clients">Clients</a></li>
<li class="padlft"> <a href="<?php echo str_replace('&', '&amp;', $sitemap); ?>" title="Sitemap">Sitemap</a></li> 
<!--<li class="padlft mob-right-none"> <a href="./blog" title="Blog" target="_blank" >Blog</a></li>-->
<!--<li class="list_last_li webno"><a href="<?php echo HTTP_SERVER ?>Fonts" title="Fonts">Fonts</a></li>--><br clear="all" /></ul></div></div><div class="mobile-payment-option"><div class="payment_heading">Payment Options</div><div class="payment_icons"></div></div><div class="mobile_follow"><div class="networks"><div class="socialicons_wrap">Follow Us On</div>

<span><div class="socialicons_wrap"><a href="https://www.instagram.com/proimprint/" target="_blank" title="Instagram">

<span class="ico_insto"></span></a></div><div class="socialicons_wrap"><a href="https://www.linkedin.com/company/proimprint/" target="_blank" title="Linkedin"><span class="ico_linkedin"></span></a></div><div class="socialicons_wrap"><a href="./blog" target="_blank" title="Blog"><span class="ico_blog"></span></a></div><!--<div class="socialicons_wrap"><a href="https://www.google.com/+ProimprintUSA" target="_blank" title="Googleplus"><span class="ico_googleplus"></span></a></div>--><div class="socialicons_wrap"><a href="https://www.facebook.com/ProImprint" target="_blank" title="Facebook"><span class="ico_facebook"></span> </a></div><div class="socialicons_wrap"><a href="https://twitter.com/proimprint" target="_blank" title="Twitter"> <span class="ico_twitter"></span></a></div><div class="socialicons_wrap"><a href="https://www.pinterest.com/proimprint/" target="_blank" title="Pinterest"><span class="ico_pinterest"></span></a></div><div class="socialicons_wrap"><a href="https://www.youtube.com/c/ProImprint" target="_blank" title="Youtube"><span class="ico_youtube"></span></a></div></span></div></div>
<?php
$starService = 'star-service.png';
  $starServiceWebp = (explode('.',$starService)[0]).'.webp';
  if(WEBP==1 && file_exists('catalog/view/theme/default/images/'.$starServiceWebp)){
    $starService = $starServiceWebp;
  }
  ?>
<div id="lcqualitybadge" style="float:left;"><img class="dymimg" src="catalog/view/theme/default/images/footerblank.jpg" data-src="catalog/view/theme/default/images/<?php echo $starService; ?>" alt="Excellent Service" title="Excellent Service" border="0" width="152" height="88"/></div>

<div class="mob-footer" align="center"><div class="payment_right"><div class="footer_common_logo"><div class="footer_main_logo"></div>

<span class="ico_ssl" title="SSL Secured Online Store"></span></div></div>

<div class="clear"></div><?php } ?>

<div class="main-wrapper">

<div class="footer-bottom-wrapper">

<div class="footer-copyright<?php if($ismobile==1 && $this->request->get['route']=='product/product'){?> product-footer<?php }?><?php if($ismobile==1 && $this->request->get['route']=='checkout/cart' && count($this->session->data['cart'])>0){?> cart-footer<?php }?>">Copyright &copy; <?=date("Y")?> ProImprint.com</div>

<div class="footer__social-media-wrapper"><div class="footer__social-media-icon"><a href="https://www.instagram.com/proimprint/" target="_blank" title="Instagram" class="footer"><span class="icon--instagram"></span></a></div><div class="footer__social-media-icon"><a href="https://www.linkedin.com/company/proimprint/" target="_blank" title="Linkedin" class="footer"><span class="icon--linkedin"></span></a></div><div class="footer__social-media-icon"><a href="./blog" target="_blank" title="Blog" class="footer"><span class="icon--blog"></span></a></div><div class="footer__social-media-icon"><a href="https://www.facebook.com/ProImprint" target="_blank" title="Facebook" class="footer"><span class="icon--facebook"></span> </a></div><div class="footer__social-media-icon"><a href="https://twitter.com/proimprint" target="_blank" title="Twitter" class="footer"> <span class="icon--twitter"></span></a></div><div class="footer__social-media-icon"><a href="https://www.pinterest.com/proimprint/" target="_blank" title="Pinterest" class="footer"><span class="icon--pinterest"></span></a></div></div>

</div>

</div>

<span class="grid_default_width" style="display: none; visibility: hidden;"></span><span class="home_products_default_width" style="display:none; visibility:hidden"></span><span class="module_default_width" style="display:none; visibility:hidden"></span>

<script src="https://apis.google.com/js/platform.js" async defer></script>

<?php if($ishome==1){ if($ismobile!=1) {?><!-- <link rel="stylesheet" type="text/css" href="catalog/view/theme/proimprint/stylesheet/megnor/tm_flexslider.css" media="screen" /> --><?php } }?>

<?php if($ishome==1){ ?><script type="text/javascript" src="catalog/view/javascript/common.js?version=1105082022"></script><?php }?><?php if($ishome==1){ ?><!--script type="text/javascript" src="catalog/view/javascript/jquery/jquery-ui-1.9.1/ui/jquery-ui.js"></script-->
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-ui-1.13.0/jquery-ui.min.js"></script>
<?php }?>

<?php if($ishome!=1 && $ismobile==1){ ?><link rel="preload" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template') ?>/stylesheet/megnor/custom.css?version=17062021" as="style" onload="this.onload=null;this.rel='stylesheet'"/><?php } ?>
<?php if($ismobile!=1){?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template') ?>/stylesheet/searchbox.css?ver=081120221" />
<?php }?>

<?php if($ishome!=1){ ?><?php if($direction=='rtl'){ ?><link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template') ?>/stylesheet/megnor/rtl.css" as="style" onload="this.onload=null;this.rel='stylesheet'"><?php }?><?php } ?><?php if($ishome!=1){ ?><script type="text/javascript" src="catalog/view/javascript/megnor/megnor.min.js"></script><?php if($ismobile==0){ ?><script type="text/javascript" src="catalog/view/javascript/megnor/jquery.custom.min.js"></script><?php }?><script type="text/javascript" src="catalog/view/javascript/megnor/custom.js"></script><script type="text/javascript" src="catalog/view/javascript/megnor/carousel.min.js"></script><?php if($ismobile==0){ ?><script type="text/javascript" src="catalog/view/javascript/megnor/jstree.min.js"></script><?php }?><?php if($ismobile==1){ ?><script type="text/javascript" src="catalog/view/javascript/megnor/jquery.custom.min.js"></script><script type="text/javascript" async src="catalog/view/javascript/megnor/jquery.formalize.min.js"></script><script type="text/javascript" src="catalog/view/javascript/megnor/jstree.min.js"></script><link rel="preload" href="catalog/view/theme/<?php echo $this->config->get('config_template') ?>/stylesheet/jquery.mCustomScrollbar.css" as="style" onload="this.onload=null;this.rel='stylesheet'"><script type="text/javascript" async src="catalog/view/javascript/jquery.mCustomScrollbar.concat.min.js"></script><?php }} ?>

<script type="text/javascript" src="catalog/view/javascript/featherlight.min.js"></script>

<link type="text/css" rel="stylesheet" href="catalog/view/theme/proimprint/stylesheet/featherlight.min.css?ver=16062021" />

<?php if($iscategory==1){ ?><script type="text/javascript" src="catalog/view/javascript/megnor/listgrid.js"></script><?php }?>

<script>

$(document).ready(function() {

	$('.masterTooltip').live('mouseover',function(){

		var title = $(this).find('img').attr('title');

		$(this).find('img').attr('data-tipText',title);

		$(this).find('img').removeAttr('title');

		$('body').append('<p class="newtooltip">'+title+'</p>');

		setTimeout(function(){

			$('.newtooltip').fadeIn('slow');

		},100);

	});

	$('.masterTooltip').live('mouseout',function(){

		$(this).find('img').attr('title', $(this).find('img').attr('data-tipText'));

		$('.newtooltip').remove();

	});

	$('.masterTooltip').live('mousemove',function(e){

		var mousex = $(e.currentTarget).offset().left + ($(e.currentTarget).width()/2) - $('.newtooltip').width()/2;

		var mousey = $(e.currentTarget).offset().top-30;

		$('.newtooltip').css({ top: mousey, left: mousex-5 })

	});

	$('link').each(function(){

 		if($(this).attr('rel')=='preload'){

 			$(this).attr('rel','stylesheet');

 		}

 	});

	

	var hideimg=false;

	function hidedimg(){

		$('.dymimg').each(function(){

			$(this).attr('src',$(this).data('src'));

		});

		var hideimg=true;

	}

	$(window).scroll(function(){

		if(hideimg==false){hidedimg();}

	});

	setTimeout(function(){if(hideimg==false){hidedimg();}},7500);

});

</script>





<?php if($category_id>0 || $quicks_id >0 || strlen($searchword) >1 || $onedollerproduct==1 || $shopbybudget==1){ ?>

<script type="text/javascript">

<?php 

$jsonoptionarray =array();

$i =0;

	foreach($optionarray as $option){

		$jsonoptionarray[$i]["name"] = $option['name'];

		$jsonoptionarray[$i]["option_id"] = $option['option_id'];

          $jsonoptionvalue=array(); 

		foreach($option['option_values'] as $optionvalue){

			

   			$optionvalue['name']= str_replace('&quot;','',$optionvalue['name']);

   			$optionvalue['name']=str_replace("'","",$optionvalue['name']);

			$jsonoptionvalue[] =  array("product_option_id" =>  $optionvalue["product_option_id"],

													"option_value_id" => $optionvalue["option_value_id"],

													"name" => $optionvalue["name"]);

		}

		$jsonoptionarray[$i]["option_values"] = $jsonoptionvalue;

		$i++;

	}

?>			

var jsonarray = '<?php echo json_encode($jsonoptionarray);?>';

var jsonarraydata = $.parseJSON(jsonarray);

				

function clearcolor(val) {

	<?php if($ismobile==0){ ?>

    $("#color_search").multiselect("uncheckAll");

	<?php } ?>

    //$("#color_search").multiselect('refresh');

	$(".tm-checkbox").removeClass("tm-checked");

	$.each( jsonarraydata, function( key, value ) {

		var optionname =''; var optionid ='';

			if(value.name != null  ){

				var name = value.name;

				optionname = name.replace(/\s/g, '');

				optionname = optionname.toLowerCase();

				

			}

			if (optionname == val) {

			 $.each( value.option_values, function( key1, value1 ) {

					if(value1.name != null && value1.name !=""){

						if ($('#optioncolor' + value1.product_option_id).length != 0) {

							if (document.getElementById('optioncolor' + value1.product_option_id).value > 0) {

								var optnval = document.getElementById('optioncolor' + value1.product_option_id).value;

								document.getElementById('optioncolor' + value1.product_option_id).value = "";

								jQuery('#tickclass' + value1.product_option_id).removeClass('checked');

								jQuery('#cross' + value1.product_option_id).removeClass('cross');

								var str = optionids;

								var arr = str.toString().split(",");

								for (var i = 0; i < arr.length; i++) {

									if (arr[i] == optnval) {

										var k = arr.indexOf(optnval);

										if (k != -1) {

											arr.splice(k, 1);

										}

									}

								}

								optionids = arr;

								var filterordersstr = filterorders;

								var i = filterordersstr.indexOf("opt-" + optnval);

								if (i != -1) {

									filterordersstr.splice(i, 1);

								}

								filterorders = filterordersstr;

							}

						}

						

				  }

				    

			 });

			 filterproduct();

			}

	});

	

    <?php if(FALSE){ foreach($optionarray as $option){ ?>

    var optionname='<?=strtolower(str_replace(' ','',$option['name']))?>';

    if (optionname == val) {

        <?php foreach($option['option_values'] as $optionvalue){ ?>

        <?php if($optionvalue['name']!=""){ ?>

        if ($('#optioncolor' + <?=$optionvalue['product_option_id']?>).length != 0) {

            if (document.getElementById('optioncolor' + <?=$optionvalue['product_option_id']?>).value > 0) {

                var optnval = document.getElementById('optioncolor' + <?=$optionvalue['product_option_id']?>).value;

                document.getElementById('optioncolor' + <?=$optionvalue['product_option_id']?>).value = "";

                jQuery('#tickclass' + <?=$optionvalue['product_option_id']?>).removeClass('checked');

                jQuery('#cross' + <?=$optionvalue['product_option_id']?>).removeClass('cross');

                var str = optionids;

                var arr = str.toString().split(",");

                for (var i = 0; i < arr.length; i++) {

                    if (arr[i] == optnval) {

                        var k = arr.indexOf(optnval);

                        if (k != -1) {

                            arr.splice(k, 1);

                        }

                    }

                }

                optionids = arr;

                var filterordersstr = filterorders;

                var i = filterordersstr.indexOf("opt-" + optnval);

                if (i != -1) {

                    filterordersstr.splice(i, 1);

                }

                filterorders = filterordersstr;

            }

        }

        <?php } ?>

        <?php } ?>

        filterproduct();

    }

    <?php } ?>

    <?php } ?>
setTimeout(function(){addtoptags1();},100);
}



function clearsize(val) {

	$.each( jsonarraydata, function( key, value ) {

		var optionname =''; var optionid ='';

			if(value.name != null  ){

				var name = value.name;

				optionname = name.replace(/\s/g, '');

				optionname = optionname.toLowerCase();

				

			}

			if (optionname == val) {

			 $.each( value.option_values, function( key1, value1 ) {

				  if(value1.name != null && value1.name !=""){

					  

							if ($('#optioncolor' + value1.product_option_id).length != 0) {

						   if($('#optioncolor' + value1.product_option_id).val() > 0){

								var optnval = document.getElementById('optioncolor' + value1.product_option_id).value;

								document.getElementById('optioncolor' + value1.product_option_id).value = "";

								var str = optionids;

								var arr = str.toString().split(",");

								for (var i = 0; i < arr.length; i++) {

									if (arr[i] == optnval) {

										var k = arr.indexOf(optnval);

										if (k != -1) {

											arr.splice(k, 1);

										}

									}

								}

							optionids = arr;

							jQuery('#tickclass' + value1.product_option_id).removeClass('checked');

							jQuery('#cross' + value1.product_option_id).removeClass('cross');

						   }

					   }

						

				  }

			 });

			 filterproduct();

			}

	});

	

	

	

    <?php if(FALSE){ foreach($optionarray as $option){  ?>

    var optionname='<?=strtolower(str_replace(' ','',$option['name']))?>';

    if (optionname == val) {

        <?php foreach($option['option_values'] as $optionvalue){ ?>

        <?php if($optionvalue['name']!=""){ ?>

        if ($('#optioncolor' + <?=$optionvalue['product_option_id']?>).length != 0) {

            if (document.getElementById('optioncolor' + <?=$optionvalue['product_option_id']?>).value > 0) {

                var optnval = document.getElementById('optioncolor' + <?=$optionvalue['product_option_id']?>).value;

                document.getElementById('optioncolor' + <?=$optionvalue['product_option_id']?>).value = "";

                var str = optionids;

                var arr = str.toString().split(",");

                for (var i = 0; i < arr.length; i++) {

                    if (arr[i] == optnval) {

                        var k = arr.indexOf(optnval);

                        if (k != -1) {

                            arr.splice(k, 1);

                        }

                    }

                }

                optionids = arr;

                jQuery('#tickclass' + <?=$optionvalue['product_option_id']?>).removeClass('checked');

                jQuery('#cross' + <?=$optionvalue['product_option_id']?>).removeClass('cross');

            }

        }

        <?php } ?>

        <?php } ?>

        filterproduct();

    }

    <?php } ?>

    <?php } ?>
setTimeout(function(){addtoptags1();},100);
}

function clearcategoryfilter(items,clearbtn){
	$('#'+items).find('.facetoption').each(function(){
    	if($(this).is(':checked')){
    		$(this).click();
    	}
    });
}

function clearoption(val, val1) {

   	$.each( jsonarraydata, function( key, value ) {

		var optionname =''; var optionid ='';var optionname1='';

			if(value.name != null  ){

				var name = value.name;

				var optionname1  = name;

				optionname = name.replace(/\s/g, '');

				optionname = optionname.toLowerCase();

				

			}

			if(value.option_id != null  ){

				var option_id = value.option_id;

				optionid = option_id.replace(/\s/g, '');

			}

						

		if (optionname == val) {

		 $.each( value.option_values, function( key1, value1 ) {

			 var optionvaluename = optionname1+': '+value1.name;

			  if(value1.name != null && value1.name !=""){

				  

						if ($('#optioncolor' + value1.product_option_id).length != 0) {

					   if($('#optioncolor' + value1.product_option_id).val() > 0){

							var optnval = document.getElementById('optioncolor' + value1.product_option_id).value;

							document.getElementById('optioncolor' + value1.product_option_id).value = "";

							var str = optionids;

							var arr = str.toString().split(",");

							for (var i = 0; i < arr.length; i++) {

								if (arr[i] == optnval) {

									var k = arr.indexOf(optnval);

									if (k != -1) {

										arr.splice(k, 1);

									}

								}

							}

						optionids = arr;

						jQuery('#tickclass' + value1.product_option_id).prop('checked', false);

						jQuery('#tickclass' + value1.product_option_id).parent().removeClass("tm-checkbox tm-checked");

						jQuery('#tickclass' + value1.product_option_id).parent().addClass("tm-checkbox");

						jQuery('#tickclass' + value1.product_option_id).removeClass("tm-hide checked");

						jQuery('#tickclass' + value1.product_option_id).addClass("tm-hide");

					   }

				   }

					

			  }

		 });

		 filterproduct();

		}			

		

	});

	

    <?php if(FALSE){ foreach($optionarray as $option){?>

    var optionname='<?=strtolower(str_replace(' ','',$option['name']))?>';

    if (optionname == val) {

        <?php foreach($option['option_values'] as $optionvalue){ ?>

        <?php if($optionvalue['name']!=""){ ?>

        if ($('#optioncolor' + <?=$optionvalue['product_option_id']?>).length != 0) {

            if (document.getElementById('optioncolor' + <?=$optionvalue['product_option_id']?>).value > 0) {

                var optnval = document.getElementById('optioncolor' + <?=$optionvalue['product_option_id']?>).value;

                document.getElementById('optioncolor' + <?=$optionvalue['product_option_id']?>).value = "";

                var str = optionids;

                var arr = str.toString().split(",");

                for (var i = 0; i < arr.length; i++) {

                    if (arr[i] == optnval) {

                        var k = arr.indexOf(optnval);

                        if (k != -1) {

                            arr.splice(k, 1);

                        }

                    }

                }

                optionids = arr;

                jQuery('#tickclass' + <?=$optionvalue['product_option_id']?>).prop('checked', false);

                jQuery('#tickclass' + <?=$optionvalue['product_option_id']?>).parent().removeClass("tm-checkbox tm-checked");

                jQuery('#tickclass' + <?=$optionvalue['product_option_id']?>).parent().addClass("tm-checkbox");

                jQuery('#tickclass' + <?=$optionvalue['product_option_id']?>).removeClass("tm-hide checked");

                jQuery('#tickclass' + <?=$optionvalue['product_option_id']?>).addClass("tm-hide");

            }

        }

        <?php } ?>

        <?php } ?>

        filterproduct();

    }

    <?php } ?>

    <?php } ?>

}



function clearcategories() {

    $('input:checkbox:checked.fcats').each(function() {

        $(this).prop('checked', false);

        $(this).parent().removeClass("tm-checkbox tm-checked");

        $(this).parent().addClass("tm-checkbox");
        
        $('.selected-filter-tags').remove();
    });

    filterproduct();

}

<?php //if($ismobile==1){?>

function addtoptags(){

	var newListHtml = '';

    $(".facets li a input.checked").each(function(){

        var tagname=$(this).parents('li').attr('title');

        // $(this).parents('li').find('.tm-checkbox').addClass('tm-checked');

        var typename=tagname.split(':')[0];

        newListHtml += '<span class="selected-tags" data-id="'+$(this).attr('id')+'"><i>x</i><b>'+tagname.replace(typename+':','')+'</b></span>';

    });

    $("#browse_cats li input.checked").each(function(){

        var tagname=$(this).parents('li').attr('title');

        // $(this).parents('li').find('.tm-checkbox').addClass('tm-checked');

        /*var typename=tagname.split(':')[0];*/

        newListHtml += '<span class="selected-tags" data-id="'+$(this).attr('id')+'"><i>x</i><b>'+tagname+'</b></span>';

    });

    $(".facets li a.checked").each(function(){

        var tagname=$(this).parents('li').attr('title');

        var typename=tagname.split(':')[0];

        //colorval=colorval+','+colorname.replace(typname+':','');

        newListHtml += '<span class="selected-tags" data-id="'+$(this).attr('id')+'"><i>x</i><b>'+tagname.replace(typename+':','')+'</b></span>';

    });

    $('.selected-filter-tags').html(newListHtml);

    if($('.selected-tags').length==0){

		$('.selected-category-filter b').html('Apply Filter');

		$('.selected-category-filter a span label').remove();

	}else{

		$('.selected-category-filter b').html($('.selected-tags').length+' Selected');

		$('.selected-category-filter a span label').remove();

		$('.selected-category-filter a span').append('<label>'+$('.selected-tags').length+'</label>');

	}

}

<?php //} ?>

function clearallfilter() {

    filtercategorys.length = 0;

    optionids.length = 0;

    filterorders.length = 0;

    $("#browse_cats li div").removeClass("tm-checked");

    $("#browse_cats li").removeClass("inactive");

    $("#browse_cats li").siblings().find('input');

    $('input', "#browse_cats li").prop("disabled", false);

    $(".clear_wrap").css("display", "none");

    $("input[id^='optioncolor']").val("");

    $("a[id^='tickclass']").removeClass('checked');

    $("span[id^='cross']").removeClass('cross');

    $("input[id^='tickclass']").prop('checked', false);

    $("input[id^='tickclass']").parent().removeClass("tm-checkbox tm-checked");

    $("input[id^='tickclass']").parent().addClass("tm-checkbox");

    $("input[id^='tickclass']").removeClass("tm-hide checked");

    $("input[id^='tickclass']").addClass("tm-hide");

   <?php if($ismobile==1){ ?>

    	var div = '<div class="pricemin-wrap"><span class="price-text">Min Price</span><input  type="text" id="PriceMin" value="" name="PriceMin" data-role="none"/></div><div class="pricemax-wrap"><span class="price-text">Max Price</span>	<input  type="text" id="PriceMax" value="" name="PriceMax" data-role="none"/></div><div class="filterContent-show" onclick="filterproduct();" title="Show">&nbsp;</div><br clear="all"  /><br clear="all"  /><div id="price-range" class="price-bar"></div>';

	<?php }else{?>

		var div = "<div><input  type='text' id='PriceMin' value='' name='PriceMin'/></div><div><input  type='text' id='PriceMax' value='' name='PriceMax'/></div><div class='filterContent-show' onclick='filterproduct();' title='Show'>&nbsp;</div><br clear='all'  /><br clear='all'  /><div id='price-range' class='price-bar'></div>";

	<?php } ?>



    var script = document.createElement('script');

    script.type = 'text/javascript';

    script.text = "var slider = document.getElementById('price-range');noUiSlider.create(slider, {start: [ <?=$pricerangeminmax['min']?>, <?=$pricerangeminmax['max']?>  ],step: 0, margin: 0.0001, connect: true, direction: 'ltr', orientation: 'horizontal', behaviour: 'tap',range: { 'min': <?=$pricerangeminmax['min']?>,'max': <?=$pricerangeminmax['max']?>}});";

    var ascript = document.createElement('script');

    ascript.type = 'text/javascript';

    <?php if($ismobile==1){ ?>

    	ascript.text = " var PriceMax = document.getElementById('PriceMax'),PriceMin = document.getElementById('PriceMin');slider.noUiSlider.on('update', function( values, handle ) {if ( handle ) {PriceMax.value = '$'+values[handle];} else {PriceMin.value = '$'+values[handle];} $('.pricemin').html(document.getElementById('PriceMin').value);$('.pricemax').html(document.getElementById('PriceMax').value);}); PriceMin.addEventListener('change', function(){val1=document.getElementById('PriceMin').value;if(val1 < <?=$pricerangeminmax['min']?>){document.getElementById('PriceMin').value= '<?=$pricerangeminmax['min']?>';}slider.noUiSlider.set([this.value, null]);});PriceMax.addEventListener('change', function(){slider.noUiSlider.set([null, this.value]);});";

   <?php }else{?>

    	ascript.text = " var PriceMax = document.getElementById('PriceMax'),PriceMin = document.getElementById('PriceMin');slider.noUiSlider.on('update', function( values, handle ) {if ( handle ) {PriceMax.value = values[handle];} else {PriceMin.value = values[handle];}});PriceMin.addEventListener('change', function(){val1=document.getElementById('PriceMin').value;if(val1 < <?=$pricerangeminmax['min']?>){document.getElementById('PriceMin').value= '<?=$pricerangeminmax['min']?>';}slider.noUiSlider.set([this.value, null]);});PriceMax.addEventListener('change', function(){slider.noUiSlider.set([null, this.value]);});";

    <?php } ?>

    

    $('filter-price').html('');

    $('#filter-price').html(div);

    $("#filter-price").append(script);

    $("#filter-price").append(ascript);

    $.getScript('catalog/view/javascript/nouislider.min.js');

    $('input:checkbox:checked.fcats').each(function() {

        $(this).prop('checked', false);

        $(this).parent().removeClass("tm-checkbox tm-checked");

        $(this).parent().addClass("tm-checkbox");

    });

    $(".close-btn-search").click();

    <?php if($ismobile==0){?>

    $("#color_search").multiselect("uncheckAll");

    $("#color_search").multiselect('refresh');

    <?php }?>

    $('.selected-filter-tags').html('');

    $('.selected-category-filter b').html('Apply Filter');

    $('.selected-category-filter a span label').remove();

	$('.selected-category-filter a span').append('<label>'+$('.selected-tags').length+'</label>');

    //$('.filter-data.active').html('All');

    $('.filter-data').html('All');

    $('.filter-data').removeClass('active');

    $('.tm-checkbox input').removeClass('checked');

    filterproduct('','',1);

}



function filtercategory(catid) {

    if (filtercategorys.length == 0) {

        filtercategorys.push(catid);

    } else {

        var foundid = $.inArray(catid, filtercategorys);

        if (foundid == -1) {

            filtercategorys.push(catid);

        } else {

            var i = filtercategorys.indexOf(catid);

            if (i != -1) {

                filtercategorys.splice(i, 1);

            }

        }

    }

    if (filterorders.length == 0) {

        filterorders.push("cat-" + catid);

    } else {

        var foundid = $.inArray("cat-" + catid, filterorders);

        if (foundid == -1) {

            filterorders.push("cat-" + catid);

        } else {

            var i = filterorders.indexOf("cat-" + catid);

            if (i != -1) {

                filterorders.splice(i, 1);

            }

        }

    }
    var catflag=0;
    $('#browsecat').find('.facetoption').each(function(){
    	if($(this).is(':checked')){
    		catflag=1;
    	}
    });
    if(catflag==1){
    	$('#clearcategory').show();
    }else{
    	$('#clearcategory').hide();
    }

    filterproduct();

}



</script>

<script type="text/javascript">

var optionids = [];

var filtercategorys = [];

var filterorders = [];

var filterselectcolor = '';
<?php if(!empty($filtercolors)){?>
<?php foreach($filtercolors as $filtercolor){ $colorname=str_replace('/','',$filtercolor);
			$colorname="color-".str_replace(' ','',$colorname);?>
var optionids1=$('.facets').find("li[data-optionvalue='<?php echo $colorname;?>']").attr("data-optionids");
		var ids=optionids1.split('-');
		optionids.push(ids[1]);
	<?php }?>
<?php }?>
var flag_colrserch = 0;
var Confimfiltercheck;
function filterproduct(productoptionid, optionvalueid,clearall){
	clearTimeout(Confimfiltercheck);
	Confimfiltercheck = setTimeout(function(){ 
	filterproductcatalog(productoptionid, optionvalueid,clearall); 
}, 
200);
}
function filterproductcatalog(productoptionid, optionvalueid,clearall) {

    var browse_category = 0;

    if (typeof productoptionid == 'string') {

        var browse_category = 1;

    } else {

        if ($('#color_search').length != 0) {

            var colorsearchid = productoptionid + "-" + optionvalueid;

            if ($("#color_search option[value='" + colorsearchid + "']").length > 0) {

                $('#color_search').val(colorsearchid);

            }

        }

        if (optionids.length == 0) {

            if (typeof optionvalueid != 'undefined') {

                optionids.push(optionvalueid);

            }

        } else {

            if (typeof optionvalueid != 'undefined') {

                var foundid = $.inArray(optionvalueid, optionids);

                if (foundid == -1) {

                    optionids.push(optionvalueid);

                } else {

                    var i = optionids.indexOf(optionvalueid);

                    if (i != -1) {

                        optionids.splice(i, 1);

                    }

                }

            }

        }

        if (typeof optionvalueid != 'undefined') {

            if (filterorders.length == 0) {

                filterorders.push("opt-" + optionvalueid);

            } else {

                var foundid = $.inArray("opt-" + optionvalueid, filterorders);

                if (foundid == -1) {

                    filterorders.push("opt-" + optionvalueid);

                } else {

                    var i = filterorders.indexOf("opt-" + optionvalueid);

                    if (i != -1) {

                        filterorders.splice(i, 1);

                    }

                }

            }

        };

        if (typeof optionvalueid == 'undefined') {

            var last = "cat-";

        } else {

            var last = "opt-";

        }

        var lastoptionvalid = optionvalueid;

        if ($('#optioncolor' + productoptionid).length != 0) {

            if (document.getElementById('optioncolor' + productoptionid).value > 0) {

                document.getElementById('optioncolor' + productoptionid).value = "";

                jQuery('#tickclass' + productoptionid).removeClass('checked');

                jQuery('#cross' + productoptionid).removeClass('cross');

                if ($('#color_search').length != 0) {

                    var colorsearch = document.getElementById("color_search").value;

                    if (filterorders != '') {

                        var i = 0;

                        var colorarray = [];

                        var k = 0;

                        for (i = filterorders.length - 1; i >= 0; i--) {

                            k++;

                            var last_elem = filterorders[i];

                            var laste = last_elem.replace("opt-", "");

							$("#color input[id^='optioncolor']" ).each(function(){

								if($(this).val() > 0 ){

									if($(this).val() == laste){

										var text = $(this).attr("id");

										var orderprodoptionid = text.replace("optioncolor","");

										var colorsearchid = orderprodoptionid + "-" + laste;

										if ($("#color_search option[value='" + colorsearchid + "']").length > 0) {

											$("#color_search").val(colorsearchid);

										}  

										

									}else {

										$('#color_search').prop('selectedIndex', 0);

									}

								}

							});

							

							

							

							

                            <?php if(FALSE){ foreach($optionarray as $option){  ?>

                            <?php if(strtolower(str_replace(' ','',$option['name']))== "color"){ ?>

                            var count = "<?=count($option['option_values'])?>";

                            <?php foreach($option['option_values'] as $optionvalue){ ?>

                            var color = "<?=$optionvalue['option_value_id']?>";

                            colorarray.push(color);

                            <?php if($optionvalue['name']!=""){ ?>

                            if ($('#optioncolor' + <?=$optionvalue['product_option_id']?>).length != 0) {

                                if (document.getElementById('optioncolor' + <?=$optionvalue['product_option_id']?>).value == laste) {

                                    var orderprodoptionid = "<?=$optionvalue['product_option_id']?>";

                                    var colorsearchid = orderprodoptionid + "-" + laste;

                                    if ($("#color_search option[value='" + colorsearchid + "']").length > 0) {

                                        $('#color_search').val(colorsearchid);

                                    }

                                    break;

                                } else {

                                    $('#color_search').prop('selectedIndex', 0);

                                }

                            }

                            <?php } ?>

                            <?php } ?>

                            <?php } ?>

                            <?php } }?>

                        }

                    } else {

                        if (document.getElementById("color_search").value != 0) {

                            var stringArray = colorsearch.split('-');

                            var color_search = stringArray[0];

                            if (color_search == productoptionid) {

                                $('#color_search').prop('selectedIndex', 0);

                            }

                        }

                    }

                }

            } else {

                document.getElementById('optioncolor' + productoptionid).value = optionvalueid;

                jQuery('#tickclass' + productoptionid).parent().addClass("checked");

                jQuery('#tickclass' + productoptionid).addClass('checked');

            }

        }

    }

    $("#loadingImage").show();

    var id = '<?php echo $category_id; ?>';

    var optionsids = '';

	var optionsids 	= '';

	var colorcount 	= 0;

	var sizecount 	= 0;

	

	$( "input[id^='optioncolor']" ).each(function(){

		if($(this).val() > 0){

			optionsids = optionsids + ',' + $(this).val();

			if($(this).parents("ul").attr("id") == "color"){

				colorcount++;

			}

			if($(this).parents("ul").attr("id") == "size"){

				sizecount++;

			}

		}

	});

	

	if (sizecount >= 1) {

        $('#clearsize').show();

    } else {

        $('#clearsize').hide();

    }

	console.log(colorcount);

	if (colorcount >= 1) {

        $('#clearcolor').show();

        $('#uncheckall').show();

    } else {

        $('#clearcolor').hide();

        $('#uncheckall').hide();

    }

    <?php if(FALSE){ foreach($optionarray as $option){  ?>

    <?php foreach($option['option_values'] as $optionvalue){ ?>

    <?php if($optionvalue['name']!=""){ ?>

    if ($('#optioncolor' + <?=$optionvalue['product_option_id']?>).length != 0) {

        if (document.getElementById('optioncolor' + <?=$optionvalue['product_option_id']?>).value > 0) {

            optionsids = optionsids + ',' + document.getElementById('optioncolor' + <?=$optionvalue['product_option_id']?>).value;

        }

    }

    <?php } ?>

    <?php } ?>

    <?php } ?>

    <?php } ?>

    var sizecount = 0;

    var colorcount = 0;

	$.each( jsonarraydata, function( key, value ) {

		 var optioncount = 0;

		 var optionname =''; var optionid ='';

			if(value.name != null  ){

				var name = value.name;

				optionname = name.replace(/\s/g, '');

				optionname = optionname.toLowerCase();

				

			}

		if(optionname !="color" && optionname !="size"){ 

			 $.each( value.option_values, function( key1, value1 ) {

				 if(value1.name != null && value1.name !=""){

					if ($('#optioncolor' + value1.product_option_id).length != 0) {

					   if (document.getElementById('optioncolor' + value1.product_option_id).value > 0) {

					   		optioncount++;

						}

					}

				  }

			 });

			  var clearoptionname='clear'+optionname;

			  if ($('#'+clearoptionname).length > 0) {

				if (optioncount >= 1) {

					document.getElementById(clearoptionname).style.display = 'block';

				} else {

					document.getElementById(clearoptionname).style.display = 'none';

				}

			}

		}	

	});

    <?php  if(FALSE){  foreach($optionarray as $option){  ?>

    var optioncount = 0;

    <?php if(strtolower(str_replace(' ','',$option['name']))!="color" && strtolower(str_replace(' ','',$option['name']))!="size"){ ?>

    <?php foreach($option['option_values'] as $optionvalue){ ?>

    <?php if($optionvalue['name']!=""){ ?>

    if ($('#optioncolor' + <?=$optionvalue['product_option_id']?>).length != 0) {

        if (document.getElementById('optioncolor' + <?=$optionvalue['product_option_id']?>).value > 0) {

            console.log('optioncolor' + <?=$optionvalue['product_option_id']?>);console.log('<?=$option['name']?>');optioncount++;

        }

    }

    <?php } ?>

    <?php } ?>

    var optionname='clear'+'<?=strtolower(str_replace(' ','',$option['name']))?>';

    if (optioncount >= 1) {

        document.getElementById(optionname).style.display = 'block';

    } else {

        document.getElementById(optionname).style.display = 'none';

    }

    <?php } ?>

    <?php } } ?>

	

	

    var check = $('input:checkbox:checked.range').map(function() {

        return this.value;

    }).get();

    var fcats = $('input:checkbox:checked.fcats').map(function() {

        return this.value;

    }).get();

    var imprints = $('input:checkbox:checked.imprint-filter-checkbox').map(function() {

        return this.value;

    }).get();

    if (fcats != '') {

        if ($('#clearcatgrs').length != 0) {

            document.getElementById('clearcatgrs').style.display = 'block';

        }

    } else {

        if ($('#clearcatgrs').length != 0) {

            document.getElementById('clearcatgrs').style.display = 'none';

        }

    }

    if ($('#PriceMin').length != 0) {

        var pricemin = document.getElementById('PriceMin').value;

        pricemin = pricemin.replace('$','');

    }

    if ($('#PriceMax').length != 0) {

        var pricemax = document.getElementById('PriceMax').value;

        pricemax = pricemax.replace('$','');

    }

    if ($('#QuantityMin').length != 0) {

        var quantitymin = document.getElementById('QuantityMin').value;

    }

    if ($('#QuantityMax').length != 0) {

        var quantitymax = document.getElementById('QuantityMax').value;

    }

    var totalcheck = 0;

    <?php $pricecnt=1; foreach($price_ranges as $price_range){  ?>

    if ($('#price' + <?=$pricecnt?>).length != 0) {

        if (document.getElementById('price' + <?=$pricecnt?>).checked == true) {

            totalcheck++;

        }

    }

    <?php $pricecnt++; } ?>

    if (totalcheck > 1) {

        if ($('#clearprice').length != 0) {

            document.getElementById('clearprice').style.display = 'block';

        }

    } else {

        if ($('#clearprice').length != 0) {

            document.getElementById('clearprice').style.display = 'none';

        }

    }

    if ($("#page").length > 0) {

        var pages = document.getElementById('page').innerHTML;

    } else {

        var pages = 1;

    }

    if (productoptionid > 0) {

        if (optionvalueid !== parseInt(optionvalueid, 10)) {

            pages = productoptionid;

        }

    }

    var value = '';

    var limit = '';

    <?php if($ismobile==1){?>

    	if ($("#sorts").length > 0) {

        	//value = document.getElementById('sorts').value;

        	value=$('input[name=sorts]:checked').val();

    	}

    <?php }else{?>

    	if ($("#sorts").length > 0) {

        	value = document.getElementById('sorts').value;

    	}

    <?php } ?>



    if ($("#limit").length > 0) {

        limit = document.getElementById('limit').value;

    }

   	var maincategory="";
   	var shopquantity="";
   	var shopprice="";
   	var shopcategory="";

    <?php if($issearch==1){?>
    		


    	var filterurl='index.php?route=module/filter/getsearchfilter';

    	maincategory=$(".search__category-list li.active").text();

    	maincategory=encodeURIComponent(maincategory);

    	maincategory=maincategory.replace(' amp; ',"+");

    	maincategory=maincategory.replace(/%26/g,"");

		maincategory=maincategory.replace(/%25/g,""); 

		maincategory=maincategory.replace(/%20/g,"+");

		maincategory=maincategory.replace(/%2F/g,"+");

		maincategory=maincategory.replace("+++","+");

		maincategory=maincategory.replace("++","+");

		console.log(maincategory);

    <?php }else if($shopbybudget==1){ ?>
    	var shopquantity=$('#budgetquantity').val();
   		var shopprice=$('#budgetprice').val();
   		var shopcategory=$('#shopcategory').val();
    	var filterurl='index.php?route=module/filter/shopbybudget';
    <?php }else{?>

    	var filterurl='index.php?route=module/filter/filter';

    <?php }?>

    //var filterurl='index.php?route=module/filter/filter';

    filterresult=$.ajax({

        type: 'POST',

        url: filterurl+'&options=' + optionids + '&lastoptionvalue=' + lastoptionvalid + '&category_id=' + id + '&category_ids=' + filtercategorys + '&filterorders=' + filterorders + '&last=' + last + '&quick_id=<?=$quicks_id?>&onedollerproduct=<?=$onedollerproduct?>&pricerange=' + check + '&filtercats=' + fcats +'&maincategory='+maincategory +'&page=' + pages + '&clearall='+clearall+'&limit=' + limit +'&imprints='+imprints +'&link=' + value + '&pricemin=' + pricemin + '&pricemax=' + pricemax +'&quantitymin=' + quantitymin +'&shopquantity=' + shopquantity +'&shopprice=' + shopprice +'&shopcategory='+shopcategory+'&quantitymax=' + quantitymax + '&browse_category=' + browse_category +  '&promotional=' + $('#promotional').val() + '&searchword=<?=addslashes($searchword)?>',

        dataType: 'json',

        beforeSend:function (){

        	$('.product-block-inner').css('display','none');

        	$('.homeimageicons').css('display','none');

        	$('.product-block-inner').css('opacity','0');

        	$('.homeimageicons').css('opacity','0');

        	$('.product_cat').prepend('<div class="pim-loader-bg"><span></span><span></span><span></span></div>');

        },

        success: function(data) {

            //$("#color_search").click();

            if (data.success) {

                document.getElementById('pagination').innerHTML = data.pagination;

                document.getElementById('sortprice').innerHTML = data.success;

                if(pages>0){
					$('html,body').animate({scrollTop: $(".product-filter").position().top},'slow');
				}
				

				$(".image_cat img").each(function( index ) {

				  $(this).attr("src",$(this).attr("data-src"));

				});				

                var str = data.success;

                var txt = '844-776-467';

                if (str.indexOf(txt) > -1) {

                   // $(".product-filter").hide();

                    $(".pagination").hide();

                } else {

                	<?php if($ismobile!=1){?>

                    $(".product-filter").show();

                    <?php }?>

                    $(".pagination").show();

                }

                if (data.product_total) {

                    if ($("#prod_total").length > 0) {

                        document.getElementById('prod_total').innerHTML = data.product_total;

						if ($("#prdtext").length > 0) {

                            if(data.product_total>1){

                            	document.getElementById('prdtext').innerHTML = " products";

                            }else{

                            	document.getElementById('prdtext').innerHTML = " product";

                        	}

						}

                    }

                } else {

                    if ($("#prod_total").length > 0) {

                        document.getElementById('prod_total').innerHTML = "0";

						if ($("#prdtext").length > 0) {

                        	document.getElementById('prdtext').innerHTML = " product";

						}

                    }

                }

                if ($('#producttot').length != 0) {
                	if(data.search_results!='' && data.search_results!=null){
                    document.getElementById('producttot').innerHTML = data.search_results;
                	}else{
                		 document.getElementById('producttot').innerHTML = data.product_total;
                	}

                }

            }

            if (data.checklast_catval == 0) {

                if (data.prdt_cat_names) {

                    <?php foreach($lastlegs as $lastleg){  ?>

                    var catname = "<?=trim($lastleg['name']);?>";

                    var foundc = $.inArray(catname, data.prdt_cat_names);

                    var catvaluename = "<?=trim(html_entity_decode($lastleg['name']));?>";

                    catvaluename = catvaluename.replace("'", "");

                    // console.log(catname+foundc);

                    if (foundc == -1) {

                        jQuery("[title|='" + catvaluename + "']").addClass("inactive");

                        jQuery("li[title|='" + catvaluename + "']").siblings().find('input');

                        jQuery('input', "li[title|='" + catvaluename + "']").attr('disabled', 'disabled');

                    } else if (foundc != -1) {

                        jQuery("[title|='" + catvaluename + "']").removeClass("inactive");

                        jQuery("li[title|='" + catvaluename + "']").siblings().find('input');

                        jQuery('input', "li[title|='" + catvaluename + "']").prop("disabled", false);

                    }

                    <?php } ?>

                }

            }

            if (browse_category != 1) {

                $("#filter_cats").html(data.filtercatdiv);

                if (data.pbrowsecategory) {}

                if (data.prdt_filter_cats) {

                    if ($("#browse-filter").length > 0) {

                        $("#browse-filter").show();

                    }

                    if ($("#count-num").length > 0) {

                        document.getElementById("count-num").innerHTML = "(" + data.prdt_filter_cats.length + ")";

                    }

                    if ($('.search-brand').length != 0) {

                        if ($('.search-brand').val() != "") {

                            searchbrand();

                        }

                    }

                }

            } else {

                if (data.filtercatselected) {

                    <?php foreach($filter_cats as $filtercategory){  ?>

                    var categoryids = "<?php echo $filtercategory['category_id'];?>";

                    var categoryname = "<?php echo $filtercategory['name'];?>";

                    var found = $.inArray(categoryids, data.filtercatselected);

                    categoryname = categoryname.replace(/&amp;/g, '&');

                    categoryname = categoryname.replace(/'/g, "\\'");

                    if (found != -1) {

                        jQuery("li[title|='" + categoryname + "']").siblings().find('div');

                        jQuery('div', "li[title|='" + categoryname + "']").addClass("tm-checked");

                        jQuery("li[title|='" + categoryname + "']").siblings().find('input');

                        jQuery('input', "li[title|='" + categoryname + "']").prop("checked", true);

                    } else if (found == -1) {

                        jQuery("li[title|='" + categoryname + "']").siblings().find('div');

                        jQuery('div', "li[title|='" + categoryname + "']").removeClass("tm-checked");

                        jQuery('div', "li[title|='" + categoryname + "']").addClass("tm-checkbox");

                        jQuery("li[title|='" + categoryname + "']").siblings().find('input');

                        jQuery('input', "li[title|='" + categoryname + "']").prop("checked", false);

                    }

                    <?php } ?>

                }

            }

            $('#filter_cats input').each(function() {

                var tit = $(this).attr("title");

                var classname = $(this).parents('a').attr("class");

                if ($.trim(classname) == "active") {

                    var list = $(this).parent().closest("li");

                    $(list).prependTo("#filter_cats");

                }

            });

            $('#filter_cats input').each(function() {

                var tit = $(this).attr("title");

                var classname = $(this).parents('a').attr("class");

                if ($.trim(classname) == "active") {

                    var list = $(this).parent().closest("li");

                    $(list).prependTo("#filter_cats");

                }

            });

            $('#filter_cats input').each(function() {

                var tit = $(this).attr("title");

                var classname = $(this).parent('div').attr("class");

                if (classname == "tm-checkbox tm-checked") {

                    var list = $(this).parent().closest("li");

                    $(list).prependTo("#filter_cats");

                }

            });



            $('#filter_cats').animate({

                scrollTop: 0

            }, 100);

            if(data.filterimprints){

            	//console.log(data.filterimprints);

            $('.imprintfacet').addClass('grayed');

            $('.imprintfacet a').removeClass('active');

            $('.imprintfacet a').addClass('inactive');

            $('.imprintfacet').find('.imprint-filter-checkbox').attr("disabled", "disabled");

            $.each( data.filterimprints, function( key, value ) {

            	$('li.imprintfacet[data-imprint="'+value+'"]').removeClass('grayed');

            	$('li.imprintfacet[data-imprint="'+value+'"]').find('a').addClass('active');

            	$('li.imprintfacet[data-imprint="'+value+'"]').find('a').removeClass('inactive');

            	$('li.imprintfacet[data-imprint="'+value+'"]').find('.imprint-filter-checkbox').removeAttr('disabled');

           		// console.log("ppp"+value);

            });

            }

            if (data.prdt_optns_names) {

                jQuery("#filternocolor").remove();

                jQuery("#nocolorsav").remove();

                var totcntnone = 0;

                var totcntcheck = 0;



				$.each( jsonarraydata, function( key, value ) {

						var optionname =''; var optionid ='';var optionname1='';

						if(value.name != null  ){

							var name = value.name;

							var optionname1  = name;

							optionname = name.replace(/\s/g, '');

							optionname = optionname.toLowerCase();

						}

						if(value.option_id != null  ){

							var option_id = value.option_id;

							optionid = option_id.replace(/\s/g, '');

						}

					 $.each( value.option_values, function( key1, value1 ) {

						

						 if(value1.name != null){

						

							var optionvaluename = optionname1+': '+value1.name;

							var productoptionid = value1.product_option_id;

							var optionvalid= value1.option_value_id;

							var found = $.inArray(optionvaluename, data.prdt_optns_names);

							optionvaluename = optionvaluename.replace("&amp;","&");

							 if (data.option != optionname) {

								

								if (found == -1 && optionname != "color" && optionname != "size") {

									jQuery("[title|='" + optionvaluename + "']").removeClass("facet");

									jQuery("[title|='" + optionvaluename + "']").addClass("facet grayed");

									jQuery("li[title|='" + optionvaluename + "']").siblings().find('a');

									jQuery('a', "li[title|='" + optionvaluename + "']").removeClass("active");

									jQuery('a', "li[title|='" + optionvaluename + "']").addClass("inactive");

									jQuery("li[title|='" + optionvaluename + "']").siblings().find('input');

									jQuery('input', "li[title|='" + optionvaluename + "']").attr('disabled', 'disabled');

								} else if (found != -1 && optionname != "color" && optionname != "size") {

									jQuery("[title|='" + optionvaluename + "']").removeClass("facet grayed");

									jQuery("[title|='" + optionvaluename + "']").addClass("facet");

									jQuery("li[title|='" + optionvaluename + "']").siblings().find('a');

									jQuery('a', "li[title|='" + optionvaluename + "']").removeClass("inactive");

									jQuery('a', "li[title|='" + optionvaluename + "']").addClass("active");

									jQuery("li[title|='" + optionvaluename + "']").siblings().find('input');

									jQuery('input', "li[title|='" + optionvaluename + "']").prop("disabled", false);

									var list = $("li[title|='" + optionvaluename + "']");

									$(list).prependTo("#" + optionname);

								}

								if (found == -1 && optionname == "size") {

									jQuery("li[title|='" + optionvaluename + "']").siblings().find('a');

									jQuery('a', "li[title|='" + optionvaluename + "']").removeClass("fk-display-block active");

									jQuery('a', "li[title|='" + optionvaluename + "']").addClass("fk-display-block inactive");

								} else if (found != -1 && optionname == "size") {

									jQuery("li[title|='" + optionvaluename + "']").siblings().find('a');

									jQuery('a', "li[title|='" + optionvaluename + "']").removeClass("fk-display-block inactive");

									jQuery('a', "li[title|='" + optionvaluename + "']").addClass("fk-display-block active");

								}

								if (found == -1 && optionname == "color") {

									jQuery("li[title|='" + optionvaluename + "']").hide();
									jQuery("li[value|='" + optionvaluename + "']").hide();

									var str = "Color: ";

									var txt = optionvaluename;

									txt = txt.replace('Color: ', '');

									jQuery("label[title|='" + txt + "']").hide();
									jQuery("li[value='" + txt + "']").hide();

								} else if (found != -1 && optionname == "color") {

									jQuery("li[title|='" + optionvaluename + "']").show();
									jQuery("li[value|='" + optionvaluename + "']").hide();
									var str = "Color: ";

									var txt = optionvaluename;

									txt = txt.replace('Color: ', '');

									jQuery("label[title|='" + txt + "']").show();
									jQuery("li[value='" + txt + "']").show();

								}

							} else {

								if (data.optionid == optionid) {

									if (found != -1 && optionname != "color" && optionname != "size") {

										jQuery("[title|='" + optionvaluename + "']").removeClass("facet grayed");

										jQuery("[title|='" + optionvaluename + "']").addClass("facet");

										jQuery("li[title|='" + optionvaluename + "']").siblings().find('a');

										jQuery('a', "li[title|='" + optionvaluename + "']").removeClass("inactive");

										jQuery('a', "li[title|='" + optionvaluename + "']").addClass("active");

										jQuery("li[title|='" + optionvaluename + "']").siblings().find('input');

										jQuery('input', "li[title|='" + optionvaluename + "']").prop("disabled", false);

									}

									if (found != -1 && optionname == "size") {

										jQuery("li[title|='" + optionvaluename + "']").siblings().find('a');

										jQuery('a', "li[title|='" + optionvaluename + "']").removeClass("fk-display-block inactive");

										jQuery('a', "li[title|='" + optionvaluename + "']").addClass("fk-display-block active");

									}

									if (found != -1 && optionname == "color") {}

								}

							}

						 }

					});

				});

                 <?php if(FALSE) { foreach($optionarray as $option){  ?>

                var optionname='<?=strtolower(str_replace(' ','',$option['name']))?>';

				var optionid='<?=strtolower(str_replace(' ','',$option['option_id']))?>';

                <?php foreach($option['option_values'] as $optionvalue){ ?>

                <?php $optionvalue['name']= str_replace('&quot;','',$optionvalue['name']); ?>

                <?php $optionvalue['name']=str_replace("'","",$optionvalue['name']);?>

                var optionvaluename='<?php echo $option['name'].': '.$optionvalue['name'];?>';

				var productoptionid='<?php echo $optionvalue['product_option_id'];?>';

				var optionvalid='<?php echo $optionvalue['option_value_id'];?>';

                var found = $.inArray(optionvaluename, data.prdt_optns_names);

                if (data.option != optionname) {

                    if (found == -1 && optionname != "color" && optionname != "size") {

                        jQuery("[title|='" + optionvaluename + "']").removeClass("facet");

                        jQuery("[title|='" + optionvaluename + "']").addClass("facet grayed");

                        jQuery("li[title|='" + optionvaluename + "']").siblings().find('a');

                        jQuery('a', "li[title|='" + optionvaluename + "']").removeClass("active");

                        jQuery('a', "li[title|='" + optionvaluename + "']").addClass("inactive");

                        jQuery("li[title|='" + optionvaluename + "']").siblings().find('input');

                        jQuery('input', "li[title|='" + optionvaluename + "']").attr('disabled', 'disabled');

                    } else if (found != -1 && optionname != "color" && optionname != "size") {

                        jQuery("[title|='" + optionvaluename + "']").removeClass("facet grayed");

                        jQuery("[title|='" + optionvaluename + "']").addClass("facet");

                        jQuery("li[title|='" + optionvaluename + "']").siblings().find('a');

                        jQuery('a', "li[title|='" + optionvaluename + "']").removeClass("inactive");

                        jQuery('a', "li[title|='" + optionvaluename + "']").addClass("active");

                        jQuery("li[title|='" + optionvaluename + "']").siblings().find('input');

                        jQuery('input', "li[title|='" + optionvaluename + "']").prop("disabled", false);

                        var list = $("li[title|='" + optionvaluename + "']");

                        $(list).prependTo("#" + optionname);

                    }

                    if (found == -1 && optionname == "size") {

                        jQuery("li[title|='" + optionvaluename + "']").siblings().find('a');

                        jQuery('a', "li[title|='" + optionvaluename + "']").removeClass("fk-display-block active");

                        jQuery('a', "li[title|='" + optionvaluename + "']").addClass("fk-display-block inactive");

                    } else if (found != -1 && optionname == "size") {

                        jQuery("li[title|='" + optionvaluename + "']").siblings().find('a');

                        jQuery('a', "li[title|='" + optionvaluename + "']").removeClass("fk-display-block inactive");

                        jQuery('a', "li[title|='" + optionvaluename + "']").addClass("fk-display-block active");

                    }

                    if (found == -1 && optionname == "color") {

                        jQuery("li[title|='" + optionvaluename + "']").hide();
                        jQuery("li[value|='" + optionvaluename + "']").hide();

                        var str = "Color: ";

                        var txt = optionvaluename;

                        txt = txt.replace('Color: ', '');

                        jQuery("label[title|='" + txt + "']").hide();
                        jQuery("li[value='" + txt + "']").hide();

                    } else if (found != -1 && optionname == "color") {

                        jQuery("li[title|='" + optionvaluename + "']").show();

                        var str = "Color: ";

                        var txt = optionvaluename;

                        txt = txt.replace('Color: ', '');

                        jQuery("label[title|='" + txt + "']").show();
                        jQuery("li[value='" + txt + "']").show();

                    }

                } else {

                    if (data.optionid == '<?php echo $option['option_id '] ;?>') {

                        if (found != -1 && optionname != "color" && optionname != "size") {

                            jQuery("[title|='" + optionvaluename + "']").removeClass("facet grayed");

                            jQuery("[title|='" + optionvaluename + "']").addClass("facet");

                            jQuery("li[title|='" + optionvaluename + "']").siblings().find('a');

                            jQuery('a', "li[title|='" + optionvaluename + "']").removeClass("inactive");

                            jQuery('a', "li[title|='" + optionvaluename + "']").addClass("active");

                            jQuery("li[title|='" + optionvaluename + "']").siblings().find('input');

                            jQuery('input', "li[title|='" + optionvaluename + "']").prop("disabled", false);

                        }

                        if (found != -1 && optionname == "size") {

                            jQuery("li[title|='" + optionvaluename + "']").siblings().find('a');

                            jQuery('a', "li[title|='" + optionvaluename + "']").removeClass("fk-display-block inactive");

                            jQuery('a', "li[title|='" + optionvaluename + "']").addClass("fk-display-block active");

                        }

                        if (found != -1 && optionname == "color") {}

                    }

                }

                <?php } ?>

                <?php } ?><?php } ?>

                $("#color li").sort(sort_li).appendTo('#color');

                $('#color [name*=optioncolors][value!=""]').each(function() {

                    var list = $(this).parent().closest("li");

                    $(list).prependTo("#color");

                });

                $('#color').animate({

                    scrollTop: 0

                }, 100);

                //$("#color li").sort(sort_li).appendTo('#color');

                

                if (typeof(optionname) != "undefined" && optionname != "") {

                    $("#" + optionname + " li").sort(sort_li).appendTo('#' + optionname);

                    $('#' + optionname + ' [name*=optioncolors][value!=""]').each(function() {

                        var list = $(this).parent().closest("li");

                        $(list).prependTo("#" + optionname);

                    });

                }

                if (data.option) {

                    $("#" + data.option + " li").sort(sort_li).appendTo('#' + data.option);

                    $('#' + data.option + ' [name*=optioncolors][value!=""]').each(function() {

                        var list = $(this).parent().closest("li");

                        $(list).prependTo("#" + data.option);

                    });

                }

               

                $(".ui-multiselect-checkboxes li").sort(sort_li).appendTo('.ui-multiselect-checkboxes');

                $('input[aria-selected]').each(function() {

                    var tit = $(this).attr("title");

                    var classname = $(this).parent().attr("class");

                    if (classname == "tm-checkbox tm-checked") {

                        var list = $(this).parent().closest("li");

                        $(list).prependTo(".ui-multiselect-checkboxes");

                        totcntcheck++;

                    }

                    if (classname == "tm-checkbox tm-checked") {

                        if (jQuery("label[title|='" + tit + "']").css('display') == 'none') {

                            totcntnone++;

                        }

                    }

                });



                $('.ui-multiselect-checkboxes').animate({

                    scrollTop: 0

                }, 100);

                var color_count = parseInt(totcntcheck) - parseInt(totcntnone);

                if (color_count != 0) {

                    jQuery(".colorpickericon").html(color_count + ' Selected');

                }

            } else {

                $.each( jsonarraydata, function( key, value ) {

					var optionname =''; var optionid ='';var optionname1='';

						if(value.name != null  ){

							var name = value.name;

							var optionname1  = name;

							optionname = name.replace(/\s/g, '');

							optionname = optionname.toLowerCase();

							

						}

						if(value.option_id != null  ){

							var option_id = value.option_id;

							optionid = option_id.replace(/\s/g, '');

						}

					 $.each( value.option_values, function( key1, value1 ) {

						 var optionvaluename = optionname1+': '+value1.name;

						  if(value1.name != null){

							    if (optionname != "color" && optionname != "size") {

									jQuery("[title|='" + optionvaluename + "']").removeClass("facet");

									jQuery("[title|='" + optionvaluename + "']").addClass("facet grayed");

									jQuery("li[title|='" + optionvaluename + "']").siblings().find('a');

									jQuery('a', "li[title|='" + optionvaluename + "']").removeClass("active");

									jQuery('a', "li[title|='" + optionvaluename + "']").addClass("inactive");

									jQuery("li[title|='" + optionvaluename + "']").siblings().find('input');

									jQuery('input', "li[title|='" + optionvaluename + "']").attr('disabled', 'disabled');

								}

								if (optionname == "size") {

									jQuery("li[title|='" + optionvaluename + "']").siblings().find('a');

									jQuery('a', "li[title|='" + optionvaluename + "']").removeClass("fk-display-block active");

									jQuery('a', "li[title|='" + optionvaluename + "']").addClass("fk-display-block inactive");

								}

								if (optionname == "color") {

									jQuery("li[title|='" + optionvaluename + "']").hide();

									var str = "Color: ";

									var txt = optionvaluename;

									txt = txt.replace('Color: ', '');

									jQuery("label[title|='" + txt + "']").hide();
									jQuery("label[value|='" + txt + "']").hide();

								}

						  }

					 });

					

				});

				

				

                <?php if(FALSE){foreach($optionarray as $option){  ?>

                var optionname='<?=strtolower(str_replace(' ','',$option['name']))?>';

				var optionid='<?=strtolower(str_replace(' ','',$option['option_id']))?>';

                <?php foreach($option['option_values'] as $optionvalue){ ?>

                <?php $optionvalue['name']= str_replace('&quot;','',$optionvalue['name']); ?>

                <?php $optionvalue['name']=str_replace("'","",$optionvalue['name']);?>

				var optionvaluename='<?php echo $option['name'].': '.$optionvalue['name'];?>';

                if (optionname != "color" && optionname != "size") {

                    jQuery("[title|='" + optionvaluename + "']").removeClass("facet");

                    jQuery("[title|='" + optionvaluename + "']").addClass("facet grayed");

                    jQuery("li[title|='" + optionvaluename + "']").siblings().find('a');

                    jQuery('a', "li[title|='" + optionvaluename + "']").removeClass("active");

                    jQuery('a', "li[title|='" + optionvaluename + "']").addClass("inactive");

                    jQuery("li[title|='" + optionvaluename + "']").siblings().find('input');

                    jQuery('input', "li[title|='" + optionvaluename + "']").attr('disabled', 'disabled');

                }

                if (optionname == "size") {

                    jQuery("li[title|='" + optionvaluename + "']").siblings().find('a');

                    jQuery('a', "li[title|='" + optionvaluename + "']").removeClass("fk-display-block active");

                    jQuery('a', "li[title|='" + optionvaluename + "']").addClass("fk-display-block inactive");

                }

                if (optionname == "color") {

                    jQuery("li[title|='" + optionvaluename + "']").hide();

                    var str = "Color: ";

                    var txt = optionvaluename;

                    txt = txt.replace('Color: ', '');

                    jQuery("label[title|='" + txt + "']").hide();
                    jQuery("label[value|='" + txt + "']").hide();

                }

                <?php } ?>

                <?php } ?>

                <?php } ?>

                if ($("#filternocolor").length == 0) {

                    jQuery("#color").append('<div id="filternocolor">No colors available.</div>');

                }

                if ($('#nocolorsav').length == 0) {

                    $('.ui-multiselect-checkboxes').before('<span id="nocolorsav" style="font-size: small;padding:4px;">No colors available.</span>');

                }

            }

           $.each( jsonarraydata, function( key, value ) {

				var optionname =''; var optionid ='';var optionname1='';

				if(value.name != null  ){

					var name = value.name;

					var optionname1  = name;

					optionname = name.replace(/\s/g, '');

					optionname = optionname.toLowerCase();

				}

				if(value.option_id != null  ){

					var option_id = value.option_id;

					optionid = option_id.replace(/\s/g, '');

				}

				

				 if (optionname != "color" && optionname != "size") {

				  if(optionname  !='' && $("#"+optionname).length){  

					$('#' + optionname + ' input').each(function() {

						var classname = $(this).attr("class");

						if (classname == "tm-hide checked") {

							var list = $(this).parent().closest("li");

							$(list).prependTo('#' + optionname);

							//console.log("nbvkjb");

						}

					});

				  }

				}

				

				$('#' + optionname).animate({

					scrollTop: 0

				}, 100);

				

			});

			

            <?php if(FALSE){foreach($optionarray as $option){  ?>

            var optionname='<?=strtolower(str_replace(' ','',$option['name']))?>';

			var optionid='<?=strtolower(str_replace(' ','',$option['option_id']))?>';

            if (optionname != "color" && optionname != "size") {

			  if(optionname  !='' && $("#"+optionname).length){  

                $('#' + optionname + ' input').each(function() {

                    var classname = $(this).attr("class");

                    if (classname == "tm-hide checked") {

                        var list = $(this).parent().closest("li");

                        $(list).prependTo('#' + optionname);

                    }

                });

			  }

            }

            $('#' + optionname).animate({

                scrollTop: 0

            }, 100);

            <?php } ?>

            <?php } ?>

            if (data.success.indexOf("Sorry, there were no items") > -1) {

                if ($("#filter_cats").length > 0) {

                    if ($("#browse-filter").length > 0) {

                        $("#browse-filter").hide();

                    }

                }

               $.each( jsonarraydata, function( key, value ) {

					var optionname =''; var optionid ='';var optionname1 ='';

						if(value.name != null  ){

							var name = value.name;

							var optionname1  = name;

							optionname = name.replace(/\s/g, '');

							optionname = optionname.toLowerCase();

							

						}

						if(value.option_id != null  ){

							var option_id = value.option_id;

							optionid = option_id.replace(/\s/g, '');

						}

					 $.each( value.option_values, function( key1, value1 ) {

						 var optionvaluename = optionname1+': '+value1.name;

						  if(value1.name != null){

									if (optionname != "color" && optionname != "size") {

										jQuery("[title|='" + optionvaluename + "']").removeClass("facet");

										jQuery("[title|='" + optionvaluename + "']").addClass("facet grayed");

										jQuery("li[title|='" + optionvaluename + "']").siblings().find('a');

										jQuery('a', "li[title|='" + optionvaluename + "']").removeClass("active");

										jQuery('a', "li[title|='" + optionvaluename + "']").addClass("inactive");

										jQuery("li[title|='" + optionvaluename + "']").siblings().find('input');

										jQuery('input', "li[title|='" + optionvaluename + "']").attr('disabled', 'disabled');

									}

									if (optionname == "size") {

										jQuery("li[title|='" + optionvaluename + "']").siblings().find('a');

										jQuery('a', "li[title|='" + optionvaluename + "']").removeClass("fk-display-block active");

										jQuery('a', "li[title|='" + optionvaluename + "']").addClass("fk-display-block inactive");

									}

									if (optionname == "color") {

										jQuery("li[title|='" + optionvaluename + "']").hide();
										jQuery("li[value|='" + optionvaluename + "']").hide();

									}

						  }

					 });

					

				});

				

                <?php if(FALSE){foreach($optionarray as $option){  ?>

				var optionname='<?=strtolower(str_replace(' ','',$option['name']))?>';

				var optionid='<?=strtolower(str_replace(' ','',$option['option_id']))?>';

                <?php foreach($option['option_values'] as $optionvalue){ ?>

                <?php $optionvalue['name']= str_replace('&quot;','',$optionvalue['name']); ?>

                <?php $optionvalue['name']=str_replace("'","",$optionvalue['name']);?>

                var optionvaluename = '<?php echo $option['name '].': '.$optionvalue['name '];?>';

                if (optionname != "color" && optionname != "size") {

                    jQuery("[title|='" + optionvaluename + "']").removeClass("facet");

                    jQuery("[title|='" + optionvaluename + "']").addClass("facet grayed");

                    jQuery("li[title|='" + optionvaluename + "']").siblings().find('a');

                    jQuery('a', "li[title|='" + optionvaluename + "']").removeClass("active");

                    jQuery('a', "li[title|='" + optionvaluename + "']").addClass("inactive");

                    jQuery("li[title|='" + optionvaluename + "']").siblings().find('input');

                    jQuery('input', "li[title|='" + optionvaluename + "']").attr('disabled', 'disabled');

                }

                if (optionname == "size") {

                    jQuery("li[title|='" + optionvaluename + "']").siblings().find('a');

                    jQuery('a', "li[title|='" + optionvaluename + "']").removeClass("fk-display-block active");

                    jQuery('a', "li[title|='" + optionvaluename + "']").addClass("fk-display-block inactive");

                }

                if (optionname == "color") {

                    jQuery("li[title|='" + optionvaluename + "']").hide();

                }

                <?php } ?>

                <?php } ?>

                <?php } ?>

                if ($("#filternocolor").length == 0) {

                    jQuery("#color").append('<div id="filternocolor">No colors available.</div>');

                }

            } 

			if ($(".ui-multiselect-menu").length != 0) {

				$(".ui-multiselect-menu").css("display", "none");

			}

			$('.product_cat').prepend('<div class="pim-loader-bg"><span></span><span></span><span></span></div>');


			$("#loadingImage").hide();

        },

        complete: function(data) {

        	setTimeout(function(){

						$('.loadhidden').fadeOut(700, function () {

        			$('.loadhidden').fadeIn(800,function(){

        				$('.product-block-inner').css('display','block');

        				$('.homeimageicons').css('display','block');

        			});

      			});
      			var phtml="";
						$('.colorbr.checked').each(function(){
								phtml+=$(this).prop('outerHTML');
						});
						$('.colorbr.checked').each(function(){
							$(this).remove();
						});
						$('.filtercolorlist').prepend(phtml);
						
						var colornames='';
						$('.colorbr.checked').each(function(){
							var clrname=$(this).attr('title');
							clrname=clrname.replace('Color: ','');
							clrname=clrname.replace(' /','_');
							clrname=clrname.replace('/ ','_');
							clrname=clrname.replace('/','_');
							colornames+=clrname+',';
					});
					colornames=colornames.slice(0, -1);
					console.log(colornames);
    			var stateObj = { foo: "bar" };
					var url_state = window.location.href;
					//console.log(url_state.indexOf('color='));
  				if(url_state.indexOf('color=') != -1){
  					url_state=removeURLParameter(url_state,'color');
    				url_state=url_state+'&color='+colornames;
  				}else{
  					if(colornames!=''){
  						url_state=url_state+'&color='+colornames;
  					}
  				}

  			//	console.log(url_state);
				history.pushState(stateObj, "", url_state);





      			$('.product_cat').each(function(){

      				$(this).find('.pim-loader-bg').animate({

   					'opacity':"0"

  					}, 500, function() {

      					$(this).remove();      

  					});  				

      			});

      			$('.product-block-inner').animate({

   					'opacity':"1"

  				}, 500,function() { $('.product-block-inner').css('display','block'); });

  				$('.homeimageicons').animate({

   					'opacity':"1"

  				}, 500);

      			//$('.loaderimg').remove();

			},1000);

        	$("#loadingImage").hide();

        }



    });

	

	if ($('.innerpadd').length != 0) {

    $('html, body').animate({

        scrollTop: $('.innerpadd').offset().top

    }, 500);

	}
	<?php if($shopbybudget!=1){?>
	loadsidebarcolors();
	<?php }?>

}
function removeURLParameter(url, parameter) {
    //prefer to use l.search if you have a location/link object
    var urlparts= url.split('&');   
    if (urlparts.length>=2) {

        var prefix= encodeURIComponent(parameter)+'=';
        var pars= urlparts[1].split(/[&;]/g);

        //reverse iteration as may be destructive
        for (var i= pars.length; i-- > 0;) {    
            //idiom for string.startsWith
            if (pars[i].lastIndexOf(prefix, 0) !== -1) {  
                pars.splice(i, 1);
            }
        }

        url= urlparts[0]+pars.join('&');
        return url;
    } else {
        return url;
    }
}
<?php if($scategory_id){ ?>var scat_id = '<?php echo $scategory_id; ?>';

<?php $catcnt=1; foreach($filter_cats as $filtercategory){  ?>var fcat_id="<?php echo $filtercategory['category_id']; ?>"; 

if(scat_id==fcat_id){ $('#filtercat'+<?=$catcnt?>).click(); }

<?php $catcnt++; } ?>filterproduct();

<?php } ?>

function sort_li(a, b) {

    return ($(b).data('position')) < ($(a).data('position')) ? 1 : -1;

}

</script>

<script type="text/javascript">

$(document).ready(function() {

    $(".close-btn-search").click(function() {

        if ($('.search-brand').val() != "") {

            $('.search-brand').val('');

            var searchTerm = $(this).val().toLowerCase();

            var term = $(this).val();

            if (term != '') {

                $("#search-close-bttn").attr('src', 'catalog/view/theme/proimprint/images/search-close.png');

            } else {

                $("#search-close-bttn").attr('src', 'catalog/view/theme/proimprint/images/search82.png');

            }

            var cnt = 0;

            $('#filter_cats li').each(function(index, listItem) {

                if ($(this).filter('[data-search-term *= ' + searchTerm + ']').length > 0 || searchTerm.length < 1) {

                    var title = this.title;

                    var str = $(this).text();

                    var newText = str.replace(new RegExp(term, "i"), "<u>$&</u>");

                    var strTitleString = title.replace(/'/g, "\\'");

                    $("li[title|='" + strTitleString + "']").next().find('span');

                    $('span', "li[title|='" + strTitleString + "']").html(newText);

                    $(this).show();

                    cnt++;

                } else {

                    $(this).hide();

                }

            });

            if (cnt > 10) {

                $('#viewallcats').show();

                if ($('#expand').length != 0) {

                    if (document.getElementById("expand").innerHTML == "Show More") {

                        document.getElementById("dscroll").className = "inner--left__categories_list_wrap filter_item_container";

                        document.getElementById("searchbttmline").className = "serachbottom bottomline10";

                        document.getElementById("filter_cats").className = "inner--left__categories_list";

                    } else {

                        document.getElementById("filter_cats").className = "inner--left__categories_list";

                        document.getElementById("dscroll").className = "dscrolllistcatall";

                        document.getElementById("searchbttmline").className = "serachbottom bottomlinezero";

                    }

                } else {

                    document.getElementById("dscroll").className = "inner--left__categories_list_wrap filter_item_container autoscroll";

                    document.getElementById("filter_cats").className = "inner--left__categories_list";

                }

            } else {

                $('#viewallcats').hide();

                document.getElementById("dscroll").className = "inner--left__categories_list_wrap filter_item_container autoscroll";

                document.getElementById("filter_cats").className = "inner--left__categories_list";

            }

            document.getElementById("count-num").innerHTML = "(" + cnt + ")";

        }

    });

});

$(".search-brand").on('keyup', function() {

    var searchTerm = $(this).val().toLowerCase();

    var term = $(this).val();

    if (term != '') {

        $("#search-close-bttn").attr('src', 'catalog/view/theme/proimprint/images/search-close.png');

    } else {

        $("#search-close-bttn").attr('src', 'catalog/view/theme/proimprint/images/search82.png');

    }

    var cnt = 0;

    $('#filter_cats li').each(function(index, listItem) {

        if ($(this).filter('[data-search-term *= ' + searchTerm + ']').length > 0 || searchTerm.length < 1) {

            var title = this.title;

            var str = $(this).text();

            var newText = str.replace(new RegExp(term, "i"), "<u>$&</u>");

            var strTitleString = title.replace(/'/g, "\\'");

            $("li[title|='" + strTitleString + "']").next().find('span');

            $('span', "li[title|='" + strTitleString + "']").html(newText);

            $(this).show();

            cnt++;

        } else {

            $(this).hide();

        }

    });

    if (cnt > 10) {

        $('#viewallcats').show();

        if ($('#expand').length != 0) {

            if (document.getElementById("expand").innerHTML == "Show More") {

                document.getElementById("dscroll").className = "inner--left__categories_list_wrap filter_item_container";

                document.getElementById("searchbttmline").className = "serachbottom bottomline10";

                document.getElementById("filter_cats").className = "inner--left__categories_list filter_list_wrap";

            } else {

                document.getElementById("filter_cats").className = "inner--left__categories_list filter_list_wrap filter_item_container";

                document.getElementById("dscroll").className = "dscrolllistcatall";

                document.getElementById("searchbttmline").className = "serachbottom bottomlinezero";

            }

        } else {

            document.getElementById("dscroll").className = "inner--left__categories_list_wrap filter_item_container autoscroll";

            document.getElementById("filter_cats").className = "inner--left__categories_list filter_list_wrap";

        }

    } else {

        $('#viewallcats').hide();

        document.getElementById("dscroll").className = "inner--left__categories_list_wrap filter_item_container autoscroll";

        document.getElementById("filter_cats").className = "inner--left__categories_list filter_list_wrap";

    }

    document.getElementById("count-num").innerHTML = "(" + cnt + ")";

});



function searchbrand() {

    var searchTerm = $(".search-brand").val().toLowerCase();

    var term = $(".search-brand").val();

    if (term != '') {

        $("#search-close-bttn").attr('src', 'catalog/view/theme/proimprint/images/search-close.png');

    } else {

        $("#search-close-bttn").attr('src', 'catalog/view/theme/proimprint/images/search82.png');

    }

    var cnt = 0;

    $('#filter_cats li').each(function(index, listItem) {

        if ($(this).filter('[data-search-term *= ' + searchTerm + ']').length > 0 || searchTerm.length < 1) {

            var title = this.title;

            var str = $(this).text();

            var newText = str.replace(new RegExp(term, "i"), "<u>$&</u>");

            var strTitleString = title.replace(/'/g, "\\'");

            $("li[title|='" + strTitleString + "']").next().find('span');

            $('span', "li[title|='" + strTitleString + "']").html(newText);

            $(this).show();

            cnt++;

        } else {

            $(this).hide();

        }

    });

    var fcats = $('input:checkbox:checked.fcats').map(function() {

        return this.value;

    }).get();

    if (fcats != '') {

        if ($('#clearcatgrs').length != 0) {

            document.getElementById('clearcatgrs').style.display = 'block';

        }

    } else {

        if ($('#clearcatgrs').length != 0) {

            document.getElementById('clearcatgrs').style.display = 'none';

        }

    }

    if (cnt > 10) {

        $('#viewallcats').show();

        if ($('#expand').length != 0) {

            if (document.getElementById("expand").innerHTML == "Show More") {

                document.getElementById("dscroll").className = "inner--left__categories_list_wrap filter_item_container";

                document.getElementById("searchbttmline").className = "serachbottom bottomline10";

                document.getElementById("filter_cats").className = "inner--left__categories_list filter_list_wrap";

            } else {

                document.getElementById("filter_cats").className = "inner--left__categories_list filter_list_wrap";

                document.getElementById("dscroll").className = "dscrolllistcatall";

                document.getElementById("searchbttmline").className = "serachbottom bottomlinezero";

            }

        } else {

            document.getElementById("dscroll").className = "inner--left__categories_list_wrap filter_item_container autoscroll";

            document.getElementById("filter_cats").className = "inner--left__categories_list filter_list_wrap";

        }

    } else {

        $('#viewallcats').hide();

        document.getElementById("dscroll").className = "inner--left__categories_list_wrap filter_item_container autoscroll";

        document.getElementById("filter_cats").className = "inner--left__categories_list filter_list_wrap";

    }

    document.getElementById("count-num").innerHTML = "(" + cnt + ")";

}



function viewallcats() {

    if (document.getElementById("dscroll").className == "inner--left__categories_list_wrap") {

        document.getElementById("filter_cats").className = "inner--left__categories_list";

        document.getElementById("dscroll").className = "dscrolllistcatall";

        document.getElementById("searchbttmline").className = "serachbottom bottomlinezero";

        document.getElementById("expand").innerHTML = "Show Less";

        <?php if($ismobile!=1){?>

        	$('html, body').animate({

           		scrollTop: $('#browse-filter').offset().top

        	}, 100);

        <?php }?>

    } else if (document.getElementById("dscroll").className == "dscrolllistcatall") {

        document.getElementById("filter_cats").className = "inner--left__categories_list";

        document.getElementById("dscroll").className = "inner--left__categories_list_wrap filter_item_container";

        document.getElementById("searchbttmline").className = "serachbottom bottomline10";

        document.getElementById("expand").innerHTML = "Show More";

        <?php if($ismobile!=1){?>

        $('html, body').animate({

            scrollTop: $('#browse-filter').offset().top

        }, 100);

        <?php }?>

    }

}

</script><?php } ?>

<script type="text/javascript">jQuery.fn.extend({ propAttr: $.fn.prop || $.fn.attr});</script>

<!--script type="text/javascript" src="catalog/view/javascript/autocomplete.js" async></script-->

<?php if($ismobile!=1){?>

<script type="text/javascript">

<?php if($ismobile==1){ ?>

var filterkey='filter_keywordmob';

<?php }else{ ?>

var filterkey='filter_keyword';

<?php }?>

$(document).ready(function() {   
$('#filter_keyword').keypress(function(e) {
if(e.which == 13) {
$(".button-search").click();
}
});

$("#filter_keyword").autocomplete({  	delay: 500, helper:false,  source: function(request, response) { var limit = 11; $.ajax({  url: 'index.php?route=common/home/search', dataType: 'json',  data: { term: request.term  }, success: function(json) {  var out = $.parseJSON(json.data); if (out) {  response($.each(out.slice(0, limit), function(i, item) {  return {  label: item.label,value: item.value,url: item.url,id: item.id,caid: item.caid,count: item.count, first: item.first,searchword:  item.searchword   }   }));  }    }    });   }, select: function(event, ui) { window.location.href = ui.item.url; }  }).data("autocomplete")._renderItem = function(ul, item) {if (item.id != "") {var newText = String(item.label).replace(item.label, "&nbsp;&nbsp;&nbsp;&nbsp;in <span class='ui-highlight-suggestions-cat'>" + item.label + "</span>"); } else if ((item.caid) != "") { var newText = String(item.label).replace(item.label, "&nbsp;&nbsp;&nbsp;&nbsp;in <span class='ui-highlight-suggestions-cat'>" + item.label + "</span>");  if (item.label == this.term && item.first == 1) {   newText += "<span class='ui-highlight-suggestions-cat'> in All Categories</span>"; } if (item.count > 0) {

                newText += '<span class="searchAutoRight">' + item.count + ' results </span>';   }

        } else { var newText = String(item.label).replace(new RegExp(item.searchword, "gi"), "<span class='ui-highlight-suggestions'>$&</span>");  if (item.label == this.term && item.first == 1) { newText += "<span class='ui-highlight-suggestions-cat'> in All Categories</span>";} if (item.count > 0) { newText += '<span class="searchAutoRight">' + item.count + ' results </span>';   }      } return $("<li></li>").data("item.autocomplete", item).append("<a>" + newText + "</a>").appendTo(ul);   };});</script><?php  }?>

<?php if($ismobile==1){?><script type="text/javascript">

$(document).ready(function() {

    $("#filter_keywordmob").autocomplete({

    	delay: 500,

    	appendTo: ".mobile-search-text",

        source: function(request, response) {

            var limit = 11;

            $.ajax({

                url: 'index.php?route=common/home/search',

                dataType: 'json',

                data: {

                    term: request.term

                },

                success: function(json) {

                    var out = $.parseJSON(json.data);

                    if (out) {

                        response($.each(out.slice(0, limit), function(i, item) {

                            return {

                                label: item.label,

                                value: item.value,

                                url: item.url,

                                id: item.id,

                                caid: item.caid,

                                count: item.count,

                                first: item.first

                            }

                        }));

                    }

                }

            });

        },

        select: function(event, ui) {

            window.location.href = ui.item.url;

        }

    }).data("autocomplete")._renderItem = function(ul, item) {

        if (item.id != "") {

            var newText = String(item.label).replace(item.label, "&nbsp;&nbsp;&nbsp;&nbsp;in <span class='ui-highlight-suggestions-cat'>" + item.label + "</span>");

        } else if ((item.caid) != "") {

            var newText = String(item.label).replace(item.label, "&nbsp;&nbsp;&nbsp;&nbsp;in <span class='ui-highlight-suggestions-cat'>" + item.label + "</span>");

            if (item.label == this.term && item.first == 1) {

                newText += "<span class='ui-highlight-suggestions-cat'> in All Categories</span>";

            }

            if (item.count > 0) {

                newText += '<span class="searchAutoRight">' + item.count + ' results </span>';

            }

        } else {

            var newText = String(item.label).replace(new RegExp(this.term, "gi"), "<span class='ui-highlight-suggestions'>$&</span>");

            if (item.label == this.term && item.first == 1) {

                newText += "<span class='ui-highlight-suggestions-cat'> in All Categories</span>";

            }

            if (item.count > 0) {

                newText += '<span class="searchAutoRight">' + item.count + ' results </span>';

            }

        }

        return $("<li></li>").data("item.autocomplete", item).append("<a>" + newText + "</a>").appendTo(ul);

    };

});

</script><?php } ?>

<script type="text/javascript">$(document).ready(function() {$('.refresh').live('click', function() {$('.refresh1').attr('src', 'index.php?route=information/contact/captcha&' + Math.random());});



$('.success .close').live('click',function(){

	$('.success').remove();

});

});$(document).ready(function() {$("#scrol_tip").click(function() {$(".mail_strip_wrapper").slideToggle();$("#scrol_tip").toggleClass("scrol_tip_back");});$(".close_btn").click(function() {$(".mail_strip_wrapper").slideToggle();$("#scrol_tip").toggleClass("scrol_tip_back");});});</script><script>function filterimage() {if (document.getElementById("column-left").style.display == "none" || document.getElementById("column-left").style.display == "") {document.getElementById("filtermenu").className = "leftflip-hover";} else {document.getElementById("filtermenu").className = "leftflip";}}function closefilter() {document.getElementById("filtermenu").className = "leftflip";document.getElementById("column-left").style.display = "none";}var flag_colrserch = 0;

function filtercolorid(colorval,e) {

	var stringArray = colorval.split('-');

	var colorid = parseInt(stringArray[0]) + "-" + parseInt(stringArray[1]);

	<?php if($ismobile==0){ ?>

		$("#color_search").multiselect("widget").find("input:checkbox[value='" + colorid + "']").click();

	<?php }?>

	<?php //if($ismobile==1){?>

		setTimeout(function(){

			var colorval="";

			$("#color li a.checked").each(function(){

				var colorname=$(this).parents('li').attr('title');

				colorval=colorval+','+colorname.replace('Color:','');

			});

			if(colorval.replace(/^,/, '')==""){

				$(e).parents('.filter_box_container').find('.colordata').html("All");

				$(e).parents('.filter_box_container').find('.colordata').removeClass('active');

			}else{

				$(e).parents('.filter_box_container').find('.colordata').html(colorval.replace(/^,/, ''));

				$(e).parents('.filter_box_container').find('.colordata').addClass('active');

			}

			

			$(e).parents('.filter_box_container').find('.filterclear').show();

			addtoptags();
			addtoptags1();

			

		},100);	

	<?php //}?>

	//tickclass7348

}

function colorsearch(colorval) {

if (colorval != 0) {
	var stringArray = colorval.split('-');
	flag_colrserch = 1;
	//$("#tickclass"+stringArray[0]).click();
	filterproduct(parseInt(stringArray[0]), parseInt(stringArray[1]));
	setTimeout(function(){addtoptags1();},100);
	
} else {
	clearcolor('color');
}

}
</script>

<?php if($show_gt_track==1){ ?>

<script type="text/javascript">

	  var LC_API = LC_API || {on_after_load: function(){}};

	  (function(cb){

		LC_API.on_after_load = function(){

		  cb();

		  var custom_variables = [

			{name: '__order_id', value:order-id-lchat},

			{name: '__order_price', value: order-amount-lchat},

		  ];

		  LC_API.trigger_sales_tracker('fyRSp60RHijWlY9soTRUbHLKHc14ev6Z', custom_variables);

		};

	  })(LC_API.on_after_load);

</script><?php } ?></div></div><?php if($ismobile==0){?><script type="text/javascript">var beforetext="";function viewpopup(){$('#aiosp_window').addClass('aiosp_window_open');$('#aiosp_overlay').addClass('aiosp_overlay_open');}function aiosp_close(){$('#aiosp_window').removeClass('aiosp_window_open');$('#aiosp_overlay').removeClass('aiosp_overlay_open');if(beforetext!=""){document.getElementById('aiosp_content').innerHTML=beforetext;}$("#aiosp_delay").html("");}function aiosp_subscribe() {var aiosp_name = "";var aiosp_email = $("#aiosp_email").val();var data = {name: aiosp_name, email: aiosp_email, action: "aiosp_submit"};$("#aiosp_name").removeClass("aiosp_redborder");$("#aiosp_email").removeClass("aiosp_redborder");$("#aiosp_submit").attr("disabled", "disabled");$("#aiosp_loading").css("display", "inline-block");$.ajax({url: "https://www.proimprint.com/popup/ajax.php",data: data,dataType: "jsonp",success: function(data) {var html_data = data.html;$("#aiosp_submit").removeAttr("disabled");$("#aiosp_loading").css("display", "none");if(html_data.match("ERROR") != null) {if(html_data.match("name") != null) {$("#aiosp_name").addClass("aiosp_redborder");}if(html_data.match("email") != null) {$("#aiosp_email").addClass("aiosp_redborder");}} else {beforetext=document.getElementById('aiosp_content').innerHTML;beforetext=document.getElementById('aiosp_content').innerHTML;document.getElementById('aiosp_content').innerHTML="<div class='thankyou'></div>";aiosp_countdown=5;aiosp_timeout = setTimeout("aiosp_counter();", 1000);}}});}function aiosp_counter() {if (aiosp_countdown == 0) {clearTimeout(aiosp_timeout);aiosp_close();} else {aiosp_countdown = aiosp_countdown - 1;$("#aiosp_delay").html(aiosp_countdown_string(aiosp_countdown));aiosp_timeout = setTimeout("aiosp_counter();", 1000);}}function aiosp_countdown_string(value) {var result = '';var hours = Math.floor(value/3600);	var minutes = Math.floor((value - 3600*hours)/60);	var seconds = value - 3600*hours - 60*minutes;	if (hours > 0) {		if (hours > 9) result = hours.toString() + ":";		else result = "0" + hours.toString() + ":";	}	if (minutes > 9) result = result + minutes.toString() + ":";else result = result + "0" + minutes.toString() + ":";if (seconds > 9) result = result + seconds.toString();else result = result + "0" + seconds.toString();return result;}</script>

<script>

$(document).ready(function() {

	$('link').each(function(){

 		if($(this).attr('rel')=='preload'){

 			$(this).attr('rel','stylesheet');

 		}

 	});

	$(".bigflip").live('click',function() {

		$(".bigpanel2").slideToggle("slow");

		$(".bigflip").slideToggle("hide");

	});

	$(".closebig").live('click',function() {

		$(".bigpanel2").slideToggle("hide");

		$(".bigflip").slideToggle("slow");

	});

	var hideimg=false;

	function hidedimg(){

		$('.dymimg').each(function(){

			$(this).attr('src',$(this).data('src'));

		});

		var hideimg=true;

	}

	$(window).scroll(function(){

		if(hideimg==false){hidedimg();}

	});

	setTimeout(function(){if(hideimg==false){hidedimg();}},7500);

});

</script>



<?php } ?>

	

<?php $_SESSION['visit']=1; ?> <?php if($ismobile==0) {?>

<?php if($popup_stat==1 && 1==2){ ?>

<!-- <div class="mobbigall" style="position:relative"><div class="bigflip"><img class="dymimg" data-src="catalog/view/theme/proimprint/images/Xmas-Popup-Strip.png?version-20190503" src="catalog/view/theme/proimprint/images/footerblank.jpg" title="Price Dropped Holiday Sale" alt="Price Dropped Holiday Sale" /></div><div class="bigpanel2"><a href="https://www.proimprint.com/Hottest-Products?utm_source=proimprint&utm_medium=cornerpopup&utm_campaign=Price+Dropped+Holiday+Sale"><img data-src="catalog/view/theme/proimprint/images/Xmas-corner-Popup.png?version-20190503" src="catalog/view/theme/proimprint/images/footerblank.jpg" class="mobbig dymimg" alt="Holiday Sale" title="Holiday Sale" /></a><div class="closebig"><span class="ico_panelclose mobbignone"></span></div></div></div> -->

<div class="mobbigall" style="position:relative"><div class="bigflip"><img class="dymimg" data-src="catalog/view/theme/proimprint/images/Price Droped_strip.png?version-20190503" src="catalog/view/theme/proimprint/images/footerblank.jpg" title="Price Dropped Site-Wide" alt="Price Dropped Site-Wide" /></div><div class="bigpanel2"><a href="<?php echo HTTP_SERVER;?>Custom-Webcam-Covers"><img data-src="catalog/view/theme/proimprint/images/Webcamcover-Popup.png?version-20190503" src="catalog/view/theme/proimprint/images/footerblank.jpg" class="mobbig dymimg" alt="Custom Webcam Covers" title="Custom Webcam Covers" /></a><div class="closebig"><span class="ico_panelclose mobbignone"></span></div></div></div>

<?php } ?>

<div id="aiosp_overlay"></div><div id="aiosp_window"><div id="aiosp_content"><div class="aiosp_box aiosp_font_light" ><div style="padding: 0px 0px 10px 0px;"><br><br><br><br><br><br><br><br></div><div id="aiosp-optin-area"><input required="required" class="aiosp_input" tabindex="2" name="aiosp_email" id="aiosp_email" type="text" placeholder="Enter your e-mail" value="Enter your e-mail" onfocus="if (this.value == 'Enter your e-mail') {this.value = '';}" onblur="if (this.value == '') {this.value = 'Enter your e-mail';}" title="Please enter your e-mail."><input type="button" id="aiosp_submit" value="Subscribe" onclick="aiosp_subscribe();"><img class="dymimg" id="aiosp_loading" data-src="https://www.proimprint.com/popup/img/loading.gif" src="catalog/view/theme/proimprint/images/blank.jpg" width="16" height="16" alt="loading" title="loading"></div></div><div style="position: absolute; bottom: 0px; right: 5px; color: #888; font-size: 11px;"><span id="aiosp_delay"></span></div></div><span id="aiosp_close" onclick="aiosp_close();">×</span><span id="aiosp_delay"></span></div><?php }?><!-- <script  <?php if($ismobile==1) { ?> async <?php } ?> src="//cdn.livechatinc.com/qb/qb-7428551-transparent-150.js"></script> -->

<?php if($chatopen=="yes"){ ?>

<script type="text/javascript">

$(document).ready(function(){	

 setTimeout(

    function() {

       LC_API.open_chat_window();

    }, 3000);




});

</script>

<?php } ?>
<script type="text/javascript">

$(document).ready(function(){	
$('.header__chat').click(function(){
	setTimeout(

    function() {

       LC_API.open_chat_window();

    }, 1000);
});

});

</script>

<?php if($ismobile==1){?>

<script type="text/javascript">

  $(document).bind("mobileinit", function () {

   /* $.extend( $.mobile , {

          ajaxFormsEnabled : false,

          ajaxLinksEnabled : false,

          ajaxEnabled : false,

          ignoreContentEnabled : true,

          pushStateEnabled : false,

		  ignoreContentEnabled : true



     });*/

    $('.ui-link').removeClass('.ui-link');

  });

</script>

<script>

 $(document).ready(function(){

 	$('link').each(function(){

 		if($(this).attr('rel')=='preload'){

 			$(this).attr('rel','stylesheet');

 		}

 	});

 	$('.homescreen-close').click(function(){

 		$('.addtohomescreen').remove();

 		removehomescreen();

 	});

 	$('.content-av .colors img').live('click',function(){

 		console.log('fdgfg');

 		$(this).parents('.mobile-featured-product-left').find('.colorthumb').remove();

 		$(this).parents('.mobile-featured-product-left').find('.image_cat').prepend('<div class="colorthumb"><img src="'+$(this).attr('src')+'"></div>');

 	});

 	/*$('.ui-link').click(function(){

 		$(this).prepend('<span class="trans"></span>');

 		setTimeout(function(){$('.trans').remove();},500)

 	})*/

 });

</script>

<style type="text/css">.ui-loader-fakefix{display: none;}</style><?php }?>

<script>

 if ('serviceWorker' in navigator) {

    console.log("Will the service worker register?");

    navigator.serviceWorker.register('service-worker.js')

      .then(function(reg){

        console.log("Yes, it did.");

     }).catch(function(err) {

        console.log("No it didn't. This happened:", err)

    });

 }

</script>

<?php 

/*unset($this->session->data['removehomescreen']);*/

if($ismobile==1 && !isset($this->session->data['removehomescreen']) && $this->request->get['route']!='product/category'){?>

<script type="text/javascript">

let installPromptEvent;



window.addEventListener('beforeinstallprompt', (event) => {

  //Prevent Chrome <= 67 from automatically showing the prompt

  event.preventDefault();

  //Stash the event so it can be triggered later.

  installPromptEvent = event;

  //Update the install UI to notify the user app can be installed

  //document.querySelector('#install-button').disabled = false;

});

</script>



<!-- <div class="addtohomescreen" id="btnAddwrap">

<img src="image/data/logo.png" title="ProImprint Promotional Products" alt="ProImprint Promotional Products" class="mobile-footer-logo"><span class="homescreen-close"><img src="catalog/view/theme/proimprint/images/m_menu_close.png"></span>

<div id="btnAdd">Add Proimprint to home screen</div>

</div> -->

<!--script type="text/javascript">

let deferredPrompt;

window.addEventListener('beforeinstallprompt', (e) => {

  // Prevent Chrome 67 and earlier from automatically showing the prompt

  e.preventDefault();

  // Stash the event so it can be triggered later.

  deferredPrompt = e;

});

window.addEventListener('appinstalled', (evt) => {

  btnAddwrap.style.display = 'none';

});

btnAdd.addEventListener('click', (e) => {

  // hide our user interface that shows our A2HS button

  btnAddwrap.style.display = 'none';

  // Show the prompt

  deferredPrompt.prompt();

  // Wait for the user to respond to the prompt

  deferredPrompt.userChoice

    .then((choiceResult) => {

      if (choiceResult.outcome === 'accepted') {

        console.log('User accepted the A2HS prompt');

        addappuser();

      } else {

        console.log('User dismissed the A2HS prompt');

      }

      deferredPrompt = null;

    });

});

if (window.matchMedia('(display-mode: standalone)').matches) {

  	btnAddwrap.style.display = 'none';

}

if (window.navigator.standalone === true) {

  	btnAddwrap.style.display = 'none';

}

function addappuser(){

	$.ajax({

        url: 'index.php?route=common/header/addappusers',

        dataType: 'html',

        success: function(data) {

        }

    }); 

}

function removehomescreen(){

	$.ajax({

        url: 'index.php?route=common/header/removehomescreen',

        dataType: 'html',

        success: function(data) {

        }

    }); 

}

</script-->

<?php }?>



<!-- 

<script src="//code.jquery.com/mobile/1.5.0-alpha.1/jquery.mobile-1.5.0-alpha.1.min.js"></script> -->

<script type="text/javascript">

<?php if($ismobile!=1){?>

var loadclient=false;

function loadclients(){ 

if(loadclient===true){return false;} 

$.ajax({

type: 'POST',  

url: 'index.php?route=common/home/estemeedclients&ismobile=<?php echo $ismobile;?>', 

dataType: 'html',

success: function(data) {  

$('#esteemedclients').html(data);   

$('.clients-section').show(); 

<?php if($ismobile!=1){?>    

$('#clientcarousel').owlCarousel({onInitialize: carouselcallback,loop: true, dots:false,margin: 10, responsiveClass: true,responsive: {  0: {   items: 2, nav: true,  }, 600: { items: 3, nav: true, loop: false }, 1000: { items: 7, nav: true, loop: false, margin: 18 },  1400: { items: 7,  nav: true,   loop: false,  margin: 5   }   } });    

<?php }else{?>

$('#clientcarousel').owlCarousel({ onInitialize: carouselcallback,responsiveClass: true,responsive: {  0: {   items: 2, nav: true,  }, 400: { items: 3, nav: true, loop: false } }, nav: true,dots:false,margin: 10});

<?php }?>

}}); loadclient=true;

}

<?php }?>

function carouselcallback(event) { $('#sectionclents').show();} 
<?php if($ismobile!=1){?>
$(document).ready(function() { 

	if(loadclient==false){loadclients();}

});
<?php }?>
function Trim(a){while(a.value.charAt(0)==" ")a.value=a.value.substring(1,a.value.length);while(a.value.charAt(a.value.length-1)==" ")a.value=a.value.substring(0,a.value.length-1)}
$(document).ready(function(){
	$("input[name='quickcontactphone']").keypress(function(e) {
		var curchr = this.value.length;
		var curval = $(this).val();
		if (curchr == 3) {
			$("input[name='quickcontactphone']").val("(" + curval + ") ");
		} else if (curchr == 9) {
			$("input[name='quickcontactphone']").val(curval + "-");
		}else if(curchr > 13){
			e.preventDefault();
		}
	});$("input[name='quickcontactphone']").blur(function(e) {
		var curval = $(this).val();
		var PhoneNumber = curval.replace(/(\d\d\d)(\d\d\d)(\d\d\d\d)/, "($1) $2-$3");
		$("input[name='quickcontactphone']").val(PhoneNumber);
	});
	});
</script>

<script>$(document).ready(function() { $('#clientcarousel').owlCarousel({  loop: true, margin: 10,dots:false, responsiveClass: true,   responsive: {  0: {   items: 1, nav: true,  }, 600: { items: 3, nav: true, loop: false }, 1000: { items: 4, nav: true, loop: false, margin: 18 },  1400: { items: 5,  nav: true,   loop: false,  margin: 10   }   } }); <?php if($ismobile==1){ ?> $('.mobile-content-more').click(function(){    $('.mobile-hidecontent').toggle();if($('.mobile-hidecontent').is(':hidden')){$('.mobile-content-more').html('Read More');$('.mobile-content-more').removeClass('viewless');$('.mobile-content-more').addClass('viewmore');}else{$('.mobile-content-more').html('Read Less');$('.mobile-content-more').removeClass('viewmore');$('.mobile-content-more').addClass('viewless');}});<?php }?>});

$('.category__top-left').click(function(){
$('.category__bottom-left').toggle();
$('.category__bottom-right').toggleClass('fullwidth-container');
$(this).toggleClass('open-filter');
	//$('.category__bottom-left').slideToggle("slow",function() {
   //setTimeout(function(){$('.category__bottom-right').toggleClass('fullwidth-container');},200);
  //});	
});

</script>

</body></html>