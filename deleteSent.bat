echo off
color 0a
cd "%userprofile%\Desktop\Celu\WhatsApp\Media"
if exist "GBWhatsApp Animated Gifs\Sent" (rmdir /s /q "GBWhatsApp Animated Gifs\Sent")
if exist "GBWhatsApp Audio\Sent" (rmdir /s /q "GBWhatsApp Audio\Sent")
if exist "GBWhatsApp Documents\Sent" (rmdir /s /q "GBWhatsApp Documents\Sent")
if exist "GBWhatsApp Images\Sent" (rmdir /s /q "GBWhatsApp Images\Sent")
if exist "GBWhatsApp Video\Sent" (rmdir /s /q "GBWhatsApp Video\Sent")
if exist "WhatsApp Animated Gifs\Sent" (rmdir /s /q "WhatsApp Animated Gifs\Sent")
if exist "WhatsApp Audio\Sent" (rmdir /s /q "WhatsApp Audio\Sent")
if exist "WhatsApp Documents\Sent" (rmdir /s /q "WhatsApp Documents\Sent")
if exist "WhatsApp Images\Sent" (rmdir /s /q "WhatsApp Images\Sent")
if exist "WhatsApp Video\Sent" (rmdir /s /q "WhatsApp Video\Sent")