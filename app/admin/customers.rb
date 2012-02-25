ActiveAdmin.register Customer do

  index do
  	column("Email", :sortable => :email) {|customer| link_to "#{customer.email}", admin_customer_path(customer)}
  	column("Last", :last_name, :sortable => :last_name)
  	column "First", :first_name
    # column "First", :sortable => :first_name) {|order| link_to "##{order.id} ", admin_order_path(order) }
    # column("State") {|order| status_tag(order.state) }
    # column("Date", :checked_out_at)
    # column("Customer", :user, :sortable => :user_id)
    # column("Total") {|order| number_to_currency order.total_price }
  end

  show :title => :email do
    panel "Order History" do
      table_for(customer.invoices) do
        column("Invoice", :sortable => :id) {|invoice| link_to "##{invoice.invoice_number}", admin_invoice_path(invoice) }
        column("Authorized") {|invoice| status_tag (invoice.authorized ? "Authorized" : "Pending"), (invoice.authorized ? :ok : :error) }
        # column("Date", :sortable => :checked_out_at){|order| pretty_format(order.checked_out_at) }
        # column("Total") {|order| number_to_currency order.total_price }
      end
    end
    active_admin_comments
  end

  sidebar "Customer Details", :only => :show do
    attributes_table_for customer, :first_name, :last_name, :email, :created_at
  end
end
