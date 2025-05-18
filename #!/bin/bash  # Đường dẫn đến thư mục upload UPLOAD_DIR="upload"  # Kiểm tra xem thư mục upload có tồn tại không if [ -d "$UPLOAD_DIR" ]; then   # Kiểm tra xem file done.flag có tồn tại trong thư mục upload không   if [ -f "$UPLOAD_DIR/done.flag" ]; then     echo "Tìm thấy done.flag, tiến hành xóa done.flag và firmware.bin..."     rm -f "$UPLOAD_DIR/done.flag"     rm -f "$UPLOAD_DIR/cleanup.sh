#!/bin/bash

# Đường dẫn đến thư mục upload
UPLOAD_DIR="upload"

# Kiểm tra xem thư mục upload có tồn tại không
if [ -d "$UPLOAD_DIR" ]; then
  # Kiểm tra xem file done.flag có tồn tại trong thư mục upload không
  if [ -f "$UPLOAD_DIR/done.flag" ]; then
    echo "Detect done.flag, delete done.flag và firmware.bin..."
    rm -f "$UPLOAD_DIR/done.flag"
    rm -f "$UPLOAD_DIR/firmware.bin"
    echo " done.flag and firmware.bin are deleted"
  else
    echo "Can not find done.flag in folder upload."
  fi
else
  echo "folder upload does not exist."
fi
