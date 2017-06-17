package uu;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;

/**
 * Created by rico on 6/16/17.
 */
public class NoteList {
private HashMap<String, String> map = new HashMap<>();
    public NoteList() {
    }

    public HashMap<String,String> getMap() {
        return map;
    }
    public void setMap(HashMap<String, String> map) {
        this.map = map;
    }
    public void processRequest(HttpServletRequest request) {
        String id = (String) request.getAttribute("id");
        String note = request.getParameter("content");
        map.put(note, id);
    }
}
