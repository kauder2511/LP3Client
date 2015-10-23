/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.lp3.sessionbeans;

import com.br.lp3.Json.HeroiMarvelJsonParser;
import com.br.lp3.entities.Heroimarvel;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.Stateless;

/**
 *
 * @author willi
 */
@Stateless
public class MarvelManager implements MarvelManagerLocal {

    private static String apikey = "8beb81223c818db8df92faff86495494";
    private static String privatekey = "78d83a1d79ed2c274c58a706010a472f94c4dfcf";
    private static String urlbase = "http://gateway.marvel.com:80";
    private static String urlCharacter = "/v1/public/characters";

    @Override
    public List<Heroimarvel> searchCharacterByName(String name) {
        List<Heroimarvel> chars = new ArrayList<>();
        //Passo 1 - Construção da URL
        //Passo 1 (a) - geração do timestamp
        Date date = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("ddMMyyyyhhmmss");
        String ts = formatter.format(date);

        //Passo 1 (b) - obtendo o hash
        String hashstr = format_md5(ts + privatekey + apikey);

        //Passo 1 (c) - montar a URL
        String uri = urlbase + urlCharacter + "?ts=" + ts + "&apikey=" + apikey + "&hash=" + hashstr + "&nameStartsWith=" + name;
        System.out.println(uri);

        //Passo 2 - fazer requisição
        URL url;
        try {
            url = new URL(uri);
            HttpURLConnection httpcon = (HttpURLConnection) url.openConnection();

            //Passo 3 - ler o resultado
            BufferedReader br = new BufferedReader(new InputStreamReader(httpcon.getInputStream()));

            StringBuilder sb = new StringBuilder();
            String line;
            while ((line = br.readLine()) != null) {
                sb.append(line);
            }
            br.close();

            //String str = new Scanner(new File("C:/Temp/ProjetoMarvel/marvel.rtf"),"UTF-8").useDelimiter("\\A").next();


            String str = sb.toString();
            chars = HeroiMarvelJsonParser.parseFeed(str);

        } catch (MalformedURLException ex) {
            Logger.getLogger(MarvelManager.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(MarvelManager.class.getName()).log(Level.SEVERE, null, ex);
        }

        return chars;
    }

    //Criptografia
    public static String format_md5(String str) {
        try {
            java.security.MessageDigest md = java.security.MessageDigest.getInstance("MD5");
            byte[] array = md.digest(str.getBytes());
            StringBuffer sb = new StringBuffer();
            for (int i = 0; i < array.length; ++i) {
                sb.append(Integer.toHexString((array[i] & 0xFF) | 0x100).substring(1, 3));
            }
            return sb.toString();
        } catch (java.security.NoSuchAlgorithmException e) {
        }
        return null;
    }
}
