package bean;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;

/**
 * Created by rico on 6/17/17.
 */
public class Register {
    private String id;
    private String psw;
    private String name;
    private String submit = null;
    private HashMap<String, String> map = new HashMap<>();
    public Register() {
    }
    public void setId(String id) {
        this.id = id;
    }
    public String getId() {
        return id;
    }
    public void setPsw(String psw) {
        this.psw = psw;
    }
    public String getPsw() {
        return psw;
    }
    public void setSubmit(String submit) {
        this.submit = submit;
    }
    public String getSubmit() {
        return submit;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getName() {
        return name;
    }
    public void setMap(HashMap<String, String> map) {
        this.map = map;
    }
    public HashMap<String ,String> getMap() {
        return map;
    }
    public void processRequest(HttpServletRequest request) {
        if (submit.equals("注册")) {
            map.put(id,psw);
        }
    }
}
