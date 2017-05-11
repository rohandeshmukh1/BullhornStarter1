

import java.io.IOException;
import model.Bhuser;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import customTools.DbUser;
/**
 * Servlet implementation class AddUserServelet
 */
@WebServlet("/AddUserServelet")
public class AddUserServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddUserServelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		String nextPage;
		String email = request.getParameter("email");
		  Bhuser newuser = new Bhuser(); 
		newuser.setUserpassword(request.getParameter("password"));
		newuser.setMotto(request.getParameter("motto"));
		newuser.setUseremail(request.getParameter("email"));
		newuser.setUsername(request.getParameter("username"));
		DbUser.insert(newuser); 
		session.setAttribute("user", DbUser.getUserByEmail(email));
		nextPage = "/home.jsp";
		getServletContext().getRequestDispatcher(nextPage).forward(request,response);
	}

}
