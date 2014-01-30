require 'spec_helper'

describe "transactions/new" do
  before(:each) do
    assign(:transaction, stub_model(Transaction,
      :amount => "MyString",
      :recipient_id => 1,
      :recipient_name => "MyString"
    ).as_new_record)
  end

  it "renders new transaction form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", transactions_path, "post" do
      assert_select "input#transaction_amount[name=?]", "transaction[amount]"
      assert_select "input#transaction_recipient_id[name=?]", "transaction[recipient_id]"
      assert_select "input#transaction_recipient_name[name=?]", "transaction[recipient_name]"
    end
  end
end
