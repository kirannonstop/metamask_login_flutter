import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class WalletEvent extends Equatable {}

class MetamaskAuthEvent extends WalletEvent {
  final String signatureFromBackend;
  MetamaskAuthEvent({required this.signatureFromBackend});
  @override
  List<Object?> get props => [signatureFromBackend];
}

class VerifySignatureEvent extends WalletEvent {
  final String signatureFromWallet;
  final String signatureFromBk;
  final String walletAddress;
  VerifySignatureEvent(
      {required this.signatureFromWallet,
      required this.signatureFromBk,
      required this.walletAddress});
  @override
  List<Object?> get props =>
      [signatureFromWallet, signatureFromBk, walletAddress];
}
