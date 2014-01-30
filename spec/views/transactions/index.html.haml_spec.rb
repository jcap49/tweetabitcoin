require 'spec_helper'

describe "transactions/index" do
  before(:each) do
    assign(:transactions, [
      stub_model(Transaction,
        :amount => "Amount",
        :recipient_id => 1,
        :recipient_name => "Recipient Name"
      ),
      stub_model(Transaction,
        :amount => "Amount",
        :recipient_id => 1,
        :recipient_name => "Recipient Name"
      )
    ])
  end

  it "renders a list of transactions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Amount".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Recipient Name".to_s, :count => 2
  end
end
