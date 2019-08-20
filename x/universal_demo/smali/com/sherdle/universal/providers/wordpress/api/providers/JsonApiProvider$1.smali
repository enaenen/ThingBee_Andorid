.class Lcom/sherdle/universal/providers/wordpress/api/providers/JsonApiProvider$1;
.super Ljava/lang/Object;
.source "JsonApiProvider.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/wordpress/api/providers/JsonApiProvider;->getCategories(Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/sherdle/universal/providers/wordpress/CategoryItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/wordpress/api/providers/JsonApiProvider;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/wordpress/api/providers/JsonApiProvider;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/sherdle/universal/providers/wordpress/api/providers/JsonApiProvider$1;->this$0:Lcom/sherdle/universal/providers/wordpress/api/providers/JsonApiProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sherdle/universal/providers/wordpress/CategoryItem;Lcom/sherdle/universal/providers/wordpress/CategoryItem;)I
    .locals 0

    .line 136
    invoke-virtual {p1}, Lcom/sherdle/universal/providers/wordpress/CategoryItem;->getPostCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 137
    invoke-virtual {p2}, Lcom/sherdle/universal/providers/wordpress/CategoryItem;->getPostCount()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 139
    invoke-virtual {p2, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 133
    check-cast p1, Lcom/sherdle/universal/providers/wordpress/CategoryItem;

    check-cast p2, Lcom/sherdle/universal/providers/wordpress/CategoryItem;

    invoke-virtual {p0, p1, p2}, Lcom/sherdle/universal/providers/wordpress/api/providers/JsonApiProvider$1;->compare(Lcom/sherdle/universal/providers/wordpress/CategoryItem;Lcom/sherdle/universal/providers/wordpress/CategoryItem;)I

    move-result p1

    return p1
.end method
