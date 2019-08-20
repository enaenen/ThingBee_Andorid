.class Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader$2;
.super Ljava/lang/Object;
.source "WordpressCategoriesLoader.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader;->createSlider(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader;

.field final synthetic val$item:Lcom/sherdle/universal/providers/wordpress/CategoryItem;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader;Lcom/sherdle/universal/providers/wordpress/CategoryItem;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader$2;->this$0:Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader;

    iput-object p2, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader$2;->val$item:Lcom/sherdle/universal/providers/wordpress/CategoryItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 66
    iget-object p1, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader$2;->this$0:Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader;

    invoke-static {p1}, Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader;->access$100(Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader;)Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->context:Landroid/app/Activity;

    const-class v0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader$2;->this$0:Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader;

    invoke-static {v2}, Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader;->access$100(Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader;)Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->baseurl:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader$2;->val$item:Lcom/sherdle/universal/providers/wordpress/CategoryItem;

    invoke-virtual {v2}, Lcom/sherdle/universal/providers/wordpress/CategoryItem;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p1, v0, v1}, Lcom/sherdle/universal/HolderActivity;->startActivity(Landroid/content/Context;Ljava/lang/Class;[Ljava/lang/String;)V

    return-void
.end method
