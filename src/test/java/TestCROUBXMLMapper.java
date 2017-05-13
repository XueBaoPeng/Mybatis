import org.apache.ibatis.session.SqlSession;
import org.testng.annotations.Test;
import xbp.mybatis.domain.User;
import xbp.mybatis.utils.MyBatisUtils;

/**
 * Created by Administrator on 2017/5/13 0013.
 */
public class TestCROUBXMLMapper {


    @Test
    public void testAdd() {
        SqlSession sqlSession = MyBatisUtils.getSqlSession(true);
/**
 * 映射sql的标识字符串，
 * me.gacl.mapping.userMapper是userMapper.xml文件中mapper标签的namespace属性的值，
 * addUser是insert标签的id属性值，通过insert标签的id属性值就可以找到要执行的SQL
 */
        String statement = "xbp.mybatis.domain.User.addUser";
        User user = new User();
        user.setName("孤芳自赏");
        user.setAge(33);
        int retResult = sqlSession.insert(statement,user);
        sqlSession.close();
        System.out.print(retResult);

    }

    @Test
    public void testUpdate(){
        SqlSession sqlSession=MyBatisUtils.getSqlSession(true);

        String statement = "xbp.mybatis.domain.User.updateUser";
        User user=new User();
        user.setId(3);
        user.setAge(22);
        user.setName("mmeids");

        int retResult=sqlSession.update(statement,user);
        sqlSession.close();
        System.out.print(retResult);
    }

}
