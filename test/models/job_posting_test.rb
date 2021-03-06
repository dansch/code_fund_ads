# == Schema Information
#
# Table name: job_postings
#
#  id                         :bigint           not null, primary key
#  auto_renew                 :boolean          default(TRUE), not null
#  city                       :string
#  company_email              :string
#  company_logo_url           :string
#  company_name               :string
#  company_url                :string
#  country_code               :string
#  description                :text             not null
#  detail_view_count          :integer          default(0), not null
#  display_salary             :boolean          default(TRUE)
#  end_date                   :date             not null
#  full_text_search           :tsvector
#  how_to_apply               :text
#  job_type                   :string           not null
#  keywords                   :string           default([]), not null, is an Array
#  list_view_count            :integer          default(0), not null
#  max_annual_salary_cents    :integer          default(0), not null
#  max_annual_salary_currency :string           default("USD"), not null
#  min_annual_salary_cents    :integer          default(0), not null
#  min_annual_salary_currency :string           default("USD"), not null
#  offers                     :string           default([]), not null, is an Array
#  plan                       :string
#  province_code              :string
#  province_name              :string
#  remote                     :boolean          default(FALSE), not null
#  remote_country_codes       :string           default([]), not null, is an Array
#  source                     :string           default("internal"), not null
#  source_identifier          :string
#  start_date                 :date             not null
#  status                     :string           default("pending"), not null
#  title                      :string           not null
#  url                        :text
#  created_at                 :datetime         not null
#  updated_at                 :datetime         not null
#  campaign_id                :bigint
#  coupon_id                  :bigint
#  organization_id            :bigint
#  session_id                 :string
#  stripe_charge_id           :string
#  user_id                    :bigint
#
# Indexes
#
#  index_job_postings_on_auto_renew                    (auto_renew)
#  index_job_postings_on_campaign_id                   (campaign_id)
#  index_job_postings_on_city                          (city)
#  index_job_postings_on_company_name                  (company_name)
#  index_job_postings_on_country_code                  (country_code)
#  index_job_postings_on_coupon_id                     (coupon_id)
#  index_job_postings_on_detail_view_count             (detail_view_count)
#  index_job_postings_on_end_date                      (end_date)
#  index_job_postings_on_full_text_search              (full_text_search) USING gin
#  index_job_postings_on_job_type                      (job_type)
#  index_job_postings_on_keywords                      (keywords) USING gin
#  index_job_postings_on_list_view_count               (list_view_count)
#  index_job_postings_on_max_annual_salary_cents       (max_annual_salary_cents)
#  index_job_postings_on_min_annual_salary_cents       (min_annual_salary_cents)
#  index_job_postings_on_offers                        (offers) USING gin
#  index_job_postings_on_organization_id               (organization_id)
#  index_job_postings_on_plan                          (plan)
#  index_job_postings_on_province_code                 (province_code)
#  index_job_postings_on_province_name                 (province_name)
#  index_job_postings_on_remote                        (remote)
#  index_job_postings_on_remote_country_codes          (remote_country_codes) USING gin
#  index_job_postings_on_session_id                    (session_id)
#  index_job_postings_on_source_and_source_identifier  (source,source_identifier) UNIQUE
#  index_job_postings_on_start_date                    (start_date)
#  index_job_postings_on_title                         (title)
#  index_job_postings_on_user_id                       (user_id)
#

require "test_helper"

class JobPostingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
