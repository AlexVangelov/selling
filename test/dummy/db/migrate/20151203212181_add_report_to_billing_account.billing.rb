# This migration comes from billing (originally 20140726170002)
class AddReportToBillingAccount < ActiveRecord::Migration
  def change
    add_reference :billing_accounts, :report, index: true
  end
end
