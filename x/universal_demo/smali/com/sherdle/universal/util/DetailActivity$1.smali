.class Lcom/sherdle/universal/util/DetailActivity$1;
.super Ljava/lang/Object;
.source "DetailActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/util/DetailActivity;->setParralaxHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/util/DetailActivity;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/util/DetailActivity;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/sherdle/universal/util/DetailActivity$1;->this$0:Lcom/sherdle/universal/util/DetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/sherdle/universal/util/DetailActivity$1;->this$0:Lcom/sherdle/universal/util/DetailActivity;

    iget-object v0, v0, Lcom/sherdle/universal/util/DetailActivity;->thumb:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 71
    iget-object v0, p0, Lcom/sherdle/universal/util/DetailActivity$1;->this$0:Lcom/sherdle/universal/util/DetailActivity;

    iget-object v1, p0, Lcom/sherdle/universal/util/DetailActivity$1;->this$0:Lcom/sherdle/universal/util/DetailActivity;

    iget-object v1, v1, Lcom/sherdle/universal/util/DetailActivity;->thumb:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/sherdle/universal/util/DetailActivity;->mScrollableHeaderHeight:I

    return-void
.end method
