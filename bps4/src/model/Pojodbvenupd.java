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

public class Pojodbvenupd
{
	private String venname2;
	private String ventype2;
	private String add2;
	private String contact2;
	private String email2;
	private String country2;
	private String state2;
	private String web2;
	private String cid2;
	private String cvd2;
	private String ec2;
	private String cc2;
	private String yoe2;
	private String vid2;
	
	public String getVid2() {
		return vid2;
	}
	public void setVid2(String vid2) {
		this.vid2 = vid2;
	}
	public String getVenname2() {
		return venname2;
	}
	public void setVenname2(String venname2) {
		this.venname2 = venname2;
	}
	public String getVentype2() {
		return ventype2;
	}
	public void setVentype2(String ventype2) {
		this.ventype2 = ventype2;
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
	public String getWeb2() {
		return web2;
	}
	public void setWeb2(String web2) {
		this.web2 = web2;
	}
	public String getCid2() {
		return cid2;
	}
	public void setCid2(String cid2) {
		this.cid2 = cid2;
	}
	public String getCvd2() {
		return cvd2;
	}
	public void setCvd2(String cvd2) {
		this.cvd2 = cvd2;
	}
	public String getEc2() {
		return ec2;
	}
	public void setEc2(String ec2) {
		this.ec2 = ec2;
	}
	public String getCc2() {
		return cc2;
	}
	public void setCc2(String cc2) {
		this.cc2 = cc2;
	}
	public String getYoe2() {
		return yoe2;
	}
	public void setYoe2(String yoe2) {
		this.yoe2 = yoe2;
	}
	Connection co=null;
	public Pojodbvenupd() throws ClassNotFoundException, SQLException
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
    		String m1="update vend3 set vid2=?,venname2=?,ventype2=?,add2=?,contact2=?,email2=?,country2=?,state2=?,webadd2=?,ec2=?,cc2=?,yoe2=? where vid2='"+getVid2()+"'";
    		PreparedStatement s=co.prepareStatement(m1);//for retrieving the queries
    		s.setString(1, getVid2());
    		s.setString(2, getVenname2());
    		s.setString(3, getVentype2());
    		s.setString(4, getAdd2());
    		s.setLong(5, Long.parseLong(getContact2()));
    		s.setString(6, getEmail2());
    		s.setString(7, getCountry2());
    		s.setString(8, getState2());
    		s.setString(9, getWeb2());
    		s.setInt(10, Integer.parseInt(getEc2()));
    		s.setInt(11, Integer.parseInt(getCc2()));
    		s.setInt(12, Integer.parseInt(getYoe2()));
    		s.executeUpdate();
    	}
    	catch(Exception e)
    	{
    		l.add(e);
    	}
    	finally
    	{
    		co.close();
    		System.out.println("connection closed");
    	}
    	return l;
	}
    
}

