package item.dao;

import java.util.List;
import java.util.Map;

import item.bean.ItemDTO;

public interface ItemDAO {

	public List<ItemDTO> getItemList();

	//public List<ItemDTO> getInfoList(String main_codename);

	public List<ItemDTO> getInfoList(Map<String, String> map);

	public int getTotalA(String main_codename);

	//public int getTotalA(main_codename);

}

