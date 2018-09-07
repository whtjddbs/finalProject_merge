package item.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import item.bean.ItemDTO;

@Transactional
@Component
public class ItemDAOMybatis implements ItemDAO {
	@Autowired
	private SqlSession sqlSession;
	
	public List<ItemDTO> getItemList() {
		return sqlSession.selectList("itemSQL.getItemList");
	}

	public List<ItemDTO> getInfoList(Map<String, String> map) {
		return sqlSession.selectList("itemSQL.getInfoList", map);
	}

	public int getTotalA(String main_codename) {
		return sqlSession.selectOne("itemSQL.getTotalA", main_codename);
	}

	/*public int getTotalA(main_codename) {
		return sqlSession.selectOne("itemSQL.getTotalA");
	}*/

	/*public List<ItemDTO> getInfoList(String main_codename) {
		return sqlSession.selectList("itemSQL.getInfoList", main_codename);
	}*/

}
