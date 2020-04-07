package models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

@Entity
@Table(name = "entrant")

@NamedQueries({
    @NamedQuery(
            name = "checkLoginNameAndPassword",
            query = "SELECT e FROM Entrant AS e WHERE e.name = :name AND e.password = :password"
            ),
    @NamedQuery(
            name = "getAllEntrant",
            query = "SELECT e FROM Entrant AS e WHERE e.name = :name"
            ),
    @NamedQuery(
            name = "checkRegisteredName",
            query = "SELECT COUNT(e) FROM Entrant AS e WHERE e.name = :name"
            ),
})

public class Entrant {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "name", nullable = false, unique = true)
    private String name;

    @Column(name = "password", length = 64, nullable = false)
    private String password;

    @Column(name = "game1_win")
    private Integer game1_win = 0;

    @Column(name = "game1_lose")
    private Integer game1_lose = 0;

    @Column(name = "game2_win")
    private Integer game2_win = 0;

    @Column(name = "game2_lose")
    private Integer game2_lose = 0;

    @Column(name = "game3_win")
    private Integer game3_win = 0;

    @Column(name = "game3_lose")
    private Integer game3_lose = 0;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getGame1_win() {
        return game1_win;
    }

    public void setGame1_win(Integer game1_win) {
        this.game1_win = game1_win;
    }

    public Integer getGame1_lose() {
        return game1_lose;
    }

    public void setGame1_lose(Integer game1_lose) {
        this.game1_lose = game1_lose;
    }

    public Integer getGame2_win() {
        return game2_win;
    }

    public void setGame2_win(Integer game2_win) {
        this.game2_win = game2_win;
    }

    public Integer getGame2_lose() {
        return game2_lose;
    }

    public void setGame2_lose(Integer game2_lose) {
        this.game2_lose = game2_lose;
    }

    public Integer getGame3_win() {
        return game3_win;
    }

    public void setGame3_win(Integer game3_win) {
        this.game3_win = game3_win;
    }

    public Integer getGame3_lose() {
        return game3_lose;
    }

    public void setGame3_lose(Integer game3_lose) {
        this.game3_lose = game3_lose;
    }

}
