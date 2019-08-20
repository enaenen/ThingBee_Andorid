.class Lcom/sherdle/universal/providers/web/AdvancedWebView$2;
.super Landroid/webkit/WebChromeClient;
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

    .line 671
    iput-object p1, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$2;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 1

    .line 908
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$2;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$2;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 911
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 1

    .line 917
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$2;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 918
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$2;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 920
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 926
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$2;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 927
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$2;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->getVisitedHistory(Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 929
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->getVisitedHistory(Landroid/webkit/ValueCallback;)V

    :goto_0
    return-void
.end method

.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 1

    .line 790
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$2;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$2;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    goto :goto_0

    .line 793
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    :goto_0
    return-void
.end method

.method public onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 890
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$2;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 891
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$2;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 893
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 1

    .line 899
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$2;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 900
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$2;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1

    .line 902
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 1

    .line 772
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$2;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$2;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result p1

    return p1

    .line 775
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result p1

    return p1
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 12

    move-object v0, p0

    .line 935
    iget-object v1, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView$2;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v1, v1, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v1, :cond_0

    .line 936
    iget-object v1, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView$2;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v2, v1, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-object/from16 v11, p9

    invoke-virtual/range {v2 .. v11}, Landroid/webkit/WebChromeClient;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V

    goto :goto_0

    .line 938
    :cond_0
    invoke-super/range {p0 .. p9}, Landroid/webkit/WebChromeClient;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V

    :goto_0
    return-void
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 1

    .line 848
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$2;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 849
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$2;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsHidePrompt()V

    goto :goto_0

    .line 851
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsHidePrompt()V

    :goto_0
    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2

    .line 835
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$2;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-boolean v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mGeolocationEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 836
    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 838
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$2;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_1

    .line 839
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$2;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    goto :goto_0

    .line 841
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    :goto_0
    return-void
.end method

.method public onHideCustomView()V
    .locals 1

    .line 763
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$2;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 764
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$2;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    goto :goto_0

    .line 766
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    :goto_0
    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    .line 799
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$2;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 800
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$2;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1

    .line 802
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    .line 826
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$2;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 827
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$2;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1

    .line 829
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    .line 808
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$2;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 809
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$2;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1

    .line 811
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 7

    .line 817
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$2;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 818
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$2;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v1, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result p1

    return p1

    .line 820
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result p1

    return p1
.end method

.method public onJsTimeout()Z
    .locals 1

    .line 881
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$2;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 882
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$2;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onJsTimeout()Z

    move-result v0

    return v0

    .line 884
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onJsTimeout()Z

    move-result v0

    return v0
.end method

.method public onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 858
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 859
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$2;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 860
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$2;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequest(Landroid/webkit/PermissionRequest;)V

    goto :goto_0

    .line 862
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequest(Landroid/webkit/PermissionRequest;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPermissionRequestCanceled(Landroid/webkit/PermissionRequest;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 870
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 871
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$2;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 872
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$2;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequestCanceled(Landroid/webkit/PermissionRequest;)V

    goto :goto_0

    .line 874
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequestCanceled(Landroid/webkit/PermissionRequest;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    .line 706
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$2;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$2;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    goto :goto_0

    .line 709
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    :goto_0
    return-void
.end method

.method public onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 7

    .line 944
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$2;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 945
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$2;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v1, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebChromeClient;->onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V

    goto :goto_0

    .line 947
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V

    :goto_0
    return-void
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 724
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$2;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$2;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 727
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 715
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$2;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$2;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0

    .line 718
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 1

    .line 733
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$2;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 734
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$2;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    goto :goto_0

    .line 736
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public onRequestFocus(Landroid/webkit/WebView;)V
    .locals 1

    .line 781
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$2;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$2;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onRequestFocus(Landroid/webkit/WebView;)V

    goto :goto_0

    .line 784
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onRequestFocus(Landroid/webkit/WebView;)V

    :goto_0
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 752
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 753
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$2;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$2;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V

    goto :goto_0

    .line 756
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1

    .line 742
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$2;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 743
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$2;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mCustomWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    goto :goto_0

    .line 745
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    :goto_0
    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 693
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v1, 0x15

    if-lt p1, v1, :cond_1

    .line 694
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getMode()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/4 v0, 0x1

    .line 696
    :cond_0
    iget-object p1, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$2;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2, v0}, Lcom/sherdle/universal/providers/web/AdvancedWebView;->openFileInput(Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Z)V

    return p3

    :cond_1
    return v0
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 676
    invoke-virtual {p0, p1, v0}, Lcom/sherdle/universal/providers/web/AdvancedWebView$2;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 681
    invoke-virtual {p0, p1, p2, v0}, Lcom/sherdle/universal/providers/web/AdvancedWebView$2;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 687
    iget-object p2, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$2;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-virtual {p2, p1, p3, v0}, Lcom/sherdle/universal/providers/web/AdvancedWebView;->openFileInput(Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Z)V

    return-void
.end method
