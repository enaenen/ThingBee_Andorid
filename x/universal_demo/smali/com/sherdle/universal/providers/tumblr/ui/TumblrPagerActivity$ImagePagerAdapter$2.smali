.class Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter$2;
.super Ljava/lang/Object;
.source "TumblrPagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter;

.field final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter;Landroid/widget/ImageView;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter$2;->this$1:Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter;

    iput-object p2, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter$2;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 170
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter$2;->this$1:Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter;

    iget-object v0, v0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter;->this$0:Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 171
    iget-object v0, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter$2;->this$1:Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter;

    iget-object v0, v0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter;->this$0:Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f00d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 172
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter$2;->this$1:Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter;

    iget-object v1, v1, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter;->this$0:Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity;

    .line 173
    invoke-virtual {v1}, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f011b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter$2$1;

    invoke-direct {v2, p0}, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter$2$1;-><init>(Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 187
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 188
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
