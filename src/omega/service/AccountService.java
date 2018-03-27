package omega.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Service;

@SuppressWarnings("rawtypes")
@Service
public class AccountService {

	@Autowired
	MongoTemplate template;
	
	public int login(Map param) {
		Query query = new Query(Criteria.where("id").is(param.get("id")));
		Map one = template.findOne(query, Map.class);
		if(one==null) {
			return 0;
		}else {
			boolean rst =one.get("pass").equals(param.get("pass"));
			return rst ? 2:1;
		}
	}
	
	public boolean exist(String id) {
		Query query = new Query(Criteria.where("id").is(id));
		Map one = template.findOne(query, Map.class);
		return one!= null;
	}
	
}
