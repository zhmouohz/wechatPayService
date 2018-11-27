//package com.yada.wechatPayService.query;
//
//import org.springframework.data.jpa.domain.Specification;
//
//import javax.persistence.criteria.CriteriaBuilder;
//import javax.persistence.criteria.CriteriaQuery;
//import javax.persistence.criteria.Predicate;
//import javax.persistence.criteria.Root;
//import java.util.LinkedList;
//import java.util.List;
//
///*
// * author : zhoumiao
// *
// * create : {Date}
// */public class BrandQuery implements Specification<Brand> {
//    private String brdNme;
//    private String nme;
//
//    public String getNme() {
//        return nme;
//    }
//
//    public void setNme(String nme) {
//        this.nme = nme;
//    }
//
//    public String getBrdNme() {
//        return brdNme;
//    }
//
//    public void setBrdNme(String brdNme) {
//        this.brdNme = brdNme;
//    }
//
//    @Override
//    public Predicate toPredicate(Root<Brand> root, CriteriaQuery<?> criteriaQuery, CriteriaBuilder cb) {
//        List<Predicate> list = new LinkedList<>();
//        if (brdNme != null && !brdNme.isEmpty()) {
//            list.add(cb.equal(root.get("brdNme").as(String.class), brdNme));
//        }
//        if (nme != null && !nme.isEmpty()) {
//            list.add(cb.equal(root.get("nme").as(String.class), nme));
//        }
//        if (list.size() > 0) {
//            criteriaQuery.where(list.toArray(new Predicate[list.size()]));
//        }
//        return criteriaQuery.getRestriction();
//    }
//}
