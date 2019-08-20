.class Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader$1;
.super Ljava/lang/Object;
.source "WordpressCategoriesLoader.java"

# interfaces
.implements Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesTask$WordpressCategoriesCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader;->load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader$1;->this$0:Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public categoriesFailed()V
    .locals 0

    return-void
.end method

.method public categoriesLoaded(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/wordpress/CategoryItem;",
            ">;)V"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader$1;->this$0:Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader;

    invoke-static {v0, p1}, Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader;->access$002(Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 37
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader$1;->this$0:Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader;

    invoke-static {v0}, Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader;->access$100(Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader;)Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->adapter:Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader$1;->this$0:Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader;

    invoke-static {v0}, Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader;->access$100(Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader;)Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->adapter:Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader$1;->this$0:Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader;

    invoke-virtual {v0, p1}, Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader;->createSlider(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 40
    :cond_0
    iget-object p1, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader$1;->this$0:Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader;

    invoke-static {p1}, Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader;->access$100(Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader;)Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader$1;->this$0:Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader;

    invoke-virtual {p1, v0}, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->setListener(Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo$ListListener;)V

    :goto_0
    return-void
.end method
