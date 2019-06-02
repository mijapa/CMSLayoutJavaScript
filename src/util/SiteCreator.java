package util;

import java.io.*;
import java.nio.charset.StandardCharsets;

public class SiteCreator {
    public void createSite(String name) {

        try (Writer writer = new BufferedWriter(new OutputStreamWriter(
                new FileOutputStream("filename.txt"), StandardCharsets.UTF_8))) {
            writer.write("something");
        } catch (UnsupportedEncodingException e) {


        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }
}
