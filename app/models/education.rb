class Education < ApplicationRecord
  EDUCATION_STATUS = {
    none: "n/a",
    complete: "Complete",
    selected_resident: "Selected (resident)",
    selected_non_resident: "Selected (non-resident)",
  }

  belongs_to :worksheet

  enum ews: { none: 0, complete: 1, selected_resident: 2, selected_non_resident: 3 }, _prefix: true
  enum cns: { none: 0, complete: 1, selected_resident: 2, selected_non_resident: 3 }, _prefix: true
  enum war_college: { none: 0, complete: 1, selected_resident: 2, selected_non_resident: 3 }, _prefix: true
  enum graduate_degree: { none: 0, complete: 1, selected_resident: 2, selected_non_resident: 3 }, _prefix: true
  enum self_study: { none: 0, complete: 1, selected_resident: 2, selected_non_resident: 3 }, _prefix: true
  enum jpm_phase_i: { none: 0, complete: 1, selected_resident: 2, selected_non_resident: 3 }, _prefix: true
  enum jpm_phase_ii: { none: 0, complete: 1, selected_resident: 2, selected_non_resident: 3 }, _prefix: true
  enum other: { none: 0, complete: 1, selected_resident: 2, selected_non_resident: 3 }, _prefix: true
end
