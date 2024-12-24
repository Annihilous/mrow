class Worksheet < ApplicationRecord
  COMPONANTS = ["Active", "Reserve"]

  OFFICER_RANKS = [
    "Warrant Officer",
    "Chief Warrant Officer 2",
    "Chief Warrant Officer 3",
    "Chief Warrant Officer 4",
    "Chief Warrant Officer 5",
    "Second Lieutenant",
    "First Lieutenant",
    "Captain",
    "Major",
    "Lieutenant Colonel",
    "Colonel"
  ]

  REPORTING_OCCASIONS = [
    "Annual (AN)",
    "Change of Duty (CHOD)",
    "Direct (DIR)",
    "Disability Retirement (DISAB)",
    "End of Tour (EOT)",
    "Promotion (PROMO)",
    "Reenlistment Confirmation (RFC)",
    "Reenlistment Confirmation (Mobile) (RFC-M)",
    "Special (SPE)",
    "Temporary Duty (TEMDU)",
    "Transfer (TRANS)",
    "Non-Selection for Promotion (NSP)"
  ]

  USMCR_STATUSES = [
    "Inactive Reserve (IRR)",
    "Individual Mobilization Augmentee (IMA)",
    "Individual Ready Reserve (IRR)",
    "Mobilized",
    "Mobilization Day (M-Day)",
    "Permanent Disability Retired List (PDRL)",
    "Ready Reserve",
    "Retired Reserve",
    "Selected Marine Corps Reserve (SMCR)",
    "Standby Reserve",
    "Temporary Disability Retired List (TDRL)"
  ]

  has_one :education, dependent: :destroy
  accepts_nested_attributes_for :education

  validates :mro_rank,
            :rs_rank,
            :ro_rank, presence: true, inclusion: { in: OFFICER_RANKS }

  validates :from_date,
            :to_date,
            :mmsb_due_date,
            presence: true

  validates :mro_component, presence: true, inclusion: { in: COMPONANTS }
  validates :mro_status, presence: true, inclusion: { in: USMCR_STATUSES }
  validates :reporting_occasion, presence: true, inclusion: { in: REPORTING_OCCASIONS }
end
