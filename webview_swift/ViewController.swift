//
//  ViewController.swift
//  webview_swift
//
//  Created by Usuário Convidado on 01/07/17.
//  Copyright © 2017 Heider Lopes. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var meuWebView: UIWebView!
    @IBOutlet weak var meuActivityIndicator: UIActivityIndicatorView!
    
    let URL_PAGINA = "http://heiderlopes.com.br"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        meuActivityIndicator.startAnimating()
        
        let URL_OK = URL(string:URL_PAGINA)
        let request = URLRequest(url: URL_OK!)
        
        meuWebView.delegate = self
        meuWebView.loadRequest(request)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        meuActivityIndicator.stopAnimating()
        meuActivityIndicator.isHidden = true
    }
    
    func webView(_ webView: UIWebView, didFailLoadWithError error : Error) {
        
        let alerta = UIAlertController(
            title: "Aviso",
            message: "Erro \(error.localizedDescription)",
            preferredStyle: UIAlertControllerStyle.alert)
        
        
        alerta.addAction(UIAlertAction(
            title: "OK",
            style: UIAlertActionStyle.default,
            handler: nil))
        
        present(alerta, animated: true, completion: nil)
    }
    
//    let alerta = UIAlertController(
//        title: "Forma para receber a rota do veículo",
//        message: "Faça a sua escolha",
//        preferredStyle: UIAlertControllerStyle.actionSheet)
//    
//    alerta.addAction(UIAlertAction(
//    title: "SMS",
//    style: UIAlertActionStyle.default,
//    handler: {action in self.lblRota.text = action.title}))
//    
//    alerta.addAction(UIAlertAction(
//    title: "E-mail",
//    style: UIAlertActionStyle.default,
//    handler: {action in self.lblRota.text = action.title}))
//    
//    alerta.addAction(UIAlertAction(
//    title: "Cancelar",
//    style: UIAlertActionStyle.cancel,
//    handler: nil))
//    
//    present(alerta, animated: true, completion: nil)


}

