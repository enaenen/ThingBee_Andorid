.class public abstract Lcom/rubengees/introduction/interfaces/IndicatorManager;
.super Ljava/lang/Object;
.source "IndicatorManager.java"

# interfaces
.implements Lcom/rubengees/introduction/interfaces/ViewPagerProcessor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract init(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Landroid/view/View;
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method
