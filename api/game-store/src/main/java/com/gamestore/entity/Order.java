package com.gamestore.entity;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

@Entity
public class Order {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private Date date;
	private int total;
	private Date expirationDate;
	private int idCustomer;
	
	@OneToMany(targetEntity = OrderGames.class, cascade = CascadeType.ALL)
	@JoinColumn(name = "idOrder", referencedColumnName = "id")
	private List<OrderGames> games;
	
	public Order() {}
	
	public Order(Date date, int total, Date expirationDate, int idCustomer) {
		super();
		this.date = date;
		this.total = total;
		this.expirationDate = expirationDate;
		this.idCustomer = idCustomer;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public Date getExpirationDate() {
		return expirationDate;
	}

	public void setExpirationDate(Date expirationDate) {
		this.expirationDate = expirationDate;
	}

	public int getIdCustomer() {
		return idCustomer;
	}

	public void setIdCustomer(int idCustomer) {
		this.idCustomer = idCustomer;
	}
	
}
