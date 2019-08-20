.class Lcom/sherdle/universal/util/DetailActivity$2;
.super Ljava/lang/Object;
.source "DetailActivity.java"

# interfaces
.implements Lcom/sherdle/universal/util/layout/TrackingScrollView$OnScrollChangedListener;


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

    .line 77
    iput-object p1, p0, Lcom/sherdle/universal/util/DetailActivity$2;->this$0:Lcom/sherdle/universal/util/DetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged(Lcom/sherdle/universal/util/layout/TrackingScrollView;IIII)V
    .locals 0

    .line 82
    iget-object p1, p0, Lcom/sherdle/universal/util/DetailActivity$2;->this$0:Lcom/sherdle/universal/util/DetailActivity;

    invoke-static {p1, p3}, Lcom/sherdle/universal/util/DetailActivity;->access$000(Lcom/sherdle/universal/util/DetailActivity;I)V

    return-void
.end method
