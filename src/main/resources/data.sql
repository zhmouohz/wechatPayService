-- 清空数据
delete from t_p_shiro_user_grp_role;
delete from t_p_shiro_user;
delete from t_p_shiro_user_grp;
update t_b_org set p_org_id=NULL where 1=1;
delete from t_b_org;
delete from t_p_role_permit;
delete from t_p_shiro_role;
delete from t_p_shiro_permit;
update t_p_shiro_res set p_menu_res_id=NULL where 1=1;
delete from t_p_shiro_res;
delete from t_p_shiro_action;
delete from t_p_shiro_res_type;
delete from t_p_s_dict_item;
delete from t_p_s_dict_list;
-- 资源类型初始化数据
insert into t_p_shiro_res_type (type_id, type_name, remark) values (1, 'menu', '菜单资源');
insert into t_p_shiro_res_type (type_id, type_name, remark) values (2, 'url', 'URL资源');

-- 操作类型初始化数据
insert into t_p_shiro_action (action_id, action_name, action_order, action_value, res_type_type_id) values (1, '不可见', 1, '0', 1);
insert into t_p_shiro_action (action_id, action_name, action_order, action_value, res_type_type_id) values (2, '可见', 2, '1', 1);
insert into t_p_shiro_action (action_id, action_name, action_order, action_value, res_type_type_id) values (3, '不可操作', 1, '0', 2);
insert into t_p_shiro_action (action_id, action_name, action_order, action_value, res_type_type_id) values (4, '可操作', 2, '1', 2);

-- 角色初始化数据
insert into t_p_shiro_role (role_id, dsc, role_name) values (1, '管理员角色', 'admin');

-- 权限管理菜单初始化数据（预留20个）
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id, icon) values (1, '权限管理', 1, null, null, 0, 'fa fa-home');
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1, 1, 1, 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (2, 2, 1, 1);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 1);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 2);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (2, '资源管理', 1, 1, '/res/list', 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (3, 1, 2, 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (4, 2, 2, 1);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 3);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 4);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (3, '角色管理', 1, 1, '/role/list', 2);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (5, 1, 3, 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (6, 2, 3, 1);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 5);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 6);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (4, '机构管理', 1, 1, '/org/list', 3);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (7, 1, 4, 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (8, 2, 4, 1);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 7);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 8);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (5, '分组管理', 1, 1, '/userGrp/list', 4);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (9, 1, 5, 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (10, 2, 5, 1);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 9);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 10);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (6, '用户管理', 1, 1, '/user/list', 5);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (11, 1, 6, 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (12, 2, 6, 1);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 11);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 12);
--商户管理
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (100, '商户管理', 1, null, null, 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (100, 1, 100, 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (101, 2, 100, 1);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 100);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 101);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (101, '商户基本信息管理', 2, 100, '/merchant/list', 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (102, 1, 101, 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (103, 2, 101, 1);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 102);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 103);

insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (102, '商户附加资料', 2, 100, '/merext/list', 3);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (104, 1, 102, 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (105, 2, 102, 1);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 104);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 105);

insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (103, '终端信息管理', 2, 100, '/terminal/list', 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (106, 1, 103, 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (107, 2, 103, 1);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 106);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 107);

insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (104, '商户风险信息管理', 2, 100, '/merchantrisk/list', 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (108, 1, 104, 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (109, 2, 104, 1);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 108);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 109);

insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (105, '档案管理', 2, 100, '', 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (110, 1, 105, 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (111, 2, 105, 1);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 110);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 111);

insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (106, '睡眠商户管理', 2, 100, '/merchantsleep/list', 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (112, 1, 106, 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (113, 2, 106, 1);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 112);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 113);

--设备管理
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (200, '设备管理', 1, null, null, 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (200, 1, 200, 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (201, 2, 200, 1);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 200);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 201);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (201, '撤机入库申请', 2, 200, '/merchant/list', 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (202, 1, 201, 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (203, 2, 201, 1);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 202);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 203);

insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (202, '故障入库申请', 2, 200, '', 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (204, 1, 202, 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (205, 2, 202, 1);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 204);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 205);

insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (203, '返修入库申请', 2, 200, '', 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (206, 1, 203, 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (207, 2, 203, 1);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 206);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 207);

insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (204, '报废入库申请', 2, 200, '', 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (208, 1, 204, 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (209, 2, 204, 1);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 208);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 209);

insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (205, '换装入库申请', 2, 200, '', 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (210, 1, 205, 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (211, 2, 205, 1);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 210);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 211);

insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (206, '调拨入库申请', 2, 200, '', 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (212, 1, 206, 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (213, 2, 206, 1);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 212);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 213);




insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (207, '送修出库申请', 2, 200, '/mcc/list', 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (214,3,207,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,214);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (215,4,207,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,215);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (208, '报废出库申请', 2, 200, '/channel/list', 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (216,3,208,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,216);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (217,4,208,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,217);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (209, '新装出库申请', 2, 200, '/risk/list', 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (218,3,209,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,218);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (219,4,209,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,219);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (210, '换装出库申请', 2, 200, '/mertype/list', 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (220,3,210,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,220);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (221,4,210,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,221);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (211, '出入库申请管理', 2, 200, '/terminaltype/list', 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (222,3,211,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,222);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (223,4,211,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,223);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (212, '设备出入库复核', 2, 200, '/merchanteta/list', 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (224,3,212,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,224);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (225,4,212,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,225);

insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (213, '设备流转记录查询', 2, 200, '/merchanteta/list', 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (226,3,213,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,226);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (227,4,213,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,227);


insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (214, '设备信息维护', 2, 200, '/device/list_review', 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (228,3,214,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,228);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (229,4,214,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,229);


insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (215, '设备信息维护复核', 2, 200, '/merchanteta/list', 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (230,3,215,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,230);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (231,4,215,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,231);

insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (216, '新装入库申请', 2, 200, '/merchanteta/list', 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (232,3,216,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,232);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (233,4,216,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,233);

-------------系统参数管理
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (300, '系统参数管理', 1, null, null, 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (300,3,300,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,300);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (301,4,300,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,301);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (301, '设备名称管理', 2, 300, '', 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (302,3,301,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,302);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (303,4,301,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,303);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (302, '设备品牌管理', 2, 300, '/Brand/list', 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (304,3,302,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,304);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (305,4,302,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,305);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (303, '设备型号管理', 2, 300, '/model/list', 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (306,3,303,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,306);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (307,4,303,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,307);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (304, '服务商信息', 2, 300, '/serviceprovider/list', 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (308,3,304,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,308);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (309,4,304,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,309);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (305, '设备预留', 2, 300, '', 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (310,3,305,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,310);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (311,4,305,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,311);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (306, '商户级别类型管理', 2, 300, '/range/list', 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (312,3,306,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,312);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (313,4,306,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,313);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (307, 'MCC码管理', 2, 300, '/mcc/list', 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (314,3,307,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,314);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (315,4,307,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,315);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (308, '商户风险渠道管理', 2, 300, '/channel/list', 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (316,3,308,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,316);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (317,4,308,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,317);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (309, '商户风险类型管理', 2, 300, '/risk/list', 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (318,3,309,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,318);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (319,4,309,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,319);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (310, '商户类型管理', 2, 300, '/mertype/list', 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (320,3,310,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,320);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (321,4,310,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,321);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (311, '终端类型管理', 2, 300, '/terminaltype/list', 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (322,3,311,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,322);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (323,4,311,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,323);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (312, '商户附加信息管理', 2, 300, '/merchanteta/list', 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (324,3,312,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,324);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (325,4,312,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,325);

--POS程序版本管理
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (400, 'Pos程序版本管理', 1, null, null, 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (400, 1, 400, 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (401, 2, 400, 1);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 400);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 401);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (401, '程序上传', 2, 400, '/merchant/list', 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (402, 1, 401, 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (403, 2, 401, 1);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 402);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 403);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (402, '程序操作记录', 2, 400, '/merchant/list', 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (404, 1, 402, 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (405, 2, 402, 1);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 404);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 405);

--商户服务管理
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (600, '商户服务管理', 1, null, null, 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (600, 1, 600, 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (601, 2, 600, 1);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 600);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 601);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (601, '商户服务定价管理', 2, 600, '/merchant/list', 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (602, 1, 601, 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (603, 2, 601, 1);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 602);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 603);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (602, '商户巡检要求管理', 2, 600, '/merchant/list', 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (604, 1, 602, 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (605, 2, 602, 1);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 604);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 605);

--工单管理
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (700, '工单管理', 1, null, null, 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (700, 1, 700, 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (701, 2, 700, 1);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 700);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 701);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (701, '装机工单管理', 2, 700, '/workinfo/list', 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (702, 1, 701, 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (703, 2, 701, 1);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 702);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 703);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (702, '工单派发管理', 2, 700, '/merchant/list', 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (704, 1, 702, 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (705, 2, 702, 1);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 704);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 705);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (703, '普通巡检管理', 2, 700, '/merchant/list', 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (706, 1, 703, 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (707, 2, 703, 1);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 706);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 707);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (704, '风险睡眠巡检', 2, 700, '/merchant/list', 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (708, 1, 704, 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (709, 2, 704, 1);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 708);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 709);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (705, '工作单回执', 2, 700, '/merchant/list', 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (710, 1, 705, 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (711, 2, 705, 1);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 710);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 711);


--查询统计管理
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (800, '查询统计管理', 1, null, null, 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (800, 1, 800, 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (801, 2, 800, 1);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 800);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 801);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (801, '商户服务费用查询', 2, 800, '/merchant/list', 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (802, 1, 801, 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (803, 2, 801, 1);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 802);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 803);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (802, '商户巡检汇总报表', 2, 800, '/merchant/list', 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (804, 1, 802, 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (805, 2, 802, 1);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 804);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 805);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (803, '商户查询明细报表', 2, 800, '/merchant/list', 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (806, 1, 803, 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (807, 2, 803, 1);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 806);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 807);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (804, '设备明细查询', 2, 800, '/merchant/list', 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (808, 1, 804, 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (809, 2, 804, 1);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 808);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 809);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (805, '设备汇总查询', 2, 800, '/merchant/list', 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (810, 1, 805, 1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (811, 2, 805, 1);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 810);
insert into t_p_role_permit (role_id, permit_id) VALUES (1, 811);


-- url初始化数据
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (500,'业务模式权限',2,null,null,1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1000,3,500,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1000);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1001,4,500,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1001);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (501,'业务模式创建权限',2,500,'/busModel/create',1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1002,3,501,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1002);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1003,4,501,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1003);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (502,'业务模式删除权限',2,500,'/busModel/delete',2);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1004,3,502,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1004);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1005,4,502,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1005);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (503,'业务模式列表权限',2,500,'/busModel/list',3);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1006,3,503,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1006);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1007,4,503,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1007);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (504,'业务模式修改权限',2,500,'/busModel/update',4);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1008,3,504,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1008);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1009,4,504,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1009);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (505,'商户经营类目权限',2,null,null,2);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1010,3,505,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1010);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1011,4,505,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1011);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (506,'商户经营类目创建权限',2,505,'/category/create',1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1012,3,506,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1012);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1013,4,506,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1013);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (507,'商户经营类目删除权限',2,505,'/category/delete',2);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1014,3,507,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1014);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1015,4,507,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1015);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (508,'商户经营类目列表权限',2,505,'/category/list',3);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1016,3,508,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1016);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1017,4,508,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1017);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (509,'商户经营类目修改权限',2,505,'/category/update',4);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1018,3,509,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1018);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1019,4,509,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1019);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (510,'initRes',2,null,null,3);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1020,3,510,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1020);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1021,4,510,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1021);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (511,'/initRes/getAllUrl',2,510,'/initRes/getAllUrl',1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1022,3,511,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1022);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1023,4,511,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1023);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (512,'商户柜员权限',2,null,null,4);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1024,3,512,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1024);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1025,4,512,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1025);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (515,'商户柜员创建权限',2,512,'/merOper/create',3);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1030,3,515,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1030);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1031,4,515,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1031);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (516,'商户柜员删除权限',2,512,'/merOper/delete',4);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1032,3,516,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1032);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1033,4,516,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1033);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (517,'商户柜员列表权限',2,512,'/merOper/list',5);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1034,3,517,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1034);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1035,4,517,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1035);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (518,'商户柜员重置密码权限',2,512,'/merOper/reset',6);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1036,3,518,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1036);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1037,4,518,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1037);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (519,'商户柜员修改权限',2,512,'/merOper/update',7);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1038,3,519,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1038);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1039,4,519,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1039);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (520,'商户类别权限',2,null,null,5);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1040,3,520,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1040);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1041,4,520,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1041);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (521,'商户类别创建权限',2,520,'/merType/create',1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1042,3,521,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1042);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1043,4,521,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1043);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (522,'商户类别删除权限',2,520,'/merType/delete',2);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1044,3,522,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1044);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1045,4,522,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1045);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (523,'商户类别列表权限',2,520,'/merType/list',3);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1046,3,523,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1046);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1047,4,523,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1047);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (524,'商户类别修改权限',2,520,'/merType/update',4);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1048,3,524,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1048);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1049,4,524,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1049);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (525,'商户管理权限',2,null,null,6);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1050,3,525,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1050);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1051,4,525,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1051);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (528,'商户创建权限',2,525,'/merchant/create',3);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1056,3,528,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1056);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1057,4,528,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1057);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (529,'商户删除权限',2,525,'/merchant/delete',4);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1058,3,529,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1058);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1059,4,529,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1059);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (530,'商户支付宝入住权限',2,525,'/merchant/enterAlipay',5);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1060,3,530,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1060);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1061,4,530,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1061);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (531,'商户微信入住权限',2,525,'/merchant/enterWeChat',6);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1062,3,531,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1062);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1063,4,531,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1063);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (532,'商户列表权限',2,525,'/merchant/list',7);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1064,3,532,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1064);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1065,4,532,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1065);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (533,'商户档案审核与入驻权限',2,525,'/merchant/listapproval',8);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1066,3,533,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1066);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1067,4,533,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1067);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (534,'商户建档权限',2,525,'/merchant/listcreate',9);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1068,3,534,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1068);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1069,4,534,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1069);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (535,'商户信息管理权限',2,525,'/merchant/listmanagement',10);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1070,3,535,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1070);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1071,4,535,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1071);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (536,'商户修改权限',2,525,'/merchant/update',11);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1072,3,536,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1072);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1073,4,536,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1073);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (537,'商户审核权限',2,525,'/merchant/updateState',12);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1074,3,537,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1074);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1075,4,537,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1075);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (538,'查看商户权限',2,525,'/merchant/view',13);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1076,3,538,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1076);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1077,4,538,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1077);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (539,'交易管理权限',2,null,null,7);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1078,3,539,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1078);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1079,4,539,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1079);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (540,'交易列表权限',2,539,'/orderQuery/list',1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1080,3,540,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1080);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1081,4,540,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1081);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (541,'交易详情权限',2,539,'/orderQuery/show',2);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1082,3,541,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1082);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1083,4,541,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1083);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (542,'机构管理权限',2,null,null,8);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1084,3,542,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1084);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1085,4,542,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1085);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (544,'机构创建权限',2,542,'/org/create',2);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1088,3,544,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1088);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1089,4,544,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1089);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (545,'机构删除权限',2,542,'/org/delete',3);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1090,3,545,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1090);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1091,4,545,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1091);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (546,'机构列表权限',2,542,'/org/list',4);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1092,3,546,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1092);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1093,4,546,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1093);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (547,'机构详情权限',2,542,'/org/show',5);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1094,3,547,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1094);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1095,4,547,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1095);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (548,'机构修改权限',2,542,'/org/update',6);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1096,3,548,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1096);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1097,4,548,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1097);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (549,'支付工具权限',2,null,null,9);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1098,3,549,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1098);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1099,4,549,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1099);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (550,'支付工具创建权限',2,549,'/payTool/create',1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1100,3,550,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1100);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1101,4,550,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1101);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (551,'支付工具删除权限',2,549,'/payTool/delete',2);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1102,3,551,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1102);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1103,4,551,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1103);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (552,'支付工具列表权限',2,549,'/payTool/list',3);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1104,3,552,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1104);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1105,4,552,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1105);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (553,'支付工具修改权限',2,549,'/payTool/update',4);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1106,3,553,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1106);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1107,4,553,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1107);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (554,'二维码管理权限',2,null,null,10);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1108,3,554,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1108);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1109,4,554,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1109);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (555,'二维码批量生成权限',2,554,'/qrCode/batch',1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1110,3,555,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1110);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1111,4,555,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1111);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (556,'二维码关闭权限',2,554,'/qrCode/close',2);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1112,3,556,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1112);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1113,4,556,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1113);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (557,'二维码下载权限',2,554,'/qrCode/download',3);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1114,3,557,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1114);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1115,4,557,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1115);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (558,'查询未使用二维码权限',2,554,'/qrCode/export',4);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1116,3,558,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1116);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1117,4,558,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1117);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (559,'二维码列表权限',2,554,'/qrCode/list',5);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1118,3,559,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1118);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1119,4,559,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1119);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (560,'资源管理权限',2,null,null,11);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1120,3,560,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1120);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1121,4,560,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1121);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (561,'资源创建权限',2,560,'/res/create',1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1122,3,561,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1122);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1123,4,561,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1123);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (562,'资源删除权限',2,560,'/res/delete',2);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1124,3,562,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1124);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1125,4,562,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1125);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (563,'资源列表权限',2,560,'/res/list',3);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1126,3,563,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1126);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1127,4,563,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1127);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (564,'资源排序权限',2,560,'/res/sort',4);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1128,3,564,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1128);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1129,4,564,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1129);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (565,'资源修改权限',2,560,'/res/update',5);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1130,3,565,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1130);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1131,4,565,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1131);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (566,'角色管理权限',2,null,null,12);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1132,3,566,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1132);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1133,4,566,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1133);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (567,'角色创建权限',2,566,'/role/create',1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1134,3,567,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1134);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1135,4,567,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1135);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (568,'角色删除权限',2,566,'/role/delete',2);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1136,3,568,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1136);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1137,4,568,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1137);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (569,'角色列表权限',2,566,'/role/list',3);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1138,3,569,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1138);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1139,4,569,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1139);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (570,'角色赋权权限',2,566,'/role/permit',4);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1140,3,570,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1140);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1141,4,570,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1141);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (571,'角色修改权限',2,566,'/role/update',5);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1142,3,571,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1142);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1143,4,571,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1143);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (572,'用户管理权限',2,null,null,13);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1144,3,572,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1144);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1145,4,572,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1145);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (575,'用户分组权限',2,572,'/user/assignUserGrp',3);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1150,3,575,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1150);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1151,4,575,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1151);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (576,'用户创建权限',2,572,'/user/create',4);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1152,3,576,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1152);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1153,4,576,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1153);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (577,'用户分配机构权限',2,572,'/user/editUserForOrg',5);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1154,3,577,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1154);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1155,4,577,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1155);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (578,'用户列表权限',2,572,'/user/list',6);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1156,3,578,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1156);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1157,4,578,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1157);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (579,'用户开关权限',2,572,'/user/openCloseUser',7);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1158,3,579,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1158);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1159,4,579,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1159);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (580,'用户重置密码权限',2,572,'/user/resetUserPwd',8);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1160,3,580,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1160);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1161,4,580,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1161);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (581,'用户详情权限',2,572,'/user/show',9);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1162,3,581,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1162);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1163,4,581,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1163);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (582,'用户修改密码权限',2,572,'/user/updateUserPwd',10);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1164,3,582,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1164);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1165,4,582,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1165);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (583,'用户分组管理权限',2,null,null,14);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1166,3,583,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1166);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1167,4,583,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1167);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (584,'用户分组创建权限',2,583,'/userGrp/create',1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1168,3,584,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1168);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1169,4,584,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1169);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (585,'用户分组列表权限',2,583,'/userGrp/list',2);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1170,3,585,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1170);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1171,4,585,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1171);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (586,'为分组分配角色权限',2,583,'/userGrp/role',3);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1172,3,586,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1172);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (1173,4,586,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,1173);




insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (10000,'商户风险渠道权限',2,null,null,1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (10000,3,10000,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,10000);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (10001,4,10000,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,10001);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (10001,'商户风险渠道创建权限',2,10000,'/channel/create',1);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (10002,3,10001,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,10002);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (10003,4,10001,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,10003);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (10002,'商户风险渠道删除权限',2,10000,'/channel/delete',2);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (10004,3,10002,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,10004);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (10005,4,10002,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,10005);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (10003,'商户风险渠道列表权限',2,10000,'/channel/list',3);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (10006,3,10003,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,10006);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (10007,4,10003,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,10007);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (10004,'商户风险渠道修改保存权限',2,10000,'/channel/update',4);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (10008,3,10004,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,10008);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (10009,4,10004,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,10009);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (10005,'商户风险渠道创建保存权限',2,10000,'/channel/save',5);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (10010,3,10005,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,10010);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (10011,4,10005,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,10011);
insert into t_p_shiro_res (menu_res_id, menu_name, res_type_type_id, p_menu_res_id, action_name, order_id) values (10006,'商户风险渠道修改权限',2,10000,'/channel/edit',6);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (10012,3,10006,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,10012);
insert into t_p_shiro_permit (permit_id, action_id, res_id, type_id) values (10013,4,10006,2);
insert into t_p_role_permit (role_id, permit_id) VALUES (1,10013);

INSERT INTO t_p_s_dict_list ( dicttype, dicttypename, dictflag, dicttable_sql, dicttable_order )
VALUES ( 'D_IHT_FLAG', '继承标志', '1', NULL, NULL );
INSERT INTO t_p_s_dict_item ( dicttype, dictcode, dictcodename, dictpinyin, dictorder, dictflag, dictcode_parent )
VALUES ( 'D_IHT_FLAG', '0', '可继承', NULL, NULL, NULL, NULL );
INSERT INTO t_p_s_dict_item ( dicttype, dictcode, dictcodename, dictpinyin, dictorder, dictflag, dictcode_parent )
VALUES ( 'D_IHT_FLAG', '1', '不可继承', NULL, NULL, NULL, NULL );


--DICT_ITEM
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_WORK_ISADDRESS', '0', '否', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_WORK_ISADDRESS', '1', '是', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_BUSS_STATE', '0', '申请中', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_BUSS_STATE', '1', '已完成', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_BUSS_STATE', '2', '已驳回', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_WOOK_EVENT', '0', '新装', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_WOOK_EVENT', '1', '换装', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_WOOK_EVENT', '2', '撤机', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_WOOK_EVENT', '3', '普通巡检', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_WOOK_EVENT', '4', '风险商户巡检', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_WOOK_EVENT', '5', '睡眠商户巡检', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_FWS_TYPE', '1', '服务商', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_FWS_TYPE', '2', '厂商', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_TASK_TYPE', '1', '商户培训', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_TASK_TYPE', '2', '定期巡检', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_TASK_TYPE', '3', '大客户回访', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_IHT_STATUS', '1', '可以继承', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_IHT_STATUS', '0', '不可继承', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_ORG_STATE', '0', '停用', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_ORG_STATE', '1', '正常', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_USER_STATUS', '0', '停用', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_USER_STATUS', '1', '启用', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_WEB_USER_GRP_STATE', '1', '关闭', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_STATUS', '0', '开启', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_STATUS', '1', '关闭', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_WEB_USER_GRP_STATE', '0', '开启', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_WEB_USER_STATE', '0', '开启', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_WEB_USER_STATE', '2', '关闭', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_ORG_STATUS', '0', '关闭', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_ORG_STATUS', '1', ' 正常', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_ORG_STATUS', '2', '暂停', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_ORG_STATUS', '3', '未启用', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_USER_STATE', '2', '关闭', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_USER_STATE', '0', '开启', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_MER_STATE', '1', '活动', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_MER_STATE', '0', '关户', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_EXT_AUDIT', '0', '未审核', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_EXT_AUDIT', '1', '审核驳回', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_EXT_AUDIT', '2', '审核通过', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_TERMINAL_OPERATION', '1', '启动', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_TERMINAL_OPERATION', '0', '停用', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_FLOW_STATE', '0', '出库', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_FLOW_STATE', '1', '入库', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_FLOW_STATE', '2', '修改', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_DEV_LCZT', '01', '新机入库', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_DEV_LCZT', '02', '撤机入库', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_DEV_LCZT', '03', '换装入库', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_DEV_LCZT', '04', '故障入库', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_DEV_LCZT', '05', '返修入库', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_DEV_LCZT', '06', '报废入库', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_DEV_LCZT', '07', '调拨入库', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_DEV_LCZT', '08', '新装出库', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_DEV_LCZT', '09', '换装出库', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_DEV_LCZT', '10', '送修出库', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_DEV_LCZT', '11', '报废出库', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_DEV_LCZT', '12', '调拨出库', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_WOOK_DOWN_STATUS', '0', '未下载', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_WOOK_DOWN_STATUS', '1', '已下载', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_CODE_TYPE', '1', '微信', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_CODE_TYPE', '2', '支付宝', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_CODE_TYPE', '3', '全支持', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_WOK_RECEIPT_SUB_STATE', '0', '未提交', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_WOK_RECEIPT_SUB_STATE', '1', '已提交', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_WOOK_CHECK', '0', '未审核', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_WOOK_CHECK', '1', '审核通过', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_WOOK_CHECK', '2', '审核驳回', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_RISK_OPERATION', '0', '已排除', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_RISK_OPERATION', '1', '未排除', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_TERM_STATUS', '1', '空闲', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_TERM_STATUS', '0', '使用', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_DEVICE_POS_TYPE', '1', 'POS', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_DEVICE_POS_TYPE', '2', '配件', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_DEVICE_COMMUNI_TYPE', '0', '电话拨号', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_DEVICE_COMMUNI_TYPE', '1', 'GPRS', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_DEVICE_COMMUNI_TYPE', '2', 'CDMA', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_DEVICE_SUPPORT_MSA', '0', '不支持', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_DEVICE_SUPPORT_MSA', '1', '支持', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_DEVICE_SUPPORT_CHIP', '0', '不支持', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_DEVICE_SUPPORT_CHIP', '1', '支持', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_DEVICE_SUPPORT_NON_CONTACT', '0', '不支持', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_DEVICE_SUPPORT_NON_CONTACT', '1', '支持', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_DEVICE_IN_FLAG', '0', '在库', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_DEVICE_IN_FLAG', '1', '不在库', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_DEVICE_DEV_STATUS', '0', '可用', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_DEVICE_DEV_STATUS', '1', '故障', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_DEVICE_DEV_STATUS', '2', '报废', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_DEVICE_IS_LOCK', '0', '锁定', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_DEVICE_IS_LOCK', '1', '未锁定', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_IDENTIFICATION', '0', '未结束', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_IDENTIFICATION', '1', '结束', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_CHECK_RESULT', '0', '未复核', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_CHECK_RESULT', '1', '复核通过', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_CHECK_RESULT', '2', '复核拒绝', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_WORK_RECEIPT_STATE', '0', '待回执', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_WORK_RECEIPT_STATE', '1', '已回执', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_MER_MODEL', '0', '日结', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_MER_MODEL', '1', '月结', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_MER_MODEL', '2', '季度结', null, null, null, null);

insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_BANK_MER', '0', '是', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_BANK_MER', '1', '否', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_MER_STADT', '0', '中行扣率', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_MER_STADT', '1', '银联卡扣率', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_MER_STADT', '2', 'VISA MC(EDC)', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_MER_STADT', '3', 'VISA MC(DCC)', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_MER_STADT', '4', 'AE', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_MER_STADT', '5', 'JCE', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_MER_STADT', '6', 'DC', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_WOOK_SEND_STATUS', '0', '未下发', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_WOOK_SEND_STATUS', '1', '已下发', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_WOOK_EDIT_STATUS', '0', '可修改', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_WOOK_EDIT_STATUS', '1', '不可修改', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_WORK_REVIEW_STATU', '0', '未通过', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_WORK_REVIEW_STATU', '1', '已通过', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_WORK_STATUS', '0', '未完成', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_WORK_STATUS', '1', '已完成', null, null, null, null);
insert into t_p_s_dict_item (DICTTYPE, DICTCODE, DICTCODENAME, DICTPINYIN, DICTORDER, DICTFLAG, DICTCODE_PARENT)
values ('D_ORG_SYS_SIGN', '0', '不支持', null, null, null, null);

--dict_list--
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_WORK_STATUS', '工作单状态', '1', null, null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_DEVICE_SUPPORT_MSA', '' || chr(9) || '是否支持磁条卡', '1', null, null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_DEVICE_SUPPORT_CHIP', '' || chr(9) || '是否支持芯片卡', '1', null, null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_DEVICE_SUPPORT_NON_CONTACT', '是否支持非接', '1', null, null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_DEVICE_IN_FLAG', '库存状态', '1', null, null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_DEVICE_DEV_STATUS', '质量状态', '1', null, null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_DEVICE_IS_LOCK', '设备锁定', '1', null, null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_TASK_TYPE', '巡检情况', '1', null, null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_MER_NO_CNAME', '商户名称', '2', 'SELECT MER_NO,MER_CNAME||''-'' ||MER_NO FROM T_B_MERCHANT', null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_WOOK_EVENT', '工作单状态', '1', null, null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_RISK_OPERATION', '是否已排除风险', '1', null, null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_MER_RISK_CHANNEL', '商户风险渠道', '2', 'select t.channel_id,t.channel_name from t_d_mer_risk_channel t', null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_MER_RISK_TYPE', '商户风险类型', '2', 'select risk_type_id,risk_type_name from t_d_mer_risk_type', null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_TYPE_POS', 'pos设备类型', '2', 'SELECT T.TYPE_ID,T.TYPE_NAME FROM T_D_TYPE T WHERE T.D_TYPE = ''1''', null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_DEVICE_POS_TYPE', 'POS类型', '1', null, null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_DEVICE_COMMUNI_TYPE', '通讯方式', '1', null, null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('Orgs', '机构', '2', 'select t.org_id, t.name from t_b_org t', null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_IHT_STATUS', '用户分组继承标志', '1', null, null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_STATUS', '状态', '1', null, null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_USER_STATUS', '权限用户状态', '1', null, null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_ORG_STATE', '机构状态', '1', null, null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_WEB_USER_STATE', 'web用户状态', '1', null, null);
/*insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_IHT_FLAG', '继承标志', '1', null, null);*/
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_WEB_USER_GRP_STATE', 'web用户分组状态', '1', null, null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('Org', '行内省行级以上机构', '2', 'select t.org_id, t.name from t_b_org t where t.org_lev in (1,2) order by t.org_id', null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_USER_STATE', '用户状态', '1', null, null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_SYSFLAG', '操作系统', '1', null, null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_ORG_STATUS', '机构状态', '1', null, null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_LOG_SYSFLAG', '稽核日志系统标志', '1', null, null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_TERM_TYPE', '终端类型', '2', 'SELECT T.TERM_TYPE_ID,T.TERM_TYPE_NAME FROM T_D_TERMINAL_TYPE T', null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_TERM_STATUS', '终端状态', '1', null, null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_MER_MCC', 'MCC码', '2', 'select mcc,mcc_name from t_d_mcc', null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_EXT_AUDIT', '附加资料审核', '1', null, null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_MER_SVC_NAME', '服务商标志', '2', 'SELECT SVC_ID,NME  FROM T_D_SERVICE_PROVIDER t where  t.svc_type=''1''', null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_MER_RANGE_ID_NAME', '商户级别', '2', 'select MER_RANGE_ID,MER_RANGE_NAME from t_d_mer_range order by MER_RANGE_ID', null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_BUSS_STATE', '设备出入库业务状态', '1', null, null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_MER_NO_NAME_OPEN', '查询商户', '2', 'SELECT MER_NO,MER_CNAME FROM T_B_MERCHANT', null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_TERMINAL_TERM_NO', '查询已开启终端', '2', 'SELECT TERM_NO,TERM_NO FROM T_B_TERMINAL WHERE USER_STATUS = ''1''', null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_MER_ASTATUS', '商户复核状态', '1', null, null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_WOOK_DOWN_STATUS', '工作单下载状态', '1', null, null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_FLOW_STATE', '流转状态', '1', null, null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_WORK_RECEIPT_STATE', '回执完成状态', '1', null, null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_MER_TYPE', '商户类型', '2', 'select mer_type_id,mer_type_name from t_d_mer_type', null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_WOK_RECEIPT_SUB_STATE', '回执提交状态', '1', null, null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_WOOK_CHECK', '工作单回执审核状态', '1', null, null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_TYPE', '设备类型', '2', 'SELECT TYPE_ID ,TYPE_NAME FROM T_D_TYPE', null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_BRAND', '品牌', '2', 'SELECT BRD_ID,BRD_NME  FROM T_D_BRAND', null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_MODEL', '型号类型', '2', 'SELECT MDL_ID,MDL_NME FROM  T_D_MODEL', null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_SERVICE_PROVIDER', '服务商为厂商', '2', 'SELECT SVC_ID,NME  FROM T_D_SERVICE_PROVIDER t where  t.svc_type=''2''', null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_CODE_TYPE', '扫码类型', '1', null, null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_IDENTIFICATION', '标识(结束，未结束)', '1', null, null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_CHECK_RESULT', '复核结果', '1', null, null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_ORDERNUM', '附加资料类型', '2', 'SELECT t.ordernum,t.filename from T_B_MERCHANTETA t', null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_TERMINAL_OPERATION', '是否开启', '1', null, null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_MER_STATE', '商户状态', '1', null, null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_FWS_TYPE', '服务商状态', '1', null, null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_DEV_LCZT', '设备状态', '1', null, null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_USER_ID_NAME', '用户名称', '2', 'select user_id,user_name from t_p_shiro_user t', null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_ORG_SYS_SIGN', '新旧线系统标志', '1', null, null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_MER_STADT', '扣率', '1', null, null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_MER_MODEL', '清算模式', '1', null, null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_BANK_MER', '是否非标注册', '1', null, null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_WOOK_SEND_STATUS', '工作单下发状态', '1', null, null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_WOOK_EDIT_STATUS', '工作单修改状态', '1', null, null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_USER', '用户', '2', 'SELECT T.USER_ID ,T.LOGIN_NAME  FROM t_p_shiro_user T', null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_POS_PROGRAM', 'POS程序版本', '2', 'SELECT POS_PROGRAM_ID,PROGRAM_NAME FROM T_B_POS_PROGRAM ', null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_WORK_REVIEW_STATU', '工作单复核状态', '1', null, null);
insert into t_p_s_dict_list (DICTTYPE, DICTTYPENAME, DICTFLAG, DICTTABLE_SQL, DICTTABLE_ORDER)
values ('D_WORK_ISADDRESS', '工作单回执装机地址状态', '1', null, null);

-- 初始机构数据
INSERT INTO t_b_org (org_id, eacq_org_id, name, online_flag, org_lev, p_org_id, status, tel, zone_code) VALUES ('00', NULL, '中国银行总行', NULL, 0, NULL, '1', NULL, NULL);
INSERT INTO t_b_org (org_id, eacq_org_id, name, online_flag, org_lev, p_org_id, status, tel, zone_code) VALUES ('000', '06285', '中国银行苏州分行', NULL, 1, '00', '1', NULL, NULL);
INSERT INTO t_b_org (org_id, eacq_org_id, name, online_flag, org_lev, p_org_id, status, tel, zone_code) VALUES ('000001', '06286', '中国银行苏州姑苏支行', NULL, 2, '000', '1', NULL, NULL);
INSERT INTO t_b_org (org_id, eacq_org_id, name, online_flag, org_lev, p_org_id, status, tel, zone_code) VALUES ('000001001', '06287', '中国银行苏州平江支行', NULL, 3, '000001', '1', NULL, NULL);
INSERT INTO t_b_org (org_id, eacq_org_id, name, online_flag, org_lev, p_org_id, status, tel, zone_code) VALUES ('000001002', '06289', '中国银行苏州葑门支行', NULL, 3, '000001', '1', NULL, NULL);
INSERT INTO t_b_org (org_id, eacq_org_id, name, online_flag, org_lev, p_org_id, status, tel, zone_code) VALUES ('000002', '06313', '中国银行苏州沧浪支行', NULL, 2, '000', '1', NULL, NULL);
INSERT INTO t_b_org (org_id, eacq_org_id, name, online_flag, org_lev, p_org_id, status, tel, zone_code) VALUES ('000003', '06314', '中国银行苏州金阊支行', NULL, 2, '000', '1', NULL, NULL);
INSERT INTO t_b_org (org_id, eacq_org_id, name, online_flag, org_lev, p_org_id, status, tel, zone_code) VALUES ('000004', '06315', '中国银行苏州工业园区支行', NULL, 2, '000', '1', NULL, NULL);
INSERT INTO t_b_org (org_id, eacq_org_id, name, online_flag, org_lev, p_org_id, status, tel, zone_code) VALUES ('000004001', '06316', '中国银行苏州馨都广场支行', NULL, 3, '000004', '1', NULL, NULL);
INSERT INTO t_b_org (org_id, eacq_org_id, name, online_flag, org_lev, p_org_id, status, tel, zone_code) VALUES ('000004002', '06317', '中国银行苏州娄葑支行', NULL, 3, '000004', '1', NULL, NULL);
INSERT INTO t_b_org (org_id, eacq_org_id, name, online_flag, org_lev, p_org_id, status, tel, zone_code) VALUES ('000004003', '06318', '中国银行苏州独墅湖支行', NULL, 3, '000004', '1', NULL, NULL);
INSERT INTO t_b_org (org_id, eacq_org_id, name, online_flag, org_lev, p_org_id, status, tel, zone_code) VALUES ('000005', '06325', '中国银行苏州高新技术产业开发区支行', NULL, 2, '000', '1', NULL, NULL);
INSERT INTO t_b_org (org_id, eacq_org_id, name, online_flag, org_lev, p_org_id, status, tel, zone_code) VALUES ('000006', '06333', '中国银行苏州吴中支行', NULL, 2, '000', '1', NULL, NULL);
INSERT INTO t_b_org (org_id, eacq_org_id, name, online_flag, org_lev, p_org_id, status, tel, zone_code) VALUES ('000006001', '06298', '中国银行苏州城南支行', NULL, 3, '000006', '1', NULL, NULL);
INSERT INTO t_b_org (org_id, eacq_org_id, name, online_flag, org_lev, p_org_id, status, tel, zone_code) VALUES ('000006002', '06334', '中国银行苏州吴中经济技术开发区支行', NULL, 3, '000006', '1', NULL, NULL);
INSERT INTO t_b_org (org_id, eacq_org_id, name, online_flag, org_lev, p_org_id, status, tel, zone_code) VALUES ('000006003', '06335', '中国银行苏州木渎支行', NULL, 3, '000006', '1', NULL, NULL);


--insert into t_p_shiro_res (menu_res_id, action_name, dsc, icon, menu_name, order_id, ordered, p_menu_res_id, res_type_type_id) values (null, '服务商信息', ?, ?, ?, ?, ?, ?, ?)

-- 用户分组初始化数据
insert into t_p_shiro_user_grp (user_grp_id, iht_flag, name, org_id) values (1, '1', 'admin', '00');

-- 用户角色初始化数据
INSERT INTO t_p_shiro_user_grp_role (user_grp_id, role_id) VALUES (1, 1);

-- 用户初始化数据
insert into t_p_shiro_user (user_id, login_name, org_id, pwd, status, user_grp_id, user_name) values (1, 'admin', '00', '96E79218965EB72C92A549DD5A330112', '1', 1, 'admin');
