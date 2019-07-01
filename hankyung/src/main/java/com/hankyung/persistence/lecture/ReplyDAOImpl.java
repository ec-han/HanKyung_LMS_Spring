package com.hankyung.persistence.lecture;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.hankyung.domain.lecture.ReplyDTO;

import lombok.extern.slf4j.Slf4j;
@Slf4j
@Repository
public class ReplyDAOImpl implements ReplyDAO {
	@Inject
	private SqlSession sqlSession;
	@Override
	public List<ReplyDTO> list(int bno) {
		return sqlSession.selectList("reply.list",bno);
	}

	@Override
	public void create(ReplyDTO rDto) {
		log.info(rDto.toString());
		sqlSession.insert("reply.create",rDto);
	}

	@Override
	public void update(int bno, String flag) {
		Map<String, Object> map = new HashMap<>();
		map.put("flag", flag);
		map.put("bno", bno);
		log.info(bno+","+flag);
		sqlSession.update("reply.update",map);

	}

	@Override
	public void delete(int rno) {
		sqlSession.delete("reply.delete", rno);
		
	}

}
