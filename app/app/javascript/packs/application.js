// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

// ここから追加

// viewからjQueryを読み込めるようにするため追加
window.$ = window.jQuery = require('jquery');

// Ratyを読み込む
require('./jquery.raty')

// ここまで追加