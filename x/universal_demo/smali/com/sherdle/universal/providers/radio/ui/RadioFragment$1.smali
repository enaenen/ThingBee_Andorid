.class Lcom/sherdle/universal/providers/radio/ui/RadioFragment$1;
.super Ljava/lang/Object;
.source "RadioFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/radio/ui/RadioFragment;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/radio/ui/RadioFragment;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment$1;->this$0:Lcom/sherdle/universal/providers/radio/ui/RadioFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment$1;->this$0:Lcom/sherdle/universal/providers/radio/ui/RadioFragment;

    iget-object v1, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment$1;->this$0:Lcom/sherdle/universal/providers/radio/ui/RadioFragment;

    invoke-static {v1}, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->access$100(Lcom/sherdle/universal/providers/radio/ui/RadioFragment;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/sherdle/universal/providers/radio/parser/UrlParser;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->access$002(Lcom/sherdle/universal/providers/radio/ui/RadioFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment$1;->this$0:Lcom/sherdle/universal/providers/radio/ui/RadioFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->access$300(Lcom/sherdle/universal/providers/radio/ui/RadioFragment;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/sherdle/universal/providers/radio/ui/RadioFragment$1$1;

    invoke-direct {v1, p0}, Lcom/sherdle/universal/providers/radio/ui/RadioFragment$1$1;-><init>(Lcom/sherdle/universal/providers/radio/ui/RadioFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
