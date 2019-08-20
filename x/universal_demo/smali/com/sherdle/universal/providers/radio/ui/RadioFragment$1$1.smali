.class Lcom/sherdle/universal/providers/radio/ui/RadioFragment$1$1;
.super Ljava/lang/Object;
.source "RadioFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/radio/ui/RadioFragment$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sherdle/universal/providers/radio/ui/RadioFragment$1;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/radio/ui/RadioFragment$1;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment$1$1;->this$1:Lcom/sherdle/universal/providers/radio/ui/RadioFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment$1$1;->this$1:Lcom/sherdle/universal/providers/radio/ui/RadioFragment$1;

    iget-object v0, v0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment$1;->this$0:Lcom/sherdle/universal/providers/radio/ui/RadioFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->access$200(Lcom/sherdle/universal/providers/radio/ui/RadioFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment$1$1;->this$1:Lcom/sherdle/universal/providers/radio/ui/RadioFragment$1;

    iget-object v0, v0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment$1;->this$0:Lcom/sherdle/universal/providers/radio/ui/RadioFragment;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->updateButtons()V

    return-void
.end method
