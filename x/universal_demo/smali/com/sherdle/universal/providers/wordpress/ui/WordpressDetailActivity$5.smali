.class Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$5;
.super Ljava/lang/Object;
.source "WordpressDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->configureFavoritesButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$5;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 266
    iget-object p1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$5;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;

    new-instance v0, Lcom/sherdle/universal/providers/fav/FavDbAdapter;

    iget-object v1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$5;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;

    invoke-direct {v0, v1}, Lcom/sherdle/universal/providers/fav/FavDbAdapter;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->access$102(Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;Lcom/sherdle/universal/providers/fav/FavDbAdapter;)Lcom/sherdle/universal/providers/fav/FavDbAdapter;

    .line 267
    iget-object p1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$5;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;

    invoke-static {p1}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->access$100(Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;)Lcom/sherdle/universal/providers/fav/FavDbAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/fav/FavDbAdapter;->open()Lcom/sherdle/universal/providers/fav/FavDbAdapter;

    .line 269
    iget-object p1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$5;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;

    invoke-static {p1}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->access$100(Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;)Lcom/sherdle/universal/providers/fav/FavDbAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$5;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;

    invoke-static {v0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->access$000(Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;)Lcom/sherdle/universal/providers/wordpress/PostItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$5;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;

    invoke-static {v1}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->access$000(Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;)Lcom/sherdle/universal/providers/wordpress/PostItem;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/sherdle/universal/providers/fav/FavDbAdapter;->checkEvent(Ljava/lang/String;Ljava/io/Serializable;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 271
    iget-object p1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$5;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;

    invoke-static {p1}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->access$100(Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;)Lcom/sherdle/universal/providers/fav/FavDbAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$5;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;

    invoke-static {v0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->access$000(Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;)Lcom/sherdle/universal/providers/wordpress/PostItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$5;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;

    invoke-static {v1}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->access$000(Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;)Lcom/sherdle/universal/providers/wordpress/PostItem;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/sherdle/universal/providers/fav/FavDbAdapter;->addFavorite(Ljava/lang/String;Ljava/io/Serializable;I)J

    .line 272
    iget-object p1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$5;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;

    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$5;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;

    .line 275
    invoke-virtual {v0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 273
    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 278
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 280
    :cond_0
    iget-object p1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$5;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;

    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$5;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;

    .line 282
    invoke-virtual {v0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 280
    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 285
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
