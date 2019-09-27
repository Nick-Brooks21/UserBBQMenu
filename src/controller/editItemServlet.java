package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.FoodList;

/**
 * Servlet implementation class editItemServlet
 */
@WebServlet("/editItemServlet")
public class editItemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public editItemServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		BBQMenuHelper bmh = new BBQMenuHelper();
		
		String type = request.getParameter("type");
		String quantity = request.getParameter("quantity");
		Integer newQuantity = Integer.parseInt(quantity);
		Integer tempId = Integer.parseInt(request.getParameter("id"));
		
		FoodList itemToUpdate = bmh.searchById(tempId);
		itemToUpdate.setType(type);
		itemToUpdate.setQuantity(newQuantity);
		
		bmh.updateItem(itemToUpdate);
		
		getServletContext().getRequestDispatcher("/viewMenuItemsServlet").forward(request, response);
	}

}
