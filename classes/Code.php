<?php
class Code{
  private $name, $locationID, $hex, $effect, $sideEffect, $singleUse, $numUsers, $expiration, $used, $userID, $codeID, $timeUsed;

  function __construct($name, $hex, $effect){
    $this->name = $name;
    $this->hex = $hex;
    $this->effect = $effect;
  }

  public function getName() {
    return $this->name;
  }

  public function getLocationID() {
    return $this->locationID;
  }

  public function getHex() {
    return $this->locationID;
  }

  public function getEffect() {
    return $this->effect;
  }

  public function getSideEffect() {
    return $this->sideEffect;
  }

  public function getSingleUse() {
    return $this->singleUse;
  }

  public function getNumUsers() {
    return $this->numUsers;
  }

  public function getExpiration() {
    return $this->expiration;
  }

  public function getUsed() {
    return $this->used;
  }

  public function getUserID() {
    return $this->userID;
  }

  public function getCodeID() {
    return $this->codeID;
  }

  public function getTimeUsed() {
    return $this->timeUsed;
  }

  public function setCode($data) {
  }

  public function getQuerry() {
    
  }
}
?>
