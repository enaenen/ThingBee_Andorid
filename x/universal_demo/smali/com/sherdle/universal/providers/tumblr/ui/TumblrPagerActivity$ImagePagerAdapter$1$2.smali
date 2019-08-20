.class Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter$1$2;
.super Ljava/lang/Object;
.source "TumblrPagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter$1;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter$1;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter$1;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter$1$2;->this$2:Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 149
    iget-object p1, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter$1$2;->this$2:Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter$1;

    iget-object p1, p1, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter$1;->this$1:Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter;

    iget-object p1, p1, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter;->this$0:Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f00fb

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 150
    iget-object v0, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter$1$2;->this$2:Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter$1;

    iget-object v0, v0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter$1;->this$1:Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter;

    iget-object v0, v0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter;->this$0:Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 152
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "text/plain"

    .line 153
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    .line 154
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.TEXT"

    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter$1$2;->this$2:Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter$1;

    iget-object p1, p1, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter$1;->this$1:Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter;

    invoke-static {p1}, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter;->access$000(Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter$1$2;->this$2:Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter$1;

    iget v0, v0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter$1;->val$position:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sherdle/universal/providers/tumblr/TumblrItem;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/tumblr/TumblrItem;->getLink()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    iget-object p1, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter$1$2;->this$2:Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter$1;

    iget-object p1, p1, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter$1;->this$1:Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter;

    iget-object p1, p1, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter;->this$0:Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity;

    const-string v0, "Share"

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
