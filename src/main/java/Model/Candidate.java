package Model;

import lombok.*;

@ToString
@Builder
@Data
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class Candidate {
    private User user;
    private Account account;
    private Integer candidateId;
    private Integer userId;
    private String cvURL;
    private String position;
    private String skill;
    private Integer recruiterId;
    private String note;
    private String status;
    private String yearOfExperience;
    private String highestLevel;
}
