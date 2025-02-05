#!/bin/bash

# Lấy bộ gõ hiện tại từ IBus
current_layout=$(ibus engine)
echo $current_layout
# Kiểm tra nếu bộ gõ là tiếng Anh, chuyển sang Vietnamese (Unikey)
if [[ "$current_layout" == "xkb:us::eng" ]]; then
    ibus engine "Unikey"  # Chuyển sang Unikey tiếng Việt
# Nếu bộ gõ là tiếng Việt, chuyển sang English
elif [[ "$current_layout" == "Unikey" ]]; then
    ibus engine "xkb:us::eng"  # Chuyển sang bộ gõ Tiếng Anh
fi