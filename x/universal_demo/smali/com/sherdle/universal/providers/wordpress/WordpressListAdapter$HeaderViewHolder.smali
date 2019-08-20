.class abstract Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter$HeaderViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "WordpressListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field dateView:Landroid/widget/TextView;

.field headlineView:Landroid/widget/TextView;

.field imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 259
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090196

    .line 261
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter$HeaderViewHolder;->dateView:Landroid/widget/TextView;

    const v0, 0x7f090197

    .line 262
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter$HeaderViewHolder;->headlineView:Landroid/widget/TextView;

    const v0, 0x7f0900be

    .line 263
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter$HeaderViewHolder;->imageView:Landroid/widget/ImageView;

    return-void
.end method
