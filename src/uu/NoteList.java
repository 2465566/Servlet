package uu;

import java.util.HashMap;

/**
 * Created by rico on 6/16/17.
 */
public class NoteList {
    private String id = "test";
    private HashMap<String,String> map;
    public NoteList() {
    }
    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }
    public HashMap<String,String> getMap() {
        return map;
    }
    public void setMap(HashMap<String, String> map) {
        this.map = map;
    }
}
