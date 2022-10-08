package kr.co.drcrown.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.co.drcrown.command.Criteria;
import kr.co.drcrown.command.PageMaker;
import kr.co.drcrown.dto.NoticeVO;
import kr.co.drcrown.service.NoticeService;

import kr.co.drcrown.dao.NoticeDAO;


public class NoticeServiceImpl implements NoticeService {

	private NoticeDAO noticeDAO;

	public void setNoticeDAO(NoticeDAO noticeDAO) {
		this.noticeDAO = noticeDAO;
	}

	@Override
	public Map<String, Object> getNoticeList(Criteria cri) throws SQLException {

		Map<String, Object> dataMap = new HashMap<String, Object>();

		// 현재 page 번호에 맞는 리스트를 perPageNum 개수 만큼 가져오기.
		List<NoticeVO> noticeList = noticeDAO.selectSearchNoticeList(cri);

		// 전체 board 개수
		int totalCount = noticeDAO.selectSearchNoticeListCount(cri);

		if(true) throw new SQLException();
		
		// PageMaker 생성.
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(totalCount);

		dataMap.put("noticeList", noticeList);
		dataMap.put("pageMaker", pageMaker);

		return dataMap;

	}

	@Override
	public NoticeVO getNotice(int notice_no) throws SQLException {

		NoticeVO board = noticeDAO.selectNoticeByNotice_no(notice_no);
		noticeDAO.increaseViewCount(notice_no);
		return board;

	}
	@Override
	public NoticeVO getNoticeForModify(int notice_no) throws SQLException {

		NoticeVO board = noticeDAO.selectNoticeByNotice_no(notice_no);
		return board;

	}

	@Override
	public void regist(NoticeVO notice) throws SQLException {

		int notice_no = noticeDAO.selectNoticeSequenceNextValue();
		notice.setNotice_no(notice_no);
		noticeDAO.insertNotice(notice);

	}

	@Override
	public void modify(NoticeVO notice) throws SQLException {

		noticeDAO.updateNotice(notice);

	}

	@Override
	public void remove(int notice_no) throws SQLException {

		noticeDAO.deleteNotice(notice_no);

	}
}
