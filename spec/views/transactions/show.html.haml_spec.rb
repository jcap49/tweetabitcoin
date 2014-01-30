require 'spec_helper'

describe "transactions/show" do
  before(:each) do
    @transaction = assign(:transaction, stub_model(Transaction,
      :amount => "Amount",
      :recipient_id => 1,
      :recipient_name => "Recipient Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Amount/)
    rendered.should match(/1/)
    rendered.should match(/Recipient Name/)
  end
end
