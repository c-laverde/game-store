package com.gamestore.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.gamestore.entity.OrderGames;

@Repository
public interface OrderGamesRepository extends JpaRepository<OrderGames, Integer>{

}
