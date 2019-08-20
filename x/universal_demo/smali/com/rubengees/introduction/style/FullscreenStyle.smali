.class public Lcom/rubengees/introduction/style/FullscreenStyle;
.super Lcom/rubengees/introduction/style/Style;
.source "FullscreenStyle.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/rubengees/introduction/style/Style;-><init>()V

    return-void
.end method


# virtual methods
.method public applyStyle(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 31
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method
