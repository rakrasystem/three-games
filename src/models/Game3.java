package models;

import javax.persistence.EntityManager;

import utils.DBUtil;

public class Game3 {
    private Integer playerP = 1;
    private Integer athenaP = 1;
    private Integer result;
    private String player_hand;
    private String athena_hand;

    public void recordGame3(Game3 gm3, Entrant e){
        EntityManager em = DBUtil.createEntityManager();
        e = em.createNamedQuery("getAllEntrant", Entrant.class)
                .setParameter("name", e.getName())
                .getSingleResult();
        if(result == 1){
            e.setGame3_win(e.getGame3_win() + 1);
            em.getTransaction().begin();
            em.getTransaction().commit();
            em.close();
        }else if(result == 2){
            e.setGame3_lose(e.getGame3_lose() + 1);
            em.getTransaction().begin();
            em.getTransaction().commit();
            em.close();
        }
    }


    public Integer getPlayerP() {
        return playerP;
    }
    public void setPlayerP(Integer playerP) {
        this.playerP = playerP;
    }
    public Integer getAthenaP() {
        return athenaP;
    }
    public void setAthenaP(Integer athenaP) {
        this.athenaP = athenaP;
    }
    public Integer getResult() {
        return result;
    }
    public void setResult(Integer result) {
        this.result = result;
    }
    public String getPlayer_hand() {
        return player_hand;
    }
    public void setPlayer_hand(String player_hand) {
        this.player_hand = player_hand;
    }
    public String getAthena_hand() {
        return athena_hand;
    }
    public void setAthena_hand(String athena_hand) {
        this.athena_hand = athena_hand;
    }


}
