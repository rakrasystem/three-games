package models.validators;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;

import models.Entrant;
import utils.DBUtil;

public class EntrantValidators {
    public static List<String> validate(Entrant e, Boolean name_duplicate_check_flag, Boolean password_check_flag){
        List<String> errors = new ArrayList<String>();



        String name_error = _validateName(e.getName(),name_duplicate_check_flag);
        if(!name_error.equals("")){
            errors.add(name_error);
        }

        String password_error = _validatePassword(e.getPassword(), password_check_flag);

        if(!password_error.equals("")){
            errors.add(password_error);
        }
        return errors;
    }

        //名前の必須入力チェック
    private static String _validateName(String name, Boolean name_duplicate_check_flag){
        if(name == null || name.equals("")){
            return "名前を入力してください";
        }

        //すでに登録されている名前との重複チェック
        if(name_duplicate_check_flag){
            EntityManager em = DBUtil.createEntityManager();
            long entrant_count = (long)em.createNamedQuery("checkRegisteredName",Long.class).setParameter("name",name).getSingleResult();

            em.close();

            if(entrant_count > 0){
                return "入力された名前はすでに使用されています";
            }
        }
        return "";
    }

    /*/名前の必須入力チェック
    private static String _validateName(String name){
        if(name == null || name.equals("")){
            return "名前を入力してください";
        }
        return "";
    }*/

    private static String _validatePassword(String password, Boolean password_check_flag){
        //パスワードを変更する場合のみ実行
        if(password_check_flag && (password == null || password.equals(""))){
            return "パスワードを入力してください";
        }
        return "";
    }
}
