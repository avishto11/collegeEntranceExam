package com.careeranalysis.properties;





import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class MailSender {

	private String _toMailId;
	private String _fromMailId;
	private String _fromMailPassword;
	
	private String _msgBody;
	private String _msgSubject;
	
	private Properties _props = null;
	private Session _session = null;
	
	public MailSender(String to,String fromId, String fromPass,String body, String subject)
	{
		this._toMailId = to;
		this._fromMailId = fromId;
		this._fromMailPassword = fromPass;
		this._msgBody = body;
		this._msgSubject = subject;
		prepareMail();
	}
	
	private void prepareMail()
	{
		_props = new Properties();
		_props.put("mail.smtp.host", "smtp.gmail.com");
		_props.put("mail.smtp.socketFactory.port", "465");
		_props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		_props.put("mail.smtp.auth", "true");
		_props.put("mail.smtp.port", "465");
		_session = Session.getDefaultInstance(_props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(_fromMailId, _fromMailPassword);
			}
		});
	}
	
	@SuppressWarnings("finally")
	public boolean send()
	{
		boolean status = false;
		try
		{
			MimeMessage message = new MimeMessage(_session);
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(_toMailId));
			message.setSubject(_msgSubject);
			message.setContent(_msgBody,"text/html");
			Transport.send(message);
            System.out.println("LOG:: Mail has been sent from "+ _fromMailId+" to "+_toMailId );
            status = true;
            
		}
		catch(Exception e )
		{
			e.printStackTrace();
		}
		finally {
			return status;
		}
	}
}
