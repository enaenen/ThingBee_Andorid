.class Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$3;
.super Ljava/lang/Object;
.source "InstagramPhotosAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;->doBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;

.field final synthetic val$photo:Lcom/sherdle/universal/providers/instagram/InstagramPhoto;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;Lcom/sherdle/universal/providers/instagram/InstagramPhoto;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$3;->this$0:Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;

    iput-object p2, p0, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$3;->val$photo:Lcom/sherdle/universal/providers/instagram/InstagramPhoto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 114
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.SEND"

    .line 115
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.TEXT"

    .line 118
    iget-object v1, p0, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$3;->val$photo:Lcom/sherdle/universal/providers/instagram/InstagramPhoto;

    iget-object v1, v1, Lcom/sherdle/universal/providers/instagram/InstagramPhoto;->link:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "text/plain"

    .line 120
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    iget-object v0, p0, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$3;->this$0:Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;

    invoke-static {v0}, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;->access$000(Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$3;->this$0:Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;

    invoke-static {v1}, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;->access$000(Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00ee

    .line 122
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-static {p1, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
