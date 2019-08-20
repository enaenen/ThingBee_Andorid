.class Lcom/sherdle/universal/providers/tv/TvFragment$1;
.super Ljava/lang/Object;
.source "TvFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/tv/TvFragment;->initCustomControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/tv/TvFragment;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/tv/TvFragment;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/sherdle/universal/providers/tv/TvFragment$1;->this$0:Lcom/sherdle/universal/providers/tv/TvFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 86
    iget-object p1, p0, Lcom/sherdle/universal/providers/tv/TvFragment$1;->this$0:Lcom/sherdle/universal/providers/tv/TvFragment;

    invoke-static {p1}, Lcom/sherdle/universal/providers/tv/TvFragment;->access$000(Lcom/sherdle/universal/providers/tv/TvFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 87
    iget-object p1, p0, Lcom/sherdle/universal/providers/tv/TvFragment$1;->this$0:Lcom/sherdle/universal/providers/tv/TvFragment;

    invoke-static {p1}, Lcom/sherdle/universal/providers/tv/TvFragment;->access$100(Lcom/sherdle/universal/providers/tv/TvFragment;)V

    goto :goto_0

    .line 89
    :cond_0
    iget-object p1, p0, Lcom/sherdle/universal/providers/tv/TvFragment$1;->this$0:Lcom/sherdle/universal/providers/tv/TvFragment;

    invoke-static {p1}, Lcom/sherdle/universal/providers/tv/TvFragment;->access$200(Lcom/sherdle/universal/providers/tv/TvFragment;)V

    :goto_0
    return-void
.end method
