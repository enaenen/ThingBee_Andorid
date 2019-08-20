.class public abstract Lcom/sherdle/universal/providers/soundcloud/TracksAdapter$Holder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "TracksAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Holder"
.end annotation


# instance fields
.field private viewType:I


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 0

    .line 205
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 206
    iput p2, p0, Lcom/sherdle/universal/providers/soundcloud/TracksAdapter$Holder;->viewType:I

    return-void
.end method
