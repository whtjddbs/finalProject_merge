package item.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import item.bean.ItemDTO;

@Component
public interface ItemDAO {


	public List<ItemDTO> getCategory();

	public List<ItemDTO> getImageList(String main_codename);

}
