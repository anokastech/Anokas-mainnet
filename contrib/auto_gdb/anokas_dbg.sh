#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.anokascore/anokasd.pid file instead
anokas_pid=$(<~/.anokascore/testnet3/anokasd.pid)
sudo gdb -batch -ex "source debug.gdb" anokasd ${anokas_pid}
