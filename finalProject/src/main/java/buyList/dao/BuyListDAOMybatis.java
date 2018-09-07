package buyList.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import buyList.bean.BuyListDTO;

@Transactional
@Component
public class BuyListDAOMybatis implements BuyListDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<BuyListDTO> getAllBuyList() {
		return sqlSession.selectList("buyListSQL.getAllBuyList");
	}
}
