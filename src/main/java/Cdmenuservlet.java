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

        AdminGenre adminGenre = new AdminGenre();
        ArrayList<Genre> genreList = adminGenre.readGenreAll();

        request.setAttribute("genreList", genreList);

        RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
        rd.forward(request, response);
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

        Genre genre = new Genre();
        AdminGenre adminGenre = new AdminGenre();

        /* Insert Genre */
        String name = request.getParameter("name");
        String insert = request.getParameter("insert");

        if (insert != null) {
            if (!name.isEmpty()) {
                genre.setName(name);

                try {
                    adminGenre.insertGenre(genre.getName());
                    System.out.println(name + " inserted.");
                } catch (Error e) {
                    System.out.println("Error" + e.getMessage());
                }

                request.setAttribute("msg", name + " inserted.");
            }
        }

        /* Edit Genre */
        String edit_genrename = request.getParameter("edit_genrename");
        String edit_genreId = request.getParameter("edit_genreId");
        String edit = request.getParameter("edit");

        if (edit != null) {
            if (!edit_genrename.isEmpty()) {

                try {
                    adminGenre.updateGenre(edit_genrename, Integer.parseInt(edit_genreId));
                    System.out.println(name + " inserted.");
                } catch (Error e) {
                    System.out.println("Error" + e.getMessage());
                }

                request.setAttribute("msg", name + " inserted.");
            }
        }

        /* Delete Genre */
        String delete_genreId = request.getParameter("delete_genreId");
        String delete = request.getParameter("delete");

        if (delete != null) {
            if (!delete_genreId.isEmpty()) {

                try {

                    adminGenre.deleteGenre(Integer.parseInt(delete_genreId));
                    System.out.println(delete_genreId + " deleted.");
                } catch (Error e) {
                    System.out.println("Error" + e.getMessage());
                }

                request.setAttribute("msg", delete_genreId + " deleted.");
            }
        }

        ArrayList<Genre> genreList = adminGenre.readGenreAll();
        request.setAttribute("genreList", genreList);
        RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
        rd.forward(request, response);
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
