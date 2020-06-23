package com.gamestore.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.gamestore.entity.Game;

@Repository
public interface GameRepository extends JpaRepository<Game, Integer>{

}
