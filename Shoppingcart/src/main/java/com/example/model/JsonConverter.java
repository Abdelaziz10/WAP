package com.example.model;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

import java.util.List;

public class JsonConverter {

    private final Gson gson;

    public JsonConverter() {

        gson = new GsonBuilder().create();
    }

    public String convertToJson(List<Product> products) {

        JsonArray jarray = gson.toJsonTree(products).getAsJsonArray();
        JsonObject jsonObject = new JsonObject();
        jsonObject.add("products", jarray);

        return jsonObject.toString();
    }
}
