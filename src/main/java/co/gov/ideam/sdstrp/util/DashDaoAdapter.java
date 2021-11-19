package co.gov.ideam.sdstrp.util;

import java.lang.reflect.Type;
import java.util.List;
import java.util.logging.Logger;

import javax.inject.Inject;
import javax.persistence.Tuple;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSerializationContext;

import co.gov.ideam.sdstrp.model.Residuos;

public class DashDaoAdapter implements com.google.gson.JsonSerializer<Boolean>
{

	@Inject
	private Logger log ;

	@Override
	public JsonElement serialize(Boolean aBoolean, Type type, JsonSerializationContext jsonSerializationContext) {
		// TODO Auto-generated method stub
        if(aBoolean == null) {  
            return new JsonPrimitive("");  
        }  
        return new JsonPrimitive(aBoolean.booleanValue() == true ? 1 : 0); 

	} 
	
	public JsonArray adaDashAut(Tuple dash)
	{
		JsonArray jsResArr = new JsonArray(); 
		jsResArr.add(Integer.parseInt(String.valueOf(dash.get(0))));
		jsResArr.add(Integer.parseInt(String.valueOf(dash.get(1))));
		jsResArr.add(Integer.parseInt(String.valueOf(dash.get(2))));
		jsResArr.add(Integer.parseInt(String.valueOf(dash.get(3))));
		jsResArr.add(Integer.parseInt(String.valueOf(dash.get(4))));
		jsResArr.add(Integer.parseInt(String.valueOf(dash.get(5))));
		jsResArr.add(Integer.parseInt(String.valueOf(dash.get(6))));
		
			
		return jsResArr;
		
	}
	
}