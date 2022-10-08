package kr.co.drcrown.service;

import java.sql.SQLException;
import java.util.List;

import kr.co.drcrown.dao.MenuDAO;
import kr.co.drcrown.dto.MenuVO;


public class MenuServiceImpl implements MenuService {
	
	private MenuDAO menuDAO;// = new MenuDAOImpl();
	public void setMenuDAO(MenuDAO menuDAO) {
		this.menuDAO = menuDAO;
	}
	
	@Override
	public List<MenuVO> getMainMenuList() throws SQLException {
		List<MenuVO> menuList = null;
		menuList = menuDAO.selectMainMenu();
		return menuList;
	}

	@Override
	public MenuVO getMenuByMcode(String mCode) throws SQLException {
		MenuVO menu = null;
		menu = menuDAO.selectMenuByMcode(mCode);
		return menu;
	}

	@Override
	public MenuVO getMenuByMname(String mName) throws SQLException {
		MenuVO menu = null;
		menu = menuDAO.selectMenuByMname(mName);
		return menu;
	}

	@Override
	public List<MenuVO> getSubMenuList(String mCode) throws SQLException {
		List<MenuVO> menuList = null;
		System.out.println("service: "+mCode);
		menuList = menuDAO.selectSubMenu(mCode);
		return menuList;
	}

}
