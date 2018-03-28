package omega.service.hunter;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Service;

@Service
public class MacaService {

	@Autowired
	MongoTemplate template;

	public boolean addAccessory(Map map) {
		try {
			template.insert(map, "accessory");
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	
}
