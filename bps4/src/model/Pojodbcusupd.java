package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;
import java.util.StringTokenizer;

import javax.servlet.RequestDispatcher;

import controller.Validatorcusupd;

public class Pojodbcusupd 
{
	private String fname2;
	private String lname2;
	private String dob2;
	private String add2;
	private String contact2;
	private String email2;
	private String gender2;
	private String country2;
	private String state2;
	private String cardno2;
	private String cvvno2;
	private String cardvalid2;
	private String vendor2;
	private String bal2;
	private String uid2;

	private String iden2;
	private String voter2;
	private String pan2;
	private String pass2;
	private String passid2;
	private String passed2;
	private String aadhar2;
	public String getIden2() {
		return iden2;
	}
	public void setIden2(String iden2) {
		this.iden2 = iden2;
	}
	public String getVoter2() {
		return voter2;
	}
	public void setVoter2(String voter2) {
		this.voter2 = voter2;
	}
	public String getPan2() {
		return pan2;
	}
	public void setPan2(String pan2) {
		this.pan2 = pan2;
	}
	public String getPass2() {
		return pass2;
	}
	public void setPass2(String pass2) {
		this.pass2 = pass2;
	}
	public String getPassid2() {
		return passid2;
	}
	public void setPassid2(String passid2) {
		this.passid2 = passid2;
	}
	public String getPassed2() {
		return passed2;
	}
	public void setPassed2(String passed2) {
		this.passed2 = passed2;
	}
	public String getAadhar2() {
		return aadhar2;
	}
	public void setAadhar2(String aadhar2) {
		this.aadhar2 = aadhar2;
	}
	public String getUid2() {
		return uid2;
	}
	public void setUid2(String uid2) {
		this.uid2 = uid2;
	}
	public String getFname2() {
		return fname2;
	}
	public void setFname2(String fname2) {
		this.fname2 = fname2;
	}
	public String getLname2() {
		return lname2;
	}
	public void setLname2(String lname2) {
		this.lname2 = lname2;
	}
	public String getDob2() {
		return dob2;
	}
	public void setDob2(String dob2) {
		this.dob2 = dob2;
	}
	public String getAdd2() {
		return add2;
	}
	public void setAdd2(String add2) {
		this.add2 = add2;
	}
	public String getContact2() {
		return contact2;
	}
	public void setContact2(String contact2) {
		this.contact2 = contact2;
	}
	public String getEmail2() {
		return email2;
	}
	public void setEmail2(String email2) {
		this.email2 = email2;
	}
	public String getGender2() {
		return gender2;
	}
	public void setGender2(String gender2) {
		this.gender2 = gender2;
	}
	public String getCountry2() {
		return country2;
	}
	public void setCountry2(String country2) {
		this.country2 = country2;
	}
	public String getState2() {
		return state2;
	}
	public void setState2(String state2) {
		this.state2 = state2;
	}
	public String getCardno2() {
		return cardno2;
	}
	public void setCardno2(String cardno2) {
		this.cardno2 = cardno2;
	}
	public String getCvvno2() {
		return cvvno2;
	}
	public void setCvvno2(String cvvno2) {
		this.cvvno2 = cvvno2;
	}
	public String getCardvalid2() {
		return cardvalid2;
	}
	public void setCardvalid2(String cardvalid2) {
		this.cardvalid2 = cardvalid2;
	}
	public String getVendor2() {
		return vendor2;
	}
	public void setVendor2(String vendor2) {
		this.vendor2 = vendor2;
	}
	public String getBal2() {
		return bal2;
	}
	public void setBal2(String bal2) {
		this.bal2 = bal2;
	}
	Connection co=null;
	public Pojodbcusupd() throws ClassNotFoundException, SQLException
	{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	co=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","password-1");
	}
	List l=new LinkedList();
    public List updateValues() throws SQLException
	{
    	
    	try
    	{
    	
    		if(co!=null)
    		{
    		System.out.println("connection open");
    		}
    		//"insert into custom1 values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
    		String m1="update custom3 set uid2=?,fname2=?,lname2=?,dob2=?,add2=?,contact2=?,email2=?,gender2=?,country2=?,state2=?,cardno2=?,cvvno2 =?,cardvalid2=?,vendor2=?,bal2=?,identifi=?,voter=?,pancard=?,passport=?,passportid=?,passported=?,aadhar=? where uid2='"+getUid2()+"'";
    		PreparedStatement s=co.prepareStatement(m1);
    		s.setString(1, getUid2());
    		s.setString(2, getFname2());
    		s.setString(3, getLname2());
    		s.setString(4, getDob2());
    		s.setString(5, getAdd2());
    		s.setLong(6, Long.parseLong(getContact2()));
    		s.setString(7, getEmail2());
    		s.setString(8, getGender2());
    		s.setString(9, getCountry2());
    		s.setString(10, getState2());
    		s.setLong(11, Long.parseLong(getCardno2()));
    		s.setInt(12, Integer.parseInt(getCvvno2()));
    		s.setString(13, getCardvalid2());
    		s.setString(14, getVendor2());
    		s.setInt(15, Integer.parseInt(getBal2()));
    		s.setString(16, getIden2());
    		s.setString(17, getVoter2());
    		s.setString(18, getPan2());
    		s.setString(19, getPass2());
    		s.setString(20, getPassid2());
    		s.setString(21, getPassed2());
    		s.setString(22, getAadhar2());
    		s.executeUpdate();
    	}
    	catch(Exception ee)
    	{
    		l.add(ee);
    	}
    	finally
    	{
    		co.close();
    		System.out.println("connection closed");
    	}
    	return l;
	}
    
}

