package beans;

import lombok.Data;

@Data
public class Page {
    private String name = "Nie nadano";
    private String layout = "Nie nadano";
    private String color = "blue";
    private String content = "Nosce te ipsum";
    private boolean visible = false;
}
