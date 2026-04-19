---
layout: single
title: "Contact"
permalink: /contact/
---

Get in touch with the Lake Chelan Flyers.

<form action="https://api.web3forms.com/submit" method="POST">
  <input type="hidden" name="access_key" value="975f6849-4d9c-4e3b-9cb1-56765c96931e">
  <input type="hidden" name="subject" value="Lake Chelan Flyers Website Contact">
  <input type="hidden" name="redirect" value="false">
  <div style="display:none"><input name="botcheck"></div>

  <p>
    <label for="name">Name</label><br>
    <input type="text" id="name" name="name" required style="width:100%;max-width:500px;">
  </p>
  <p>
    <label for="email">Email</label><br>
    <input type="email" id="email" name="email" required style="width:100%;max-width:500px;">
  </p>
  <p>
    <label for="message">Message</label><br>
    <textarea id="message" name="message" rows="6" required style="width:100%;max-width:500px;"></textarea>
  </p>
  <p>
    <button type="submit" class="btn btn--primary">Send Message</button>
  </p>
</form>

<div id="result"></div>

<script>
  document.querySelector("form").addEventListener("submit", function(e) {
    e.preventDefault();
    var form = e.target;
    var result = document.getElementById("result");
    fetch(form.action, { method: "POST", body: new FormData(form) })
      .then(function(r) { return r.json(); })
      .then(function(data) {
        if (data.success) {
          result.innerHTML = "<p><strong>Thank you! Your message has been sent.</strong></p>";
          form.reset();
        } else {
          result.innerHTML = "<p>Something went wrong. Please try again or contact us via Telegram.</p>";
        }
      })
      .catch(function() {
        result.innerHTML = "<p>Something went wrong. Please try again or contact us via Telegram.</p>";
      });
  });
</script>
