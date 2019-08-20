.class public Lcom/sherdle/universal/util/WebHelper;
.super Ljava/lang/Object;
.source "WebHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static docToBetterHTML(Lorg/jsoup/nodes/Document;Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    :try_start_0
    const-string v0, "img[src]"

    .line 18
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    const-string v1, "width"

    invoke-virtual {v0, v1}, Lorg/jsoup/select/Elements;->removeAttr(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 20
    invoke-static {v0}, Lcom/sherdle/universal/util/Log;->printStackTrace(Ljava/lang/Exception;)V

    :goto_0
    :try_start_1
    const-string v0, "a[href]"

    .line 22
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    const-string v1, "style"

    invoke-virtual {v0, v1}, Lorg/jsoup/select/Elements;->removeAttr(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 24
    invoke-static {v0}, Lcom/sherdle/universal/util/Log;->printStackTrace(Ljava/lang/Exception;)V

    :goto_1
    :try_start_2
    const-string v0, "div"

    .line 26
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    const-string v1, "style"

    invoke-virtual {v0, v1}, Lorg/jsoup/select/Elements;->removeAttr(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 28
    invoke-static {v0}, Lcom/sherdle/universal/util/Log;->printStackTrace(Ljava/lang/Exception;)V

    :goto_2
    :try_start_3
    const-string v0, "iframe"

    .line 30
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    const-string v1, "width"

    const-string v2, "100%"

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/select/Elements;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/select/Elements;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 32
    invoke-static {v0}, Lcom/sherdle/universal/util/Log;->printStackTrace(Ljava/lang/Exception;)V

    .line 37
    :goto_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 39
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "direction:RTL; unicode-bidi:embed;"

    goto :goto_4

    :cond_0
    const-string p1, ""

    .line 45
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<style>img{max-width: 100%; width: auto; height: auto;} p{max-width: 100%; width:auto; height: auto;}@font-face {font-family: \'Currents-Light-Sans\';font-style: normal;font-weight: normal;src: local(\'sans-serif-light\'), url(\'file:///android_asset/fonts/Roboto-Light.ttf\') format(\'truetype\');} body p {  font-family: \'Currents-Light-Sans\', serif;} .list-inline {display: inline;list-style: none;} body {  max-width: 100% !important;font-family: \'Currents-Light-Sans\', serif;margin: 0;padding: 0;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}</style>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 73
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->head()Lorg/jsoup/nodes/Element;

    move-result-object v0

    .line 74
    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Element;->append(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 76
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTextViewFontSize(Landroid/content/Context;)I
    .locals 2

    .line 87
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "fontSize"

    const-string v1, "16"

    .line 88
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 89
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/16 v0, 0x10

    if-lt p0, v0, :cond_0

    add-int/lit8 p0, p0, -0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    if-ne p0, v1, :cond_1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    if-ge p0, v0, :cond_2

    add-int/lit8 p0, p0, -0x1

    :cond_2
    :goto_0
    return p0
.end method

.method public static getWebViewFontSize(Landroid/content/Context;)I
    .locals 2

    .line 81
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "fontSize"

    const-string v1, "16"

    .line 82
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 83
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
