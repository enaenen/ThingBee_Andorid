.class Lcom/sherdle/universal/providers/overview/CategoryAdapter$ImageViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "CategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/providers/overview/CategoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageViewHolder"
.end annotation


# instance fields
.field public image:Landroid/widget/ImageView;

.field public itemView:Landroid/view/View;

.field final synthetic this$0:Lcom/sherdle/universal/providers/overview/CategoryAdapter;

.field public title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/sherdle/universal/providers/overview/CategoryAdapter;Landroid/view/View;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/sherdle/universal/providers/overview/CategoryAdapter$ImageViewHolder;->this$0:Lcom/sherdle/universal/providers/overview/CategoryAdapter;

    .line 104
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 105
    iput-object p2, p0, Lcom/sherdle/universal/providers/overview/CategoryAdapter$ImageViewHolder;->itemView:Landroid/view/View;

    const p1, 0x7f0901a2

    .line 107
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/overview/CategoryAdapter$ImageViewHolder;->title:Landroid/widget/TextView;

    const p1, 0x7f0900ba

    .line 108
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/overview/CategoryAdapter$ImageViewHolder;->image:Landroid/widget/ImageView;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sherdle/universal/providers/overview/CategoryAdapter;Landroid/view/View;Lcom/sherdle/universal/providers/overview/CategoryAdapter$1;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/sherdle/universal/providers/overview/CategoryAdapter$ImageViewHolder;-><init>(Lcom/sherdle/universal/providers/overview/CategoryAdapter;Landroid/view/View;)V

    return-void
.end method
