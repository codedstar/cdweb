/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.sql.Connection;

/**
 *
 * @author kwaku
 */
public class AdminGenre {

    dbConn dbObject = new dbConn();
    Connection conn = dbObject.connect();
    PreparedStatement pStmt;

    public void insertGenre(String genreName) {
        try {
            // PreparedStatement way
            String query = "INSERT INTO genre(name) VALUES(?)";
            pStmt = conn.prepareStatement(query);
            pStmt.setString(1, genreName);

            pStmt.executeUpdate();

        } catch (SQLException exception) {
            throw new Error(exception);

        } finally {
            try {
                pStmt.close();
            } catch (SQLException e) {
                throw new Error(e);
            }
        }

    }

    public ArrayList<Genre> readGenreAll() {
        try {
            // PreparedStatement way
            String query = "SELECT * FROM genre";
            pStmt = conn.prepareStatement(query);

            ResultSet rs;
            rs = pStmt.executeQuery();

            ArrayList<Genre> genreList = new ArrayList<>();
            while (rs.next()) {
                Genre genre = new Genre(rs.getInt(1), rs.getString(2));
                genreList.add(genre);
            }
            return genreList;

        } catch (SQLException exception) {
            throw new Error(exception);
        } finally {
            try {
                pStmt.close();
            } catch (SQLException e) {
                throw new Error(e);
            }
        }
    }

    public void updateGenre(String genreName, int id) {
        try {
            // PreparedStatement way
            String query = "UPDATE `music`.`genre` SET `name` = ? WHERE (`id_genre` = ?)";
            pStmt = conn.prepareStatement(query);
            pStmt.setString(1, genreName);
            pStmt.setInt(2, id);

            pStmt.executeUpdate();
            /*return rowsUpdated + " row(s) updated successfully.";*/

        } catch (SQLException exception) {
            throw new Error(exception);
        } finally {
            try {
                pStmt.close();
            } catch (SQLException e) {
                throw new Error(e);
            }
        }
    }

    public void deleteGenre(int id) {
        try {
            // PreparedStatement way
            String query = "DELETE FROM `music`.`genre` WHERE (`id_genre` = ?)";
            pStmt = conn.prepareStatement(query);
            pStmt.setInt(1, id);
            pStmt.executeUpdate();

        } catch (SQLException exception) {
            throw new Error(exception);
        } finally {
            try {
                pStmt.close();
            } catch (SQLException e) {
                throw new Error(e);
            }
        }

    }

    public void dbClose() {
        try {
            conn.close();
        } catch (SQLException e) {
            throw new Error(e);
        }
    }

}
