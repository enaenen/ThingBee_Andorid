.class public Lcom/sherdle/universal/comments/CommentsAdapter$CommentViewHolder;
.super Ljava/lang/Object;
.source "CommentsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/comments/CommentsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CommentViewHolder"
.end annotation


# instance fields
.field ivProfilePhoto:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/sherdle/universal/comments/CommentsAdapter;

.field tvComment:Landroid/widget/TextView;

.field tvUsername:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/sherdle/universal/comments/CommentsAdapter;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/sherdle/universal/comments/CommentsAdapter$CommentViewHolder;->this$0:Lcom/sherdle/universal/comments/CommentsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
