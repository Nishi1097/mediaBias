<%@page import="java.util.Calendar"%>

		<footer class="footer">
                © 
                <%
                	Calendar cal = Calendar.getInstance();
                	out.print(cal.get(Calendar.YEAR));
                %> 
        </footer>