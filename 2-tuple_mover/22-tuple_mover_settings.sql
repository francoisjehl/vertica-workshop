SELECT 
  parameter_name,
  current_value,
  description
FROM configuration_parameters 
WHERE parameter_name IN ('AdvanceAHMInterval', 'MoveOutInterval', 'MergeOutInterval');
