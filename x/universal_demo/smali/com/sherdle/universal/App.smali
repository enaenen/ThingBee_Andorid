.class public Lcom/sherdle/universal/App;
.super Landroid/support/multidex/MultiDexApplication;
.source "App.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/App$NotificationHandler;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/support/multidex/MultiDexApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    .line 28
    invoke-super {p0}, Landroid/support/multidex/MultiDexApplication;->onCreate()V

    .line 30
    new-instance v0, Lcom/google/firebase/FirebaseOptions$Builder;

    invoke-direct {v0}, Lcom/google/firebase/FirebaseOptions$Builder;-><init>()V

    const-string v1, "<VAL>"

    invoke-virtual {v0, v1}, Lcom/google/firebase/FirebaseOptions$Builder;->setApiKey(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object v0

    const-string v1, "<VAL>"

    .line 31
    invoke-virtual {v0, v1}, Lcom/google/firebase/FirebaseOptions$Builder;->setApplicationId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseOptions$Builder;->build()Lcom/google/firebase/FirebaseOptions;

    move-result-object v0

    .line 30
    invoke-static {p0, v0}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;Lcom/google/firebase/FirebaseOptions;)Lcom/google/firebase/FirebaseApp;

    const v0, 0x7f0f00a2

    .line 34
    invoke-virtual {p0, v0}, Lcom/sherdle/universal/App;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f0f00a3

    .line 35
    invoke-virtual {p0, v1}, Lcom/sherdle/universal/App;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/sherdle/universal/App;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/sherdle/universal/App$NotificationHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sherdle/universal/App$NotificationHandler;-><init>(Lcom/sherdle/universal/App;Lcom/sherdle/universal/App$1;)V

    invoke-static {p0, v1, v0, v2}, Lcom/onesignal/OneSignal;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$NotificationOpenedHandler;)V

    :cond_0
    return-void
.end method
