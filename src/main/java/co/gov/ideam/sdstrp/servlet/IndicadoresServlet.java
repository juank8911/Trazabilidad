package co.gov.ideam.sdstrp.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.inject.Inject;
import javax.persistence.Tuple;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;

import co.gov.ideam.sdstrp.controller.ResiduoDAO;
import co.gov.ideam.sdstrp.model.Residuos;
import co.gov.ideam.sdstrp.util.BooleanTypeAdapter;
import co.gov.ideam.sdstrp.util.ResiduosAdapter;

/**
 * Servlet implementation class IndicadoresServlet
 */
@WebServlet(name = "indicadores", urlPatterns = { "/indicadores" })
public class IndicadoresServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IndicadoresServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    @Inject 
    private ResiduoDAO resDAO;
    
    @Inject
    private ResiduosAdapter resAd;
    
    @Inject
    private Logger log;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, Exception {
		response.setContentType("application/json");
		PrintWriter out = response.getWriter();
		HttpSession sesion = request.getSession();
		String action = request.getParameter("action");
		
		switch (action) {
		case "tresAnio":
			int desde = Integer.parseInt(String.valueOf(request.getParameter("desde")));
			int hasta = Integer.parseInt(String.valueOf(request.getParameter("hasta")));
			log.info(desde+" / "+hasta);
			this.xresidousTrnAnio(request,response,sesion,desde,hasta);
			break;
		case "geneAnio":
			 desde = Integer.parseInt(String.valueOf(request.getParameter("desde")));
			 hasta = Integer.parseInt(String.valueOf(request.getParameter("hasta")));
			log.info(desde+" / "+hasta);
			this.xgeneTrnAnio(request,response,sesion,desde,hasta);
			break;
		case "gesAnio":	
			desde = Integer.parseInt(String.valueOf(request.getParameter("desde")));
			 hasta = Integer.parseInt(String.valueOf(request.getParameter("hasta")));
			log.info(desde+" / "+hasta);
			this.xgenTrnAnio(request,response,sesion,desde,hasta);
		case "genResAnio":
			desde = Integer.parseInt(String.valueOf(request.getParameter("desde")));
			 hasta = Integer.parseInt(String.valueOf(request.getParameter("hasta")));
			log.info(desde+" / "+hasta);
			this.xGenResAnio(request,response,sesion,desde,hasta);
			break;
		case "genSubManAnio":
			desde = Integer.parseInt(String.valueOf(request.getParameter("desde")));
			 hasta = Integer.parseInt(String.valueOf(request.getParameter("hasta")));
			 this.xSubManGenAnio(request,response,sesion,desde,hasta);
			break;
		case "genGesAnio":
			desde = Integer.parseInt(String.valueOf(request.getParameter("desde")));
			 hasta = Integer.parseInt(String.valueOf(request.getParameter("hasta")));
			 this.xGesGenAnio(request,response,sesion,desde,hasta);
			break;
		case "genTrnAnio":
			desde = Integer.parseInt(String.valueOf(request.getParameter("desde")));
			 hasta = Integer.parseInt(String.valueOf(request.getParameter("hasta")));
			 this.xTrnGenAnio(request,response,sesion,desde,hasta);
			break;
		case "gesResAnio":
			desde = Integer.parseInt(String.valueOf(request.getParameter("desde")));
			 hasta = Integer.parseInt(String.valueOf(request.getParameter("hasta")));
			 this.xresidousGesAnio(request,response,sesion,desde,hasta);
			break;
		case "gesGenAnio":
			 desde = Integer.parseInt(String.valueOf(request.getParameter("desde")));
			 hasta = Integer.parseInt(String.valueOf(request.getParameter("hasta")));
			 this.xGeneraGesAnio(request,response,sesion,desde,hasta);
			break;
		case "gesTrnAnio":
			desde = Integer.parseInt(String.valueOf(request.getParameter("desde")));
			 hasta = Integer.parseInt(String.valueOf(request.getParameter("hasta")));
			 this.xTransGesAnio(request,response,sesion,desde,hasta);
			break;
		default:
			break;
		}
    }
    
    

	private void xTransGesAnio(HttpServletRequest request, HttpServletResponse response, HttpSession sesion, int desde,
			int hasta) throws IOException {
		// TODO Auto-generated method stub
		int idSede = Integer.parseInt(String.valueOf(sesion.getAttribute("idSede")));
		JsonArray jsArr = new JsonArray();
    	List<Tuple> resi = resDAO.getGesTrnAnio(idSede,desde,hasta);
    	final Gson gson = new GsonBuilder().setDateFormat("dd/MM/yyyy").registerTypeAdapter(Residuos.class, new BooleanTypeAdapter()).create();
	    response.setContentType("application/json");
	    if(!resi.isEmpty())
	    {
		    jsArr = resAd.resAnio(resi);
		    response.getWriter().write( gson.toJson(jsArr));
	    }
	    else {
	    	
	    	response.getWriter().write( gson.toJson(jsArr));
	    }
		
	}



	private void xGeneraGesAnio(HttpServletRequest request, HttpServletResponse response, HttpSession sesion, int desde,
			int hasta) throws IOException {
		// TODO Auto-generated method stub
		int idSede = Integer.parseInt(String.valueOf(sesion.getAttribute("idSede")));
		JsonArray jsArr = new JsonArray();
    	List<Tuple> resi = resDAO.getGenGestAnio(idSede,desde,hasta);
    	final Gson gson = new GsonBuilder().setDateFormat("dd/MM/yyyy").registerTypeAdapter(Residuos.class, new BooleanTypeAdapter()).create();
	    response.setContentType("application/json");
	    if(!resi.isEmpty())
	    {
		    jsArr = resAd.resAnio(resi);
		    response.getWriter().write( gson.toJson(jsArr));
	    }
	    else {
	    	
	    	response.getWriter().write( gson.toJson(jsArr));
	    }
		
	}



	private void xresidousGesAnio(HttpServletRequest request, HttpServletResponse response, HttpSession sesion,
			int desde, int hasta) throws IOException {
		// TODO Auto-generated method stub
		int idSede = Integer.parseInt(String.valueOf(sesion.getAttribute("idSede")));
		JsonArray jsArr = new JsonArray();
    	List<Tuple> resi = resDAO.getResiduosGesanio(idSede,desde,hasta);
    	final Gson gson = new GsonBuilder().setDateFormat("dd/MM/yyyy").registerTypeAdapter(Residuos.class, new BooleanTypeAdapter()).create();
	    response.setContentType("application/json");
	    if(!resi.isEmpty())
	    {
		    jsArr = resAd.resAnio(resi);
		    response.getWriter().write( gson.toJson(jsArr));
	    }
	    else {
	    	
	    	response.getWriter().write( gson.toJson(jsArr));
	    }
		
	}



	private void xTrnGenAnio(HttpServletRequest request, HttpServletResponse response, HttpSession sesion, int desde,
			int hasta) throws IOException {
		// TODO Auto-generated method stub
		int idSede = Integer.parseInt(String.valueOf(sesion.getAttribute("idSede")));
		JsonArray jsArr = new JsonArray();
    	List<Tuple> resi = resDAO.getGenTrnAnio(idSede,desde,hasta);
    	final Gson gson = new GsonBuilder().setDateFormat("dd/MM/yyyy").registerTypeAdapter(Residuos.class, new BooleanTypeAdapter()).create();
	    response.setContentType("application/json");
	    if(!resi.isEmpty())
	    {
		    jsArr = resAd.resAnio(resi);
		    response.getWriter().write( gson.toJson(jsArr));
	    }
	    else {
	    	
	    	response.getWriter().write( gson.toJson(jsArr));
	    }
	}



	private void xGesGenAnio(HttpServletRequest request, HttpServletResponse response, HttpSession sesion, int desde,
			int hasta) throws IOException {
		// TODO Auto-generated method stub
		int idSede = Integer.parseInt(String.valueOf(sesion.getAttribute("idSede")));
		JsonArray jsArr = new JsonArray();
    	List<Tuple> resi = resDAO.getGenGesAnio(idSede,desde,hasta);
    	final Gson gson = new GsonBuilder().setDateFormat("dd/MM/yyyy").registerTypeAdapter(Residuos.class, new BooleanTypeAdapter()).create();
	    response.setContentType("application/json");
	    if(!resi.isEmpty())
	    {
		    jsArr = resAd.resAnio(resi);
		    response.getWriter().write( gson.toJson(jsArr));
	    }
	    else {
	    	
	    	response.getWriter().write( gson.toJson(jsArr));
	    }
		
	}



	private void xSubManGenAnio(HttpServletRequest request, HttpServletResponse response, HttpSession sesion, int desde,
			int hasta) throws IOException {
		// TODO Auto-generated method stub
		int idSede = Integer.parseInt(String.valueOf(sesion.getAttribute("idSede")));
		JsonArray jsArr = new JsonArray();
    	List<Tuple> resi = resDAO.getGenSubManAnio(idSede,desde,hasta);
    	final Gson gson = new GsonBuilder().setDateFormat("dd/MM/yyyy").registerTypeAdapter(Residuos.class, new BooleanTypeAdapter()).create();
	    response.setContentType("application/json");
	    if(!resi.isEmpty())
	    {
		    jsArr = resAd.resAnio(resi);
		    response.getWriter().write( gson.toJson(jsArr));
	    }
	    else {
	    	
	    	response.getWriter().write( gson.toJson(jsArr));
	    }
		
	}



	private void xGenResAnio(HttpServletRequest request, HttpServletResponse response, HttpSession sesion, int desde,
			int hasta) throws IOException {
		// TODO Auto-generated method stub
		int idSede = Integer.parseInt(String.valueOf(sesion.getAttribute("idSede")));
		JsonArray jsArr = new JsonArray();
    	List<Tuple> resi = resDAO.getGenResAnio(idSede,desde,hasta);
    	final Gson gson = new GsonBuilder().setDateFormat("dd/MM/yyyy").registerTypeAdapter(Residuos.class, new BooleanTypeAdapter()).create();
	    response.setContentType("application/json");
	    if(!resi.isEmpty())
	    {
		    jsArr = resAd.resAnio(resi);
		    response.getWriter().write( gson.toJson(jsArr));
	    }
	    else {
	    	
	    	response.getWriter().write( gson.toJson(jsArr));
	    }
		
	}



	private void xgenTrnAnio(HttpServletRequest request, HttpServletResponse response, HttpSession sesion, int desde,
			int hasta) throws IOException {
		// TODO Auto-generated method stub
		int idSede = Integer.parseInt(String.valueOf(sesion.getAttribute("idSede")));
		JsonArray jsArr = new JsonArray();
    	List<Tuple> resi = resDAO.getGestTrnAnio(idSede,desde,hasta);
    	final Gson gson = new GsonBuilder().setDateFormat("dd/MM/yyyy").registerTypeAdapter(Residuos.class, new BooleanTypeAdapter()).create();
	    response.setContentType("application/json");
	    if(!resi.isEmpty())
	    {
		    jsArr = resAd.resAnio(resi);
		    response.getWriter().write( gson.toJson(jsArr));
	    }
	    else {
	    	
	    	response.getWriter().write( gson.toJson(jsArr));
	    }
		
	}

	private void xgeneTrnAnio(HttpServletRequest request, HttpServletResponse response, HttpSession sesion, int desde,
			int hasta) throws IOException {
		// TODO Auto-generated method stub
		int idSede = Integer.parseInt(String.valueOf(sesion.getAttribute("idSede")));
		JsonArray jsArr = new JsonArray();
    	List<Tuple> resi = resDAO.getGenAnio(idSede,desde,hasta);
    	final Gson gson = new GsonBuilder().setDateFormat("dd/MM/yyyy").registerTypeAdapter(Residuos.class, new BooleanTypeAdapter()).create();
	    response.setContentType("application/json");
	    if(!resi.isEmpty())
	    {
		    jsArr = resAd.resAnio(resi);
		    response.getWriter().write( gson.toJson(jsArr));
	    }
	    else {
	    	
	    	response.getWriter().write( gson.toJson(jsArr));
	    }
		
	}

	private void xresidousTrnAnio(HttpServletRequest request, HttpServletResponse response, HttpSession sesion, int desde, int hasta) throws IOException 
	{
		// TODO Auto-generated method stub
		int idSede = Integer.parseInt(String.valueOf(sesion.getAttribute("idSede")));
		JsonArray jsArr = new JsonArray();
    	List<Tuple> resi = resDAO.getResiduosanio(idSede,desde,hasta);
    	final Gson gson = new GsonBuilder().setDateFormat("dd/MM/yyyy").registerTypeAdapter(Residuos.class, new BooleanTypeAdapter()).create();
	    response.setContentType("application/json");
	    if(!resi.isEmpty())
	    {
		    jsArr = resAd.resAnio(resi);
		    response.getWriter().write( gson.toJson(jsArr));
	    }
	    else {
	    	
	    	response.getWriter().write( gson.toJson(jsArr));
	    }
		
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			processRequest(request, response);
		} catch (Exception ex) {

			Logger.getLogger(control.class.getName()).log(Level.SEVERE, null, ex);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			processRequest(request, response);
		} catch (Exception ex) {
			Logger.getLogger(control.class.getName()).log(Level.SEVERE, null, ex);
		}
	}

}
