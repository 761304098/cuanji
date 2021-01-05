import com.sun.bean.User;
import com.sun.service.UserServiceImpl;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.net.SocketTimeoutException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class UserTest {
        @Test
        public void UserTest(){
                ApplicationContext context=new ClassPathXmlApplicationContext("applicationContext.xml");
                UserServiceImpl impl = context.getBean("userServiceImpl", UserServiceImpl.class);
                Map<String,Object> map =new HashMap<String, Object>();
                map.put("username","root");
                List<User> users = impl.queryForUser(map);
                for (User user : users) {
                        System.out.println(user);
                }
        }

        @Test
        public void addUser(){
                ApplicationContext context=new ClassPathXmlApplicationContext("applicationContext.xml");
                UserServiceImpl impl = context.getBean("userServiceImpl", UserServiceImpl.class);
                Map<String,Object> map=new HashMap<String, Object>();
                map.put("username","root");
                map.put("password","123456");
                map.put("id_card","130635199711032838");
                impl.addUser(map);
        }

        @Test
        public void updateUser(){
                ApplicationContext context=new ClassPathXmlApplicationContext("applicationContext.xml");
                UserServiceImpl impl = context.getBean("userServiceImpl", UserServiceImpl.class);
                Map<String,Object> map=new HashMap<String, Object>();
                map.put("username","root");
                map.put("password","woaini");
                map.put("id_card","130635199711032838");
                impl.updateUser(map);
        }
}
