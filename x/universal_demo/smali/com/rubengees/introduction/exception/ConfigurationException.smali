.class public Lcom/rubengees/introduction/exception/ConfigurationException;
.super Ljava/lang/RuntimeException;
.source "ConfigurationException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Don\'t call this method while constructing the IntroductionBuilder"

    .line 27
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
