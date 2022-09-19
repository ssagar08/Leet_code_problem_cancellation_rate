select * from matches;
SELECT * FROM players;

with partition_score as 
(
select first_player as player , first_score as score from  matches
union all
select second_player as player , second_score as score from  matches
),
total_result as
(
select players.group_id,players.partition_score.player ,sum(score) as total_score, rank() over(partition by group_id order by player_id ) as winner from partition_score
inner join players on partition_score.player= players.player_id
group by player,players.group_id
order by group_id
)

select * from total_result where winner=1
