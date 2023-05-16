/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;

/**
 *
 * @author abdulmac
 */
public class Cdmenuservlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Genre genre = new Genre();
        AdminGenre adminGenre = new AdminGenre();
        ArrayList<Genre> genreList = adminGenre.readGenreAll();
        
//        displayGenres(genreList);

//        ArrayList list;
        
        
        
        
        request.setAttribute("genreList", genreList);
//        request.setAttribute("Genre", genre);

        String name = request.getParameter("name");
        
        if(name != null){
        genre.setName(name);

        try {
            adminGenre.insertGenre(genre.getName());
            System.out.println(name + " inserted.");
        } catch (Error e) {
            System.out.println("Error" + e.getMessage());
        }
        
        request.setAttribute("msg", name + " inserted.");
        }

        RequestDispatcher rd = request.getRequestDispatcher("cdmenu.jsp");
        rd.forward(request, response);
        
    }
    
    public static String displayGenres(ArrayList<Genre> genreList) {
        String list = "";
        if (!genreList.isEmpty()) {
//            System.out.println("The list has " + genreList.size() + " elements.");
            list = "The list has " + genreList.size() + " elements.\n";
            // for loop
//            System.out.println("Genre ID " + " | " + "Genre Name ");
            for (Genre genre : genreList) {
//                System.out.println(genre.getID() + "         | " + genre.getName());
                  list  += genre.getID() + "         | " + genre.getName() +'\n';

            }
//            System.out.println("\n");
              list  += '\n';

        } else {
//         the list is empty
//            System.out.println("Genre List is Empty at the moment.\n");
              list  += "Genre List is Empty at the moment.";
        }
        return list;
    }


    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
