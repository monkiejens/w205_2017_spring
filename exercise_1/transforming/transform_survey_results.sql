DROP TABLE survey_scores; 

CREATE TABLE survey_scores

AS SELECT
  provider_id,
  hospital_name,
  CASE WHEN communication_with_nurses_achievement_points LIKE "0%" THEN 0
  WHEN communication_with_nurses_achievement_points LIKE "1 %" THEN 1
  WHEN communication_with_nurses_achievement_points LIKE "2%" THEN 2
  WHEN communication_with_nurses_achievement_points LIKE "3%" THEN 3
  WHEN communication_with_nurses_achievement_points LIKE "4%" THEN 4
  WHEN communication_with_nurses_achievement_points LIKE "5%" THEN 5
  WHEN communication_with_nurses_achievement_points LIKE "6%" THEN 6
  WHEN communication_with_nurses_achievement_points LIKE "7%" THEN 7
  WHEN communication_with_nurses_achievement_points LIKE "8%" THEN 8
  WHEN communication_with_nurses_achievement_points LIKE "9%" THEN 9
  WHEN communication_with_nurses_achievement_points LIKE "10%" THEN 10
  END AS nurses_achievement,
  CASE WHEN communication_with_nurses_improvement_points LIKE "0%" THEN 0
  WHEN communication_with_nurses_improvement_points LIKE "1 %" THEN 1
  WHEN communication_with_nurses_improvement_points LIKE "2%" THEN 2
  WHEN communication_with_nurses_improvement_points LIKE "3%" THEN 3
  WHEN communication_with_nurses_improvement_points LIKE "4%" THEN 4
  WHEN communication_with_nurses_improvement_points LIKE "5%" THEN 5
  WHEN communication_with_nurses_improvement_points LIKE "6%" THEN 6
  WHEN communication_with_nurses_improvement_points LIKE "7%" THEN 7
  WHEN communication_with_nurses_improvement_points LIKE "8%" THEN 8
  WHEN communication_with_nurses_improvement_points LIKE "9%" THEN 9
  WHEN communication_with_nurses_improvement_points LIKE "10%" THEN 10
  END AS nurses_improvement,
  CASE WHEN communication_with_nurses_dimension_score LIKE "0%" THEN 0
  WHEN communication_with_nurses_dimension_score LIKE "1 %" THEN 1
  WHEN communication_with_nurses_dimension_score LIKE "2%" THEN 2
  WHEN communication_with_nurses_dimension_score LIKE "3%" THEN 3
  WHEN communication_with_nurses_dimension_score LIKE "4%" THEN 4
  WHEN communication_with_nurses_dimension_score LIKE "5%" THEN 5
  WHEN communication_with_nurses_dimension_score LIKE "6%" THEN 6
  WHEN communication_with_nurses_dimension_score LIKE "7%" THEN 7
  WHEN communication_with_nurses_dimension_score LIKE "8%" THEN 8
  WHEN communication_with_nurses_dimension_score LIKE "9%" THEN 9
  WHEN communication_with_nurses_dimension_score LIKE "10%" THEN 10
  END AS nurses_dimension,

  CASE WHEN communication_with_doctors_achievement_points LIKE "0%" THEN 0
  WHEN communication_with_doctors_achievement_points LIKE "1 %" THEN 1
  WHEN communication_with_doctors_achievement_points LIKE "2%" THEN 2
  WHEN communication_with_doctors_achievement_points LIKE "3%" THEN 3
  WHEN communication_with_doctors_achievement_points LIKE "4%" THEN 4
  WHEN communication_with_doctors_achievement_points LIKE "5%" THEN 5
  WHEN communication_with_doctors_achievement_points LIKE "6%" THEN 6
  WHEN communication_with_doctors_achievement_points LIKE "7%" THEN 7
  WHEN communication_with_doctors_achievement_points LIKE "8%" THEN 8
  WHEN communication_with_doctors_achievement_points LIKE "9%" THEN 9
  WHEN communication_with_doctors_achievement_points LIKE "10%" THEN 10
  END AS doctors_achievement,
  CASE WHEN communication_with_doctors_improvement_points LIKE "0%" THEN 0
  WHEN communication_with_doctors_improvement_points LIKE "1 %" THEN 1
  WHEN communication_with_doctors_improvement_points LIKE "2%" THEN 2
  WHEN communication_with_doctors_improvement_points LIKE "3%" THEN 3
  WHEN communication_with_doctors_improvement_points LIKE "4%" THEN 4
  WHEN communication_with_doctors_improvement_points LIKE "5%" THEN 5
  WHEN communication_with_doctors_improvement_points LIKE "6%" THEN 6
  WHEN communication_with_doctors_improvement_points LIKE "7%" THEN 7
  WHEN communication_with_doctors_improvement_points LIKE "8%" THEN 8
  WHEN communication_with_doctors_improvement_points LIKE "9%" THEN 9
  WHEN communication_with_doctors_improvement_points LIKE "10%" THEN 10
  END AS doctors_improvement,
  CASE WHEN communication_with_doctors_dimension_score LIKE "0%" THEN 0
  WHEN communication_with_doctors_dimension_score LIKE "1 %" THEN 1
  WHEN communication_with_doctors_dimension_score LIKE "2%" THEN 2
  WHEN communication_with_doctors_dimension_score LIKE "3%" THEN 3
  WHEN communication_with_doctors_dimension_score LIKE "4%" THEN 4
  WHEN communication_with_doctors_dimension_score LIKE "5%" THEN 5
  WHEN communication_with_doctors_dimension_score LIKE "6%" THEN 6
  WHEN communication_with_doctors_dimension_score LIKE "7%" THEN 7
  WHEN communication_with_doctors_dimension_score LIKE "8%" THEN 8
  WHEN communication_with_doctors_dimension_score LIKE "9%" THEN 9
  WHEN communication_with_doctors_dimension_score LIKE "10%" THEN 10
  END AS doctors_dimension,

  CASE WHEN responsiveness_of_hospital_staff_achievement_points LIKE "0%" THEN 0
  WHEN responsiveness_of_hospital_staff_achievement_points LIKE "1 %" THEN 1
  WHEN responsiveness_of_hospital_staff_achievement_points LIKE "2%" THEN 2
  WHEN responsiveness_of_hospital_staff_achievement_points LIKE "3%" THEN 3
  WHEN responsiveness_of_hospital_staff_achievement_points LIKE "4%" THEN 4
  WHEN responsiveness_of_hospital_staff_achievement_points LIKE "5%" THEN 5
  WHEN responsiveness_of_hospital_staff_achievement_points LIKE "6%" THEN 6
  WHEN responsiveness_of_hospital_staff_achievement_points LIKE "7%" THEN 7
  WHEN responsiveness_of_hospital_staff_achievement_points LIKE "8%" THEN 8
  WHEN responsiveness_of_hospital_staff_achievement_points LIKE "9%" THEN 9
  WHEN responsiveness_of_hospital_staff_achievement_points LIKE "10%" THEN 10
  END AS staff_achievement,
  CASE WHEN responsiveness_of_hospital_staff_improvement_points LIKE "0%" THEN 0
  WHEN responsiveness_of_hospital_staff_improvement_points LIKE "1 %" THEN 1
  WHEN responsiveness_of_hospital_staff_improvement_points LIKE "2%" THEN 2
  WHEN responsiveness_of_hospital_staff_improvement_points LIKE "3%" THEN 3
  WHEN responsiveness_of_hospital_staff_improvement_points LIKE "4%" THEN 4
  WHEN responsiveness_of_hospital_staff_improvement_points LIKE "5%" THEN 5
  WHEN responsiveness_of_hospital_staff_improvement_points LIKE "6%" THEN 6
  WHEN responsiveness_of_hospital_staff_improvement_points LIKE "7%" THEN 7
  WHEN responsiveness_of_hospital_staff_improvement_points LIKE "8%" THEN 8
  WHEN responsiveness_of_hospital_staff_improvement_points LIKE "9%" THEN 9
  WHEN responsiveness_of_hospital_staff_improvement_points LIKE "10%" THEN 10
  END AS staff_improvement,
  CASE WHEN responsiveness_of_hospital_staff_dimension_score LIKE "0%" THEN 0
  WHEN responsiveness_of_hospital_staff_dimension_score LIKE "1 %" THEN 1
  WHEN responsiveness_of_hospital_staff_dimension_score LIKE "2%" THEN 2
  WHEN responsiveness_of_hospital_staff_dimension_score LIKE "3%" THEN 3
  WHEN responsiveness_of_hospital_staff_dimension_score LIKE "4%" THEN 4
  WHEN responsiveness_of_hospital_staff_dimension_score LIKE "5%" THEN 5
  WHEN responsiveness_of_hospital_staff_dimension_score LIKE "6%" THEN 6
  WHEN responsiveness_of_hospital_staff_dimension_score LIKE "7%" THEN 7
  WHEN responsiveness_of_hospital_staff_dimension_score LIKE "8%" THEN 8
  WHEN responsiveness_of_hospital_staff_dimension_score LIKE "9%" THEN 9
  WHEN responsiveness_of_hospital_staff_dimension_score LIKE "10%" THEN 10
  END AS staff_dimension,
  CASE WHEN pain_management_achievement_points LIKE "0%" THEN 0
  WHEN pain_management_achievement_points LIKE "1 %" THEN 1
  WHEN pain_management_achievement_points LIKE "2%" THEN 2
  WHEN pain_management_achievement_points LIKE "3%" THEN 3
  WHEN pain_management_achievement_points LIKE "4%" THEN 4
  WHEN pain_management_achievement_points LIKE "5%" THEN 5
  WHEN pain_management_achievement_points LIKE "6%" THEN 6
  WHEN pain_management_achievement_points LIKE "7%" THEN 7
  WHEN pain_management_achievement_points LIKE "8%" THEN 8
  WHEN pain_management_achievement_points LIKE "9%" THEN 9
  WHEN pain_management_achievement_points LIKE "10%" THEN 10
  END AS pain_achievement,
  CASE WHEN pain_management_improvement_points LIKE "0%" THEN 0
  WHEN pain_management_improvement_points LIKE "1 %" THEN 1
  WHEN pain_management_improvement_points LIKE "2%" THEN 2
  WHEN pain_management_improvement_points LIKE "3%" THEN 3
  WHEN pain_management_improvement_points LIKE "4%" THEN 4
  WHEN pain_management_improvement_points LIKE "5%" THEN 5
  WHEN pain_management_improvement_points LIKE "6%" THEN 6
  WHEN pain_management_improvement_points LIKE "7%" THEN 7
  WHEN pain_management_improvement_points LIKE "8%" THEN 8
  WHEN pain_management_improvement_points LIKE "9%" THEN 9
  WHEN pain_management_improvement_points LIKE "10%" THEN 10
  END AS pain_improvement,
  CASE WHEN pain_management_dimension_score LIKE "0%" THEN 0
  WHEN pain_management_dimension_score LIKE "1 %" THEN 1
  WHEN pain_management_dimension_score LIKE "2%" THEN 2
  WHEN pain_management_dimension_score LIKE "3%" THEN 3
  WHEN pain_management_dimension_score LIKE "4%" THEN 4
  WHEN pain_management_dimension_score LIKE "5%" THEN 5
  WHEN pain_management_dimension_score LIKE "6%" THEN 6
  WHEN pain_management_dimension_score LIKE "7%" THEN 7
  WHEN pain_management_dimension_score LIKE "8%" THEN 8
  WHEN pain_management_dimension_score LIKE "9%" THEN 9
  WHEN pain_management_dimension_score LIKE "10%" THEN 10
  END AS pain_dimension,
  CASE WHEN communication_about_medicines_achievement_points LIKE "0%" THEN 0
  WHEN communication_about_medicines_achievement_points LIKE "1 %" THEN 1
  WHEN communication_about_medicines_achievement_points LIKE "2%" THEN 2
  WHEN communication_about_medicines_achievement_points LIKE "3%" THEN 3
  WHEN communication_about_medicines_achievement_points LIKE "4%" THEN 4
  WHEN communication_about_medicines_achievement_points LIKE "5%" THEN 5
  WHEN communication_about_medicines_achievement_points LIKE "6%" THEN 6
  WHEN communication_about_medicines_achievement_points LIKE "7%" THEN 7
  WHEN communication_about_medicines_achievement_points LIKE "8%" THEN 8
  WHEN communication_about_medicines_achievement_points LIKE "9%" THEN 9
  WHEN communication_about_medicines_achievement_points LIKE "10%" THEN 10
  END AS communication_achievement,
  CASE WHEN communication_about_medicines_improvement_points LIKE "0%" THEN 0
  WHEN communication_about_medicines_improvement_points LIKE "1 %" THEN 1
  WHEN communication_about_medicines_improvement_points LIKE "2%" THEN 2
  WHEN communication_about_medicines_improvement_points LIKE "3%" THEN 3
  WHEN communication_about_medicines_improvement_points LIKE "4%" THEN 4
  WHEN communication_about_medicines_improvement_points LIKE "5%" THEN 5
  WHEN communication_about_medicines_improvement_points LIKE "6%" THEN 6
  WHEN communication_about_medicines_improvement_points LIKE "7%" THEN 7
  WHEN communication_about_medicines_improvement_points LIKE "8%" THEN 8
  WHEN communication_about_medicines_improvement_points LIKE "9%" THEN 9
  WHEN communication_about_medicines_improvement_points LIKE "10%" THEN 10
  END AS communication_improvement,
  CASE WHEN communication_about_medicines_dimension_score LIKE "0%" THEN 0
  WHEN communication_about_medicines_dimension_score LIKE "1 %" THEN 1
  WHEN communication_about_medicines_dimension_score LIKE "2%" THEN 2
  WHEN communication_about_medicines_dimension_score LIKE "3%" THEN 3
  WHEN communication_about_medicines_dimension_score LIKE "4%" THEN 4
  WHEN communication_about_medicines_dimension_score LIKE "5%" THEN 5
  WHEN communication_about_medicines_dimension_score LIKE "6%" THEN 6
  WHEN communication_about_medicines_dimension_score LIKE "7%" THEN 7
  WHEN communication_about_medicines_dimension_score LIKE "8%" THEN 8
  WHEN communication_about_medicines_dimension_score LIKE "9%" THEN 9
  WHEN communication_about_medicines_dimension_score LIKE "10%" THEN 10
  END AS communication_dimension,
  CASE WHEN cleanliness_and_quietness_of_hospital_environment_achievement_points LIKE "0%" THEN 0
  WHEN cleanliness_and_quietness_of_hospital_environment_achievement_points LIKE "1 %" THEN 1
  WHEN cleanliness_and_quietness_of_hospital_environment_achievement_points LIKE "2%" THEN 2
  WHEN cleanliness_and_quietness_of_hospital_environment_achievement_points LIKE "3%" THEN 3
  WHEN cleanliness_and_quietness_of_hospital_environment_achievement_points LIKE "4%" THEN 4
  WHEN cleanliness_and_quietness_of_hospital_environment_achievement_points LIKE "5%" THEN 5
  WHEN cleanliness_and_quietness_of_hospital_environment_achievement_points LIKE "6%" THEN 6
  WHEN cleanliness_and_quietness_of_hospital_environment_achievement_points LIKE "7%" THEN 7
  WHEN cleanliness_and_quietness_of_hospital_environment_achievement_points LIKE "8%" THEN 8
  WHEN cleanliness_and_quietness_of_hospital_environment_achievement_points LIKE "9%" THEN 9
  WHEN cleanliness_and_quietness_of_hospital_environment_achievement_points LIKE "10%" THEN 10
  END AS cleanliness_achievement,
  CASE WHEN cleanliness_and_quietness_of_hospital_environment_improvement_points LIKE "0%" THEN 0
  WHEN cleanliness_and_quietness_of_hospital_environment_improvement_points LIKE "1 %" THEN 1
  WHEN cleanliness_and_quietness_of_hospital_environment_improvement_points LIKE "2%" THEN 2
  WHEN cleanliness_and_quietness_of_hospital_environment_improvement_points LIKE "3%" THEN 3
  WHEN cleanliness_and_quietness_of_hospital_environment_improvement_points LIKE "4%" THEN 4
  WHEN cleanliness_and_quietness_of_hospital_environment_improvement_points LIKE "5%" THEN 5
  WHEN cleanliness_and_quietness_of_hospital_environment_improvement_points LIKE "6%" THEN 6
  WHEN cleanliness_and_quietness_of_hospital_environment_improvement_points LIKE "7%" THEN 7
  WHEN cleanliness_and_quietness_of_hospital_environment_improvement_points LIKE "8%" THEN 8
  WHEN cleanliness_and_quietness_of_hospital_environment_improvement_points LIKE "9%" THEN 9
  WHEN cleanliness_and_quietness_of_hospital_environment_improvement_points LIKE "10%" THEN 10
  END AS cleanliness_improvement,
  CASE WHEN cleanliness_and_quietness_of_hospital_environment_dimension_score LIKE "0%" THEN 0
  WHEN cleanliness_and_quietness_of_hospital_environment_dimension_score LIKE "1 %" THEN 1
  WHEN cleanliness_and_quietness_of_hospital_environment_dimension_score LIKE "2%" THEN 2
  WHEN cleanliness_and_quietness_of_hospital_environment_dimension_score LIKE "3%" THEN 3
  WHEN cleanliness_and_quietness_of_hospital_environment_dimension_score LIKE "4%" THEN 4
  WHEN cleanliness_and_quietness_of_hospital_environment_dimension_score LIKE "5%" THEN 5
  WHEN cleanliness_and_quietness_of_hospital_environment_dimension_score LIKE "6%" THEN 6
  WHEN cleanliness_and_quietness_of_hospital_environment_dimension_score LIKE "7%" THEN 7
  WHEN cleanliness_and_quietness_of_hospital_environment_dimension_score LIKE "8%" THEN 8
  WHEN cleanliness_and_quietness_of_hospital_environment_dimension_score LIKE "9%" THEN 9
  WHEN cleanliness_and_quietness_of_hospital_environment_dimension_score LIKE "10%" THEN 10
  END AS cleanliness_dimension,
  CASE WHEN discharge_information_achievement_points LIKE "0%" THEN 0
  WHEN discharge_information_achievement_points LIKE "1 %" THEN 1
  WHEN discharge_information_achievement_points LIKE "2%" THEN 2
  WHEN discharge_information_achievement_points LIKE "3%" THEN 3
  WHEN discharge_information_achievement_points LIKE "4%" THEN 4
  WHEN discharge_information_achievement_points LIKE "5%" THEN 5
  WHEN discharge_information_achievement_points LIKE "6%" THEN 6
  WHEN discharge_information_achievement_points LIKE "7%" THEN 7
  WHEN discharge_information_achievement_points LIKE "8%" THEN 8
  WHEN discharge_information_achievement_points LIKE "9%" THEN 9
  WHEN discharge_information_achievement_points LIKE "10%" THEN 10
  END AS discharge_achievement,
  CASE WHEN discharge_information_improvement_points LIKE "0%" THEN 0
  WHEN discharge_information_improvement_points LIKE "1 %" THEN 1
  WHEN discharge_information_improvement_points LIKE "2%" THEN 2
  WHEN discharge_information_improvement_points LIKE "3%" THEN 3
  WHEN discharge_information_improvement_points LIKE "4%" THEN 4
  WHEN discharge_information_improvement_points LIKE "5%" THEN 5
  WHEN discharge_information_improvement_points LIKE "6%" THEN 6
  WHEN discharge_information_improvement_points LIKE "7%" THEN 7
  WHEN discharge_information_improvement_points LIKE "8%" THEN 8
  WHEN discharge_information_improvement_points LIKE "9%" THEN 9
  WHEN discharge_information_improvement_points LIKE "10%" THEN 10
  END AS discharge_improvement,
  CASE WHEN discharge_information_dimension_score LIKE "0%" THEN 0
  WHEN discharge_information_dimension_score LIKE "1 %" THEN 1
  WHEN discharge_information_dimension_score LIKE "2%" THEN 2
  WHEN discharge_information_dimension_score LIKE "3%" THEN 3
  WHEN discharge_information_dimension_score LIKE "4%" THEN 4
  WHEN discharge_information_dimension_score LIKE "5%" THEN 5
  WHEN discharge_information_dimension_score LIKE "6%" THEN 6
  WHEN discharge_information_dimension_score LIKE "7%" THEN 7
  WHEN discharge_information_dimension_score LIKE "8%" THEN 8
  WHEN discharge_information_dimension_score LIKE "9%" THEN 9
  WHEN discharge_information_dimension_score LIKE "10%" THEN 10
  END AS discharge_dimension,
  CASE WHEN overall_rating_achievement_points LIKE "0%" THEN 0
  WHEN overall_rating_achievement_points LIKE "1 %" THEN 1
  WHEN overall_rating_achievement_points LIKE "2%" THEN 2
  WHEN overall_rating_achievement_points LIKE "3%" THEN 3
  WHEN overall_rating_achievement_points LIKE "4%" THEN 4
  WHEN overall_rating_achievement_points LIKE "5%" THEN 5
  WHEN overall_rating_achievement_points LIKE "6%" THEN 6
  WHEN overall_rating_achievement_points LIKE "7%" THEN 7
  WHEN overall_rating_achievement_points LIKE "8%" THEN 8
  WHEN overall_rating_achievement_points LIKE "9%" THEN 9
  WHEN overall_rating_achievement_points LIKE "10%" THEN 10
  END AS overall_achievement,
  CASE WHEN overall_rating_improvement_points LIKE "0%" THEN 0
  WHEN overall_rating_improvement_points LIKE "1 %" THEN 1
  WHEN overall_rating_improvement_points LIKE "2%" THEN 2
  WHEN overall_rating_improvement_points LIKE "3%" THEN 3
  WHEN overall_rating_improvement_points LIKE "4%" THEN 4
  WHEN overall_rating_improvement_points LIKE "5%" THEN 5
  WHEN overall_rating_improvement_points LIKE "6%" THEN 6
  WHEN overall_rating_improvement_points LIKE "7%" THEN 7
  WHEN overall_rating_improvement_points LIKE "8%" THEN 8
  WHEN overall_rating_improvement_points LIKE "9%" THEN 9
  WHEN overall_rating_improvement_points LIKE "10%" THEN 10
  END AS overall_improvement,
  CASE WHEN overall_rating_improvement_points LIKE "0%" THEN 0
  WHEN overall_rating_dimension_score LIKE "1 %" THEN 1
  WHEN overall_rating_dimension_score LIKE "2%" THEN 2
  WHEN overall_rating_dimension_score LIKE "3%" THEN 3
  WHEN overall_rating_dimension_score LIKE "4%" THEN 4
  WHEN overall_rating_dimension_score LIKE "5%" THEN 5
  WHEN overall_rating_dimension_score LIKE "6%" THEN 6
  WHEN overall_rating_dimension_score LIKE "7%" THEN 7
  WHEN overall_rating_dimension_score LIKE "8%" THEN 8
  WHEN overall_rating_dimension_score LIKE "9%" THEN 9
  WHEN overall_rating_dimension_score LIKE "10%" THEN 10
  END AS overall_dimension
FROM surveys_responses
;
