package kr.co.drcrown.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.co.drcrown.command.Criteria;

import kr.co.drcrown.dto.NoticeVO;

public interface NoticeDAO {
	

	List<NoticeVO> selectSearchNoticeList(Criteria cri) throws SQLException;

	int selectSearchNoticeListCount(Criteria cri) throws SQLException;
	
	NoticeVO selectNoticeByNotice_no(int notice_no) throws SQLException;
	NoticeVO selectNoticeByImage(String imageFile) throws SQLException;
	
	// 조회수 증가
	void increaseViewCount(int notice_no) throws SQLException;

	// Notice_seq.nextval 가져오기
	int selectNoticeSequenceNextValue() throws SQLException;
	
	void insertNotice(NoticeVO Notice) throws SQLException;
	
	void updateNotice(NoticeVO Notice) throws SQLException;

	void deleteNotice(int notice_no) throws SQLException;




}
