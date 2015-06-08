# 利用 Vagrant 建立 Rails 開發環境

## 先期需求

1. 安裝 VirtualBox
2. 安裝 Vagrant
3. 複製本專案到您的電腦上，例如 `cd $HOME && git clone https://gitlab.ecoworkinc.com/hiroshiyui/vagrantfiles`

## 建置

1. `cd $HOME/vagrantfiles/rails`
2. `vagrant up`

Vagrant 會根據 Vagrantfile 抓取系統檔、根據設定建置環境，這需要一點時間。

## 環境利用說明

* 在 $HOME/vagrantfiles/rails/ （或您實際存放本專案的資料夾）底下，有 `projects/` 子資料夾，是與開設出來的 Vagrant 虛擬機器的 `/home/vagrant/projects/` 對映，建議您把 Rails 專案都放在裡頭，以便管理。
