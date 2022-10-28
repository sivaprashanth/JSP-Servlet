package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Pojobillpay 
{
	private String uid2;
	private String vt2;
	private String vn2;
	private float arrears2;
	private float amt2;
	private float total_amt2;
	private float amtgiv2;
	private float bal2;
    private String ct2;
	private String pd2;
	public float getArrears2() {
		return arrears2;
	}
	public void setArrears2(float arrears2) {
		this.arrears2 = arrears2;
	}
	public float getTotal_amt2() {
		return total_amt2;
	}
	public void setTotal_amt2(float total_amt2) {
		this.total_amt2 = total_amt2;
	}
	public float getAmtgiv2() {
		return amtgiv2;
	}
	public void setAmtgiv2(float amtgiv2) {
		this.amtgiv2 = amtgiv2;
	}
	public String getUid2() {
		return uid2;
	}
	public void setUid2(String uid2) {
		this.uid2 = uid2;
	}
	public String getVt2() {
		return vt2;
	}
	public void setVt2(String vt2) {
		this.vt2 = vt2;
	}
	public String getVn2() {
		return vn2;
	}
	public void setVn2(String vn2) {
		this.vn2 = vn2;
	}
	public float getBal2() {
		return bal2;
	}
	public void setBal2(float bal2) {
		this.bal2 = bal2;
	}
	public float getAmt2() {
		return amt2;
	}
	public void setAmt2(float amt2) {
		this.amt2 = amt2;
	}
	public String getCt2() {
		return ct2;
	}
	public void setCt2(String ct2) {
		this.ct2 = ct2;
	}
	public String getPd2() {
		return pd2;
	}
	public void setPd2(String pd2) {
		this.pd2 = pd2;
	}
	Connection co=null;
	public Pojobillpay() throws ClassNotFoundException, SQLException
	{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	co=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","password-1");
	}
	@SuppressWarnings("finally")
	public float calculation() throws SQLException
	{
		float rem=0;
		float a=getAmt2();
		float b=getAmtgiv2();
		float c=getBal2();
		rem=c+a-b;
		try
    	{
    	
    		if(co!=null)
    		{
    		System.out.println("connection open");
    		}
    		String m1="insert into bp3 values(?,?,?,?,?,?,?,?,?,?)";
    		PreparedStatement s=co.prepareStatement(m1);
    		s.setString(1, getUid2());
    		s.setString(2, getVt2());
    		s.setString(3, getVn2());
    		s.setFloat(4, getArrears2());
    		s.setFloat(5, getAmt2());
    		s.setFloat(6, getTotal_amt2());
    		s.setFloat(7, getAmtgiv2());
    		s.setFloat(8, rem);
    		s.setString(9, getCt2());
    		s.setString(10, getPd2());
    		s.executeUpdate();
    		String m11="update custom3 set bal2=? where uid2='"+uid2+"'";
    		PreparedStatement s1=co.prepareStatement(m11);
    		s1.setFloat(1,rem);
			s1.executeUpdate();
			
    	}
    	catch(Exception e)
    	{
    		System.out.println(e);
    	}
		finally
		{
			co.close();
			System.out.println("connection closed");
			return rem;
		}
		
	}
}
