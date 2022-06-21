package cn.shu.student_server.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;
import org.apache.ibatis.type.Alias;

/**
 * @Auther: flopsyyan
 * @Date: 2022/2/9 13:29
 * @Description: Course
 * @Version 1.0.0
 */

@Data
@AllArgsConstructor
@NoArgsConstructor
@Alias("Course")

public class Course {
    private Integer cid;
    private String cname;
    private Integer ccredit;
}
