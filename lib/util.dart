import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Util {
  configuraFundo(imagem) {
    return BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/imgs/${imagem}'),
        fit: BoxFit.cover,
      ),
    );
  }

  criaTexto(conteudo, tamanho, cor) {
    return Text(
      conteudo,
      style: TextStyle(
        fontSize: tamanho,
        color: cor,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  criaBotao(conteudoTexto, tamanhoTexto, corTexto, acaoBotao, corFundoBotao) {
    return TextButton(
      style: TextButton.styleFrom(
          backgroundColor: corFundoBotao,
          fixedSize: Size(100, 100),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          )),
      onPressed: acaoBotao,
      child: criaTexto(conteudoTexto, tamanhoTexto, corTexto),
    );
  }
}
