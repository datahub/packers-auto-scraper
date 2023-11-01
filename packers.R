library(nflfastR)
library(tidyverse)

year <- 2023
pbp <- load_pbp(year)

# clean all season games for Green Bay home and away
GB_games <- pbp %>% 
  filter(home_team == "GB" | away_team == "GB")

#filter for fields requested by Spoon
GB_games_summary <- GB_games %>% select(
  away_team,
  week,
  posteam,
  drive_play_count,
  drive,
  qtr,
  drive_start_yard_line,
  drive_end_yard_line,
  drive_end_transition,
  down,
  ydstogo,
  yrdln,
  time,
  ydsnet,
  desc,
  play_type,
  yards_gained,
  shotgun,
  no_huddle,
  qb_dropback,
  qb_kneel,
  qb_spike,
  qb_scramble,
  passer_player_name,
  passing_yards,
  receiver_player_name,
  receiving_yards,
  rusher_player_name,
  rushing_yards,
  pass_length,
  pass_location,
  air_yards,
  yards_after_catch,
  goal_to_go,
  first_down_pass,
  third_down_converted,
  third_down_failed,
  fourth_down_converted,
  fourth_down_failed,
  incomplete_pass,
  interception,
  drive_time_of_possession,
  drive_first_downs,
  drive_inside20,
  drive_ended_with_score,
  drive_yards_penalized,
  punt_inside_twenty,
  punt_in_endzone,
  punt_out_of_bounds,
  punt_downed,
  punt_fair_catch,
  tackle_for_loss_1_player_name,
  tackle_for_loss_2_player_name,
  qb_hit_1_player_name,
  pass_defense_1_player_name,
  fumbled_1_player_name,
  sack_player_name,
  half_sack_1_player_name,
  half_sack_2_player_name,
  replay_or_challenge_result,
  penalty_type,
  drive_start_transition
)

#rename with latest date scraped/years
write_csv(GB_games_summary, "gb_games_summary.csv")