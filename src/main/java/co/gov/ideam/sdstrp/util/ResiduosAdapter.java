package co.gov.ideam.sdstrp.util;

import java.lang.reflect.Type;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Logger;

import javax.inject.Inject;
import javax.persistence.Tuple;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;

import co.gov.ideam.sdstrp.model.Residuos;

public class ResiduosAdapter implements com.google.gson.JsonSerializer<Boolean>
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
	
	public JsonArray adaResiduos(List<Residuos> residuos)
	{
		JsonArray jsResArr = new JsonArray();
		
		for (Residuos res : residuos) {
			log.info(res.toString());
			JsonObject jsOb = new JsonObject();
			jsOb.addProperty("res_id", res.getRes_id());
			jsOb.addProperty("res_nombre", res.getRes_nombre());
			JsonObject tipo_res = new JsonObject();
			tipo_res.addProperty("tres_nombre", res.gettResiduo().getTre_nombre());
			tipo_res.addProperty("tres_id", res.gettResiduo().getTre_id());
			tipo_res.addProperty("tres_padre", res.gettResiduo().getTre_padre());
			jsOb.add("tipo_residuo", tipo_res);
			JsonObject estado = new JsonObject();
			estado.addProperty("est_nombre", res.getEstadoM().getEma_nombre());
			estado.addProperty("est_id", res.getEstadoM().getEma_id());
			jsOb.add("estado_materia", estado);
			JsonObject tEmp = new JsonObject();
			tEmp.addProperty("tem_nombre", res.getjTipoEmp().getTep_nombre());
			tEmp.addProperty("tem_id", res.getjTipoEmp().getTep_id());
			jsOb.add("tipo_empaque", tEmp);
			JsonObject tEmb = new JsonObject();
			tEmb.addProperty("temb_nombre", res.getjTipoEmb().getTem_nombre());
			tEmb.addProperty("temb_id", res.getjTipoEmb().getTem_id());
			jsOb.add("tipo_embalaje", tEmb);
			JsonObject pel = new JsonObject();
			pel.addProperty("pel_nombre", res.gettPeligro().getTpe_nombre());
			pel.addProperty("pel_id", res.gettPeligro().getTpe_id());
			jsOb.add("tPeligro", pel);
			JsonObject trans = new JsonObject();
			trans.addProperty("tra_nombre", res.getSedeTrans().getSed_nombre());
			trans.addProperty("tra_id", res.getSedeTrans().getSed_id());
			jsOb.add("sede_transporte", trans);
			JsonObject gen = new JsonObject();
			gen.addProperty("gen_nombre", res.getSedeRes().getSed_nombre());
			gen.addProperty("gen_id", res.getSedeRes().getSed_id());
			jsOb.add("sede_gen", gen);
			JsonObject ges = new JsonObject();
			ges.addProperty("ges_nombre", res.getSedeGest().getSed_nombre());
			ges.addProperty("ges_id", res.getSedeGest().getSed_id());
			jsOb.add("sede_ges", ges);
			JsonObject tman = new JsonObject();
			tman.addProperty("tma_nombre", res.gettManejo().getTma_nombre());
			tman.addProperty("tma_id", res.gettManejo().getTma_id());
			tman.addProperty("gest_id", res.gettManejo().getTma_padre());
			jsOb.add("t_manejo", tman);
			JsonObject ges_ubi = new JsonObject();
			ges_ubi.addProperty("ges_uNombre", res.getgUbicacion().getNombre_gestion_ubi());
			ges_ubi.addProperty("ges_uId", res.getgUbicacion().getId_gestion_ubi());
			jsOb.add("gestion_ubi", ges_ubi );
			JsonObject n_ges = new JsonObject();
			n_ges.addProperty("gest_nombre", res.gettGestion().getNombre_gestion());
			n_ges.addProperty("gest_id", res.gettGestion().getId_tip_gestion());
			jsOb.add("tipo_gestion", n_ges);
			JsonObject corrRes = new JsonObject();
			corrRes.addProperty("tre_nombre",  res.gettResiduo().getTre_nombre());
			corrRes.addProperty("tre_Id",  res.gettResiduo().getTre_id());
			corrRes.addProperty("tre_idPadre",  res.gettResiduo().getTre_padre());
			corrRes.addProperty("tre_id-nom",  res.gettResiduo().getTre_id() + ":" + res.gettResiduo().getTre_nombre());
			jsOb.add("t_residuo",  corrRes);
			jsResArr.add(jsOb);
		}
		return jsResArr;
		
	}
	
	public JsonArray resAnio(List<Tuple> resi)
	{
		JsonArray residAn = new JsonArray();
			for (Tuple tuple : resi) {
				log.info(tuple+"");
				JsonObject jsOb = new JsonObject();
				jsOb.addProperty("date", String.valueOf(tuple.get(0)));
				jsOb.addProperty("competitorName", String.valueOf(tuple.get(1)));
				jsOb.addProperty("price", Integer.parseInt(String.valueOf(tuple.get(2))));
				residAn.add(jsOb);
			}
		return residAn;
	}
	
}