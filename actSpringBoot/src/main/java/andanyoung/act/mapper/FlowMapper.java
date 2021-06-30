package andanyoung.act.mapper;

import andanyoung.act.entity.FlowInfo;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

public interface FlowMapper {

    @Select("select * from tb_flow order by createtime desc")
    List<FlowInfo> selectFlowList();

    @Update("update tb_flow set state = 0 where id=#{id}")
    int updateFlowDeployState(Long id);

    @Select("select * from tb_flow where id=#{id}")
    FlowInfo selectOneFlow(Long id);
}
