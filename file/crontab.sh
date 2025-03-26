#!/bin/bash
path="/file/crontab"

if [ ! -d  $path ]; then
    mkdir -p $path
fi

echo "0 10,15 * * * /file/sh_file/EWB_DEDUCT.sh" > $path/crontab.bak
echo "30 10,11,16,17 * * * /file/sh_file/EWB_DEDUCT.sh" >> $path/crontab.bak
echo "30 9 * * * /file/sh_file/EWB_PAYMENT_OTHER.sh" >> $path/crontab.bak
echo "0 11 * * * /file/sh_file/EWB_PAYMENT_DEDUCT.sh" >> $path/crontab.bak
echo "15 11 * * * /file/sh_file/EWB_PAYMENT_ALL.sh" >> $path/crontab.bak
echo "30 11 * * 1-5 nohup /usr/bin/python3 /opt/MA_LOAN/MAEmailTask.py > /opt/MA_LOAN/nohup.out 2>&1 &" >> $path/crontab.bak
echo "0 9,10,11,12,13,14,15,16,17,18,19,20 * * * /file/sh_file/EWB_TRADE_ADVISE_ALL.sh" >> $path/crontab.bak
echo "15 9,10,11,12,13,14,15,16,17,18,19 * * * /file/sh_file/EWB_TRADE_ADVISE_ALL.sh" >> $path/crontab.bak
echo "30 9,10,11,12,13,14,15,16,17,18,19 * * * /file/sh_file/EWB_TRADE_ADVISE_ALL.sh" >> $path/crontab.bak
echo "45 9,10,11,12,13,14,15,16,17,18,19 * * * /file/sh_file/EWB_TRADE_ADVISE_ALL.sh" >> $path/crontab.bak
echo "30 9 * * *  nohup /usr/bin/python3  /opt/FX_RATE/Recive.py > /opt/FX_RATE/nohup.out 2>&1 &" >> $path/crontab.bak
echo "0  10,11,12,13,14,15,16,17 * * *  nohup /usr/bin/python3  /opt/FX_RATE/fx_remind.py > /opt/FX_RATE/nohup.out 2>&1 &" >> $path/crontab.bak
echo "30 10,11,12,13,14,15,16,17 * * *  nohup /usr/bin/python3  /opt/FX_RATE/fx_remind.py > /opt/FX_RATE/nohup.out 2>&1 &" >> $path/crontab.bak
echo "30 11,17 * * * /file/sh_file/EWB_REMIND.sh" >> $path/crontab.bak
echo "0 15 * * * /file/sh_file/EWB_REMIND.sh" >> $path/crontab.bak
echo "55 16 * * * /file/sh_file/fx_ebank_match.sh" >> $path/crontab.bak
echo "20 17 * * * /file/sh_file/EWB_BATDEDUCT.sh" >> $path/crontab.bak
echo "6 10,11,12,13,14,15,16,17,18 * * * /file/sh_file/gen_fin_cr.sh" >> $path/crontab.bak
echo "21 10,11,12,13,14,15,16,17,18 * * * /file/sh_file/gen_fin_cr.sh" >> $path/crontab.bak
echo "36 10,11,12,13,14,15,16,17,18 * * * /file/sh_file/gen_fin_cr.sh" >> $path/crontab.bak
echo "51 10,11,12,13,14,15,16,17 * * * /file/sh_file/gen_fin_cr.sh" >> $path/crontab.bak
echo "0 10 * * * /file/sh_file/ASSET_PUSH.sh" >> $path/crontab.bak
echo "45 9 * * * /file/sh_file/RELATE_CUSTOMER.sh" >> $path/crontab.bak
echo "0 19 * * * /file/sh_file/dep_push_gl.sh" >> $path/crontab.bak
crontab $path/crontab.bak
