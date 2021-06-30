package andanyoung.act.mapper;

import andanyoung.act.entity.Evection;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

public interface EvectionMapper {
    @Select("select * from tb_evection where userid = #{userId}")
    List<Evection> selectAll(Long userId);

    @Update("update tb_evection set state=1 where id=#{id}")
    int startTask(Long id);

    @Update("update tb_evection set state=2 where id=#{id}")
    int endTask(Long id);

    @Select("select * from tb_evection where id=#{id}")
    Evection selectOne(Long id);

    @Options(useGeneratedKeys = true, keyProperty = "id", keyColumn = "id")
    @Insert("insert into tb_evection (userid,evectionname,num,begindate,enddate,destination,reson,state) values (#{userid},#{evectionName},#{num},#{beginDate},#{endDate},#{destination},#{reson},#{state})")
    int save(Evection evection);
}
