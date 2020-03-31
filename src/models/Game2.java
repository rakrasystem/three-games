package models;

import javax.persistence.EntityManager;

import utils.DBUtil;

public class Game2 {
    private Integer playerUnit = 2;
    private Integer playerCall;
    private Integer playerHand;
    private Integer cpuUnit = 2;
    private Integer cpuCall;
    private Integer cpuHand;
    private Integer turn;     //0 = 自分ターン 1 = 相手ターン

    public void recordGame2(Game2 sm, Entrant e){
        EntityManager em = DBUtil.createEntityManager();
        e = em.createNamedQuery("getAllEntrant", Entrant.class)
                .setParameter("name", e.getName())
                .getSingleResult();
        if(sm.getPlayerUnit() == 0){
            Integer win = e.getGame2_win() + 1;
            e.setGame2_win(win);
            em.getTransaction().begin();
            em.getTransaction().commit();
            em.close();
        }else if(sm.getCpuUnit() == 0){
            Integer lose = e.getGame2_lose() + 1;
            e.setGame2_lose(lose);
            em.getTransaction().begin();
            em.getTransaction().commit();
            em.close();
        }
    }


    public Integer getPlayerUnit() {
        return playerUnit;
    }

    public void setPlayerUnit(Integer playerUnit) {
        this.playerUnit = playerUnit;
    }

    public Integer getPlayerCall() {
        return playerCall;
    }

    public void setPlayerCall(Integer playerCall) {
        this.playerCall = playerCall;
    }

    public Integer getPlayerHand() {
        return playerHand;
    }

    public void setPlayerHand(Integer playerHand) {
        this.playerHand = playerHand;
    }

    public Integer getCpuUnit() {
        return cpuUnit;
    }

    public void setCpuUnit(Integer cpuUnit) {
        this.cpuUnit = cpuUnit;
    }

    public Integer getCpuCall() {
        return cpuCall;
    }

    public void setCpuCall(Integer cpuCall) {
        this.cpuCall = cpuCall;
    }

    public Integer getCpuHand() {
        return cpuHand;
    }

    public void setCpuHand(Integer cpuHand) {
        this.cpuHand = cpuHand;
    }

    public Integer getTurn() {
        return turn;
    }

    public void setTurn(Integer turn) {
        this.turn = turn;
    }

}
