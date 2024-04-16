package Ulti;

import java.util.Collections;
import java.util.List;

public class Helper {
    public static List Pagination(List list, int page, int size){
        if(list == null || list.size() == 0){
            return Collections.emptyList();
        }
        return list.subList((page - 1) * size, Math.min(page * size, list.size()));
    }
}
