.class public Lcom/rubengees/introduction/style/TranslucentStyle;
.super Lcom/rubengees/introduction/style/Style;
.source "TranslucentStyle.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
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
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 36
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x8000000

    .line 38
    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const/high16 v0, 0x4000000

    .line 40
    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method
