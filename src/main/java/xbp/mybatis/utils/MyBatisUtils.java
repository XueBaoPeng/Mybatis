package xbp.mybatis.utils;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;

/**
 * Created by Administrator on 2017/5/13 0013.
 */
public class MyBatisUtils {

    public static SqlSessionFactory getSqlSecsionFactory() {
        //使用类加载器加载mybatis的配置文件（它也加载关联的映射文件）
        try {
            InputStream inputStream = Resources.getResourceAsStream("mybatis-config.xml");
            SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(inputStream);
            return factory;
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static SqlSession getSqlSession() {
        return getSqlSecsionFactory().openSession();
    }

    /**
     * 31      * 获取SqlSession
     * 32      * @param isAutoCommit
     * 33      *         true 表示创建的SqlSession对象在执行完SQL之后会自动提交事务
     * 34      *         false 表示创建的SqlSession对象在执行完SQL之后不会自动提交事务，这时就需要我们手动调用sqlSession.commit()提交事务
     * 35      * @return SqlSession
     * 36
     */
    public static SqlSession getSqlSession(boolean isAutoCommit) {
        return getSqlSecsionFactory().openSession(isAutoCommit);
    }
}
