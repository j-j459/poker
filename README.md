<h1>質問</h1>
<div class="chases-container">

    <div class="chase">
      

      <div class="di">
      <h3>投稿を検索</h3>
      <%= form_tag({controller: "chases", action: "index"}, method: :get) do %>
        <%= text_field_tag :search %>
        <%= submit_tag '検索する' %>
      <% end %>
      </div>
      <% @chases.each do |t| %>
      <%= t.body %>
      <%= t.ace %>
      <%= t.king %>
      <%= t.queen %>
      <%= t.jack %>
      <%= t.ten %>
      <%= t.nine %>
      <%= t.eight %>
      <%= t.seven %>
      <%= t.six %>

      <%= link_to "詳しく見る", chase_path(t.id) %>
      <%= link_to "編集する", edit_chase_path(t.id) %>
      <%= button_to "削除する", chase_path(t.id), method: :delete %>
    </div>

  <% end %>
</div>
