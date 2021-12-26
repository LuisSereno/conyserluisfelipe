package es;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.Serializable;
import java.util.Properties;
import java.util.logging.Logger;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;



public class EnvioCorreo extends HttpServlet implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -2542354775353211367L;
	/**
	 * Parametro de la clase, que servira para mostrar los logs en la consola
	 */
	private static final Logger log = Logger.getLogger(EnvioCorreo.class.getName());

	private String email="";
	private String telefono="";
	private String consulta="";
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException{
		
		log.info("Entra en el post de EnvioCorreo");
		email= req.getParameter("email");
		telefono= req.getParameter("telefono");
		consulta= req.getParameter("consulta");
		log.info(email);
		log.info(telefono);
		log.info(consulta);
		resp.setContentType("application/json");
		PrintWriter out = resp.getWriter();
		Gson gson = new Gson();
		String salida=gson.toJson(enviarCorreo()); //,HttpSession.class
		out.println(salida);
		out.flush();
		out.close();	
	}
	
	
	
	
	public boolean enviarCorreo (){
		
		boolean correoEnviado=false;
		// Quien envia el correo
		try {
			Properties props = new Properties();
	        Session session = Session.getDefaultInstance(props, null);
			session.setDebug(true);
			log.info("MENSAJE DESDE MI CUENTA");
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress("luisalbertosereno@gmail.com"));
			//message.setFrom(new InternetAddress(email));
			// A quien va dirigido
			message.addRecipient(Message.RecipientType.TO, new InternetAddress("luisfelipesereno@gmail.com", "Construcciones y Servicios Luis Felipe Sereno"));
			
			message.setSubject("Consulta presupuesto telf: " + telefono + " y email: " + email);
			message.setText(consulta);

			log.info("ANTES DEL TRANSPORT");
			Transport.send(message);
			log.info("DESPUES DEL TRANSPORT");
			correoEnviado=true;
		} catch (MessagingException e) {
			log.warning("ERROR mensajeria: " + e);
			e.printStackTrace();
		} catch (Exception e) {
			log.warning(e.getLocalizedMessage() + e.getMessage());
			e.printStackTrace();
		}finally{
			return correoEnviado;
		}
	}


}
