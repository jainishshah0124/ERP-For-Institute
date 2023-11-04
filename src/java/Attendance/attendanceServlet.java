package Attendance;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author KVR
 */
public class attendanceServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
         Class.forName("com.mysql.jdbc.Driver");

	//creating connection with the database 
          Connection  con=DriverManager.getConnection
                     ("jdbc:mysql://localhost:3306/ERP","root","pandu1089");
          Statement st = con.createStatement();
          
          ResultSet rs = st.executeQuery("Select s_name from physics");
          
          out.print("<html>\n" +
"<head>\n" +
"<style>\n" +
"#dtable {\n" +
"    font-family: Times New Roman;\n" +
"    border-collapse: collapse;\n" +
"    width: 50%;\n" +
"}\n" +
"\n" +
"#dtable td, #dtable th {\n" +
"    border: 1px solid #ddd;\n" +
"    padding: 8px;\n" +
"}\n" +
"\n" +
"\n" +
"#dtable tr:hover {background-color: #ddd;}\n" +
"\n" +
"#dtable th {\n" +
"    padding-top: 12px;\n" +
"    padding-bottom: 12px;\n" +
"    text-align: left;\n" +
"    background-color: #ff6633;\n" +
"    color: white;\n" +
"}\n" +
"\n" +
"\n" +
".radiotext {\n" +
"    margin: 10px 10px 0px 0px;\n" +
"}\n" +
"\n" +
".registerbtn {\n" +
"  background-color:#ff6633;\n" +
"  color: white;\n" +
"  padding: 16px 20px;\n" +
"  margin: 8px 0;\n" +
"  border: none;\n" +
"  cursor: pointer;\n" +
"  width: 30%;\n" +
"  opacity: 0.9;\n" +
"}\n" +
"\n" +
".registerbtn:hover {\n" +
"  opacity:1;\n" +
"}\n" +
"</style>\n" +
"</head>\n" +
"<body>\n" +
"<form name = \"registrationForm\" method=\"get\" onsubmit=\"return validateForm()\" action=\"RServlet\">\n" +
"<table id=\"dtable\">\n" +
"  <tr>\n" +
"    <th>roll no</th>\n" +
"    <th>name</th>\n" +
"	<th>attendance</th>\n" +
"  </tr>");
          int i = 1;
          while(rs.next()){
              out.print("<tr>\n" +
"    <td>"+ i +"</td>\n" +
"	<td>"+ rs.getString("s_name") +"</td>\n" +
"	<td><div class=\"radio\">\n" +
"	<label><input type=\"radio\" id='Present' name=\"akash_attendance\">Present</label> \n" +
"	<label><input type=\"radio\" id='Absent' name=\"akash_attendance\">Absent</label>\n" +
"                </div></td>\n" +
"  </tr>");
              i++;
          }
          out.print("</table>\n" +
"<button type=\"submit\" class=\"registerbtn\">submit</button>\n" +
"\n" +
"</form> \n" +
"</body>\n" +
"</html>");
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }
}

    
