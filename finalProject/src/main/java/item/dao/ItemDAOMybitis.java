package item.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import item.bean.ItemDTO;

@Transactional
@Component
public class ItemDAOMybitis implements ItemDAO {

	@Autowired
	private SqlSession sqlSession;
	
	public List<ItemDTO> getCategory() {
		
		return sqlSession.selectList("itemSQL.getCategory");
	}

	public List<ItemDTO> getImageList(String main_codename) {
		return sqlSession.selectList("itemSQL.getImageList", main_codename);
	}

	
	
}
