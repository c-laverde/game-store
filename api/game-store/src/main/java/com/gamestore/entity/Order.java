package com.gamestore.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Order {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	private Date date;
	private int total;
	private Date expirationDate;
	
	private int idCustomer;
	
	
	private int idGame;
	
	/*@OneToMany(targetEntity = OrderGames.class, cascade = CascadeType.ALL)
	@JoinColumn(name = "idOrder", referencedColumnName = "id")
	private List<OrderGames> games;*/
	
	public Order() {}
	
	public Order(Date date, int total, Date expirationDate, int idCustomer, int idGame) {
		super();
		this.date = date;
		this.total = total;
		this.expirationDate = expirationDate;
		this.idCustomer = idCustomer;
		this.idGame = idGame;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
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

	public int getIdGame() {
		return idGame;
	}

	public void setIdGame(int idGame) {
		this.idGame = idGame;
	}
	
}
