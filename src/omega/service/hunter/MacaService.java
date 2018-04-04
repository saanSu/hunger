package omega.service.hunter;

import java.util.Comparator;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Service;

@Service
public class MacaService {

	@Autowired
	MongoTemplate template;

	public List<Map> findAllAccessory() {
		return template.findAll(Map.class, "accessory");
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public List<Map> findAllSkill() {
		List tmp = template.findAll(Map.class, "skills");
		tmp.sort(new Comparator<Map>() {
			public int compare(Map o1, Map o2) {
				String s1 = (String) o1.get("skill");
				String s2 = (String) o2.get("skill");
				return s1.compareTo(s2);
			}
		});
		return tmp;
	}
}
