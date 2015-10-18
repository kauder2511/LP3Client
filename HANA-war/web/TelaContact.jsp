<%-- 
    Document   : TelaContact
    Created on : 04/10/2015, 21:16:58
    Author     : Raquel Gallo (31458521)
    Author     : William Cisang (31441564)
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Page style with bootstrap -->
        <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
        <link href="css/style_marvel.css" rel='stylesheet' type='text/css' />
        <!-- Javascript with bootstrap and jQuery -->
        <script src="js/bootstrap.js"></script>
        <script src="js/jquery.min.js"></script>
        <script type="application/x-javascript"> addEventListener("load", function() { 
            setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
        </script>

        <title>Contact</title>
        <c:set var="heroi" value="${pageContext.session.getAttribute('Heroimarvel')}"/>
    </head>

    <body>
        <!-- header -->
        <c:import url="menu.jsp"></c:import>
            <!-- banner -->
            <div class="banner">
                <div class="bnr2">
                </div>
            </div>
            <!---->
            <div class="contact">
                <div class="container">
                    <div class="contact-head">
                        <h2>Contact</h2>
                        <form>
                            <div class="col-md-6 contact-left">
                                <input type="text" class="text" value="Name" onfocus="this.value = '';" onblur="if (this.value == '') {
                                            this.value = 'Name';
                                        }">
                                <input type="text" class="text" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {
                                            this.value = 'Email';
                                        }">
                                <input type="text" class="text" value="Phone" onfocus="this.value = '';" onblur="if (this.value == '') {
                                            this.value = 'Phone';
                                        }">
                            </div>
                            <div class="col-md-6 contact-right">
                                <textarea value="Message" onfocus="this.value = '';" onblur="if (this.value == '') {
                                            this.value = 'Message';
                                        }">Message</textarea>
                                <input type="submit" value="SEND"/>
                            </div>
                            <div class="clearfix"></div>
                        </form>
                    </div>
                    <div class="contact-map">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d12386182.960956775!2d-74.08302114251626!3d40.71866701702417!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2sNew+York%2C+NY%2C+USA!5e0!3m2!1sen!2sin!4v1436524193425" frameborder="0" style="border:0" allowfullscreen></iframe>
                    </div>
                    <div class="address">
                        <h3>Our Locations</h3>
                        <div class="locations">
                            <ul>
                                <li><span></span></li>
                                <li>
                                    <div class="address-info">
                                        <h4>New York, Washington</h4>
                                        <p>10-765 MD-Road</p>
                                        <p>Washington, DC, United States,</p>
                                        <p>Phone: 123 456 7890</p>
                                        <p>Mail: <a href="mailto:info@example.com">info(at)example.com</a></p>
                                        <h5><a href="">Visit on Google Maps >></a></h5>
                                    </div>
                                </li>
                            </ul>
                            <ul>
                                <li><span></span></li>
                                <li>
                                    <div class="address-info">
                                        <h4>London, UK</h4>
                                        <p>10-765 MD-Road</p>
                                        <p>Lorem ipsum, domon sit, UK,</p>
                                        <p>Phone: 123 456 7890</p>
                                        <p>Mail: <a href="mailto:info@example.com">info(at)example.com</a></p>
                                        <h5><a href="">Visit on Google Maps >></a></h5>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!--footer-->
        <c:import url="footer.jsp"></c:import>
    </body>
</html>
