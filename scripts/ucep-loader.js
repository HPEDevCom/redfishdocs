// This HPE script wraps the Redocly/Realm portal with
// HPE required page header and footer.

function getCookie(cookiename) {
  const cookiestring = `; ${document.cookie}`;

  var cookiearray = cookiestring.split(';');
  for(var i =0 ; i < cookiearray.length ; ++i){
    if(cookiearray[i].trim().match('^'+cookiename+'=')){
        const token = cookiearray[i].replace(`${cookiename}=`,'').trim()
        //return first non empty cookie
        if(token && token !== '')
          return token;
    }
    } return null;
 }
 
var observer = new MutationObserver(function() {
  if (document.body) {
    const headerElement = document.createElement('header');
    headerElement.className = 'header';
    headerElement.id = 'header';
    // Translate the headerElement to a negative z-index to ensure it appears behind all other elements
    headerElement.style.transform = 'translateZ(-100%)';
    headerElement.style.zIndex = '-1';
    headerElement.style.position = 'relative';
    document.body.prepend(headerElement);

    const footerElement = document.createElement('footer');
    footerElement.className = 'footer';
    footerElement.id = 'footer';   
    document.body.append(footerElement); 

  // Add CSS dynamically to style the footer
  // Failure to do so will result in the footer being 
  // positioned just below the header :-(
  const style = document.createElement('style');
  style.innerHTML = `
    html, body {
    min-height: 100%;
    margin: 0;
    padding: 0;
    position: relative;
  }
    .footer {
      position: absolute;
      bottom: 0;
      width: 100%;
      z-index: 1000;
      padding: 20px; // With 20px it hides properly the "Need help?" button
    }
  `;
  document.head.appendChild(style);

    // check for redocly_idp_id_token 
    const name = 'redocly_idp_id_token'
    const token = getCookie(name);
    
    var claims = ''
    if(token && token.split('.').length > 1){
        claims = token.split('.')[1];      
    }
    
    const ucepScript = document.createElement('script');
    // toggle top navigation based on user login status. This code comes from GreenLake. No need in Redfish !
    //if(claims === ''){
      //ucepScript.setAttribute('src','https://h50007.www5.hpe.com/hfws/us/en/hpe/latest.r/root?contentType=js&switchToCHF=true&hide_country_selector=true&console_mode=true&hide_main_nav=true&hide_search=true&hide_cart=true&hide_sign_in=true&header_logo=hpe&slim_footer=false&hide_help_menu=true');
    //}else{
      //ucepScript.setAttribute('src','https://h50007.www5.hpe.com/hfws/us/en/hpe/latest.r/root?contentType=js&switchToCHF=true&hide_country_selector=true&console_mode=true&hide_main_nav=true&hide_search=true&hide_cart=true&hide_sign_in=true&header_logo=hpe&slim_footer=false');
    //}
    
    //FWS (Header Footer WebServices) test page: 
    //    https://h50007.www5.hpe.com/hfws-test-pages/common-hfws-test-page.php

    //Not clean, as per Artur (problem with console and expanded_view):
    //ucepScript.setAttribute('src','https://h50007.www5.hpe.com/hfws/us/en/hpe/latest.r/root?contentType=js&switchToCHF=true&expand_view=false&hide_country_selector=true&console_mode=true&hide_main_nav=false&hide_search=false&hide_cart=false&hide_cube_menu=false&hide_sign_in=true&header_logo=hpe&slim_footer=false&hide_help_menu=true');

    //Expanded view enabled (expansion of the HPE Logo on the left and the other logos on the right):
    ucepScript.setAttribute('src','https://h50007.www5.hpe.com/hfws/us/en/hpe/latest.r/root?contentType=js&switchToCHF=true&expand_view=true&hide_country_selector=true&hide_sign_in=true&slim_footer=true');

    //Default expend_view=false:
    //ucepScript.setAttribute('src','https://h50007.www5.hpe.com/hfws/us/en/hpe/latest.r/root?contentType=js&switchToCHF=true&hide_country_selector=true&hide_sign_in=true'); 

    document.head.appendChild(ucepScript);

    observer.disconnect();
  };
});
observer.observe(document.documentElement, { childList: true, subtree: true });
