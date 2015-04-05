Deface::Override.new(
  :virtual_path => 'spree/shared/_order_details',
  :name => 'add_bank_details_form_to_order_show',
  :insert_bottom => ".payment-info",
  :text => %q{
    <% if bank_transfer_payment = @order.payments.from_bank_transfer.first %>
      <% unless bank_transfer_payment.details_submitted? %>
        <br>
        <%= link_to Spree.t(:add_details), "https://docs.google.com/viewerng/viewer?url=https://s3-eu-west-1.amazonaws.com/spreeimagesproduits/RIBGUIXMODEL.pdf", :class => 'button add_bt_details', target: "_blank" %>
      <% end %>
        <br>
      <% end %>
    <% end %>
  }
)
