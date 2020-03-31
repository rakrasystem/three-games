package models;

import javax.persistence.EntityManager;

import utils.DBUtil;

public class Game1 {
    private Integer count = 0;
    private Integer melissaCount = 0;
    private String player;
    private String melissa;

    //データベースに戦績を登録するメソッド
    public void recordGame1(Game1 gm1, Entrant e){
        EntityManager em = DBUtil.createEntityManager();
        e = em.createNamedQuery("getAllEntrant", Entrant.class)
                .setParameter("name", e.getName())
                .getSingleResult();
        if(gm1.getCount() == 2){
            Integer win = e.getGame1_win() + 1;
            e.setGame1_win(win);
            em.getTransaction().begin();
            em.getTransaction().commit();
            em.close();
        }else if (gm1.getMelissaCount() == 2){
            Integer lose = e.getGame1_lose() + 1;
            e.setGame1_lose(lose);
            em.getTransaction().begin();
            em.getTransaction().commit();
            em.close();
        }
    }

    //以下、ゲッターとセッター
    public Integer getCount() {
        return count;
    }
    public void setCount(Integer count) {
        this.count = count;
    }
    public Integer getMelissaCount() {
        return melissaCount;
    }
    public void setMelissaCount(Integer melissaCount) {
        this.melissaCount = melissaCount;
    }

    public String getPlayer() {
        return player;
    }
    public void setPlayer(String player) {
        this.player = player;
    }
    public String getMelissa() {
        return melissa;
    }
    public void setMelissa(String melissa) {
        this.melissa = melissa;
    }

}
