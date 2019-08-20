.class Lcom/sherdle/universal/providers/web/AdvancedWebView$1;
.super Landroid/webkit/WebViewClient;
.source "AdvancedWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/web/AdvancedWebView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/web/AdvancedWebView;)V
    .locals 0

    .line 474
    iput-object p1, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$1;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$1;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$1;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    goto :goto_0

    .line 596
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$1;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$1;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0

    .line 587
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    :goto_0
    return-void
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$1;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$1;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0

    .line 550
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$1;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/web/AdvancedWebView;->hasError()Z

    move-result v0

    if-nez v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$1;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mListener:Lcom/sherdle/universal/providers/web/AdvancedWebView$Listener;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$1;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mListener:Lcom/sherdle/universal/providers/web/AdvancedWebView$Listener;

    invoke-interface {v0, p2}, Lcom/sherdle/universal/providers/web/AdvancedWebView$Listener;->onPageFinished(Ljava/lang/String;)V

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$1;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_1

    .line 498
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$1;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$1;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/web/AdvancedWebView;->hasError()Z

    move-result v0

    if-nez v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$1;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mListener:Lcom/sherdle/universal/providers/web/AdvancedWebView$Listener;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$1;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mListener:Lcom/sherdle/universal/providers/web/AdvancedWebView$Listener;

    invoke-interface {v0, p2, p3}, Lcom/sherdle/universal/providers/web/AdvancedWebView$Listener;->onPageStarted(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$1;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_1

    .line 485
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$1;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method public onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 612
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 613
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$1;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$1;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V

    goto :goto_0

    .line 616
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$1;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/web/AdvancedWebView;->setLastError()V

    .line 506
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$1;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mListener:Lcom/sherdle/universal/providers/web/AdvancedWebView$Listener;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$1;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mListener:Lcom/sherdle/universal/providers/web/AdvancedWebView$Listener;

    invoke-interface {v0, p2, p3, p4}, Lcom/sherdle/universal/providers/web/AdvancedWebView$Listener;->onPageError(ILjava/lang/String;Ljava/lang/String;)V

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$1;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_1

    .line 511
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$1;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$1;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$1;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 626
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 660
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_1

    .line 661
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$1;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$1;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 664
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    .line 602
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$1;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$1;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    goto :goto_0

    .line 605
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    :goto_0
    return-void
.end method

.method public onScaleChanged(Landroid/webkit/WebView;FF)V
    .locals 1

    .line 650
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$1;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$1;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onScaleChanged(Landroid/webkit/WebView;FF)V

    goto :goto_0

    .line 653
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onScaleChanged(Landroid/webkit/WebView;FF)V

    :goto_0
    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .locals 1

    .line 641
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$1;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$1;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 644
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    :goto_0
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 571
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 572
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$1;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$1;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 575
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 557
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 558
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$1;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$1;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 561
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 1

    .line 632
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$1;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$1;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 635
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .line 518
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$1;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    invoke-virtual {v0, p2}, Lcom/sherdle/universal/providers/web/AdvancedWebView;->isHostnameAllowed(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 520
    iget-object p1, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$1;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object p1, p1, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mListener:Lcom/sherdle/universal/providers/web/AdvancedWebView$Listener;

    if-eqz p1, :cond_0

    .line 522
    iget-object p1, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$1;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object p1, p1, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mListener:Lcom/sherdle/universal/providers/web/AdvancedWebView$Listener;

    invoke-interface {p1, p2}, Lcom/sherdle/universal/providers/web/AdvancedWebView$Listener;->onExternalPageRequest(Ljava/lang/String;)V

    :cond_0
    return v1

    .line 530
    :cond_1
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$1;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_2

    .line 532
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$1;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 539
    :cond_2
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v1
.end method
