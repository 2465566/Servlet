package bean;

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
    public void processRequest(HttpServletRequest request) throws Exception{
        request.setCharacterEncoding("gbk");
        String id = (String) request.getAttribute("id");
        String note = request.getParameter("content");
        /* avoid chinese messy code temporary, should add filter in web.xml to handle this issue in future*/
        note = new String(note.getBytes("ISO8859_1"),"GBK");
        map.put(note, id);
    }
}
