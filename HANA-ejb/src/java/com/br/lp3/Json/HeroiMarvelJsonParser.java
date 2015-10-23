/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.lp3.Json;

import com.br.lp3.entities.Heroimarvel;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.List;
import javax.json.Json;
import javax.json.JsonArray;
import javax.json.JsonObject;
import javax.json.JsonReader;

/**
 *
 * @author willi
 */
public class HeroiMarvelJsonParser {
    
    public static List<Heroimarvel> parseFeed (String content){
        List<Heroimarvel> chars = new ArrayList<>();
        
        JsonReader jsonreader = Json.createReader(new StringReader(content));
        JsonObject mainobj = jsonreader.readObject();
        jsonreader.close();
        
        int code = mainobj.getInt("code");
        if (code != 200) {
            System.out.println("DEU RUIM na leitura do JSON");
            return null;
        }
        JsonObject data = mainobj.getJsonObject("data");
        JsonArray results = data.getJsonArray("results");
        
        for (int i = 0; i < results.size(); i++) {
            JsonObject p = results.getJsonObject(i);
            
            String name = p.getString("name");
            String desc = p.getString("description");
            
            JsonObject thumbnail = p.getJsonObject("thumbnail");
            String thumb = thumbnail.getString("path")+"."+thumbnail.getString("extension");
            Heroimarvel mc = new Heroimarvel();
            mc.setHistoria(desc);
            mc.setNomeHeroimar(name);
            chars.add(mc);
        }
                
        return chars;
    }
}
