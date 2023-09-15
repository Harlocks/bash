#!/bin/bash

clear
until $(ps axu |grep chromium |grep -v grep > /dev/null)
do
	echo "⌛ Inicie o navegador Chromium..."
	sleep 2
done

clear
echo "✅ Navegador Chromium iniciado"
echo "PID $(pgrep chromium)"


