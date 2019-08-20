.class Lcom/sherdle/universal/providers/overview/CategoryAdapter$TextViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "CategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/providers/overview/CategoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextViewHolder"
.end annotation


# instance fields
.field public background:Landroid/view/View;

.field public itemView:Landroid/view/View;

.field final synthetic this$0:Lcom/sherdle/universal/providers/overview/CategoryAdapter;

.field public title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/sherdle/universal/providers/overview/CategoryAdapter;Landroid/view/View;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/sherdle/universal/providers/overview/CategoryAdapter$TextViewHolder;->this$0:Lcom/sherdle/universal/providers/overview/CategoryAdapter;

    .line 119
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 120
    iput-object p2, p0, Lcom/sherdle/universal/providers/overview/CategoryAdapter$TextViewHolder;->itemView:Landroid/view/View;

    const p1, 0x7f09002c

    .line 122
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/providers/overview/CategoryAdapter$TextViewHolder;->background:Landroid/view/View;

    const p1, 0x7f0901a2

    .line 123
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/overview/CategoryAdapter$TextViewHolder;->title:Landroid/widget/TextView;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sherdle/universal/providers/overview/CategoryAdapter;Landroid/view/View;Lcom/sherdle/universal/providers/overview/CategoryAdapter$1;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/sherdle/universal/providers/overview/CategoryAdapter$TextViewHolder;-><init>(Lcom/sherdle/universal/providers/overview/CategoryAdapter;Landroid/view/View;)V

    return-void
.end method
