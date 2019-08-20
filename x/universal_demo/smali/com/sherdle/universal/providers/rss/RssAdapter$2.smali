.class Lcom/sherdle/universal/providers/rss/RssAdapter$2;
.super Ljava/lang/Object;
.source "RssAdapter.java"

# interfaces
.implements Lcom/squareup/picasso/Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/rss/RssAdapter;->loadImageIntoView(Ljava/lang/String;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/rss/RssAdapter;

.field final synthetic val$listThumb:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/rss/RssAdapter;Landroid/widget/ImageView;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/sherdle/universal/providers/rss/RssAdapter$2;->this$0:Lcom/sherdle/universal/providers/rss/RssAdapter;

    iput-object p2, p0, Lcom/sherdle/universal/providers/rss/RssAdapter$2;->val$listThumb:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public onBitmapLoaded(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
    .locals 1

    .line 121
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    const/16 v0, 0xa

    if-gt v0, p2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    if-le v0, p2, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    iget-object p2, p0, Lcom/sherdle/universal/providers/rss/RssAdapter$2;->val$listThumb:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    iget-object p2, p0, Lcom/sherdle/universal/providers/rss/RssAdapter$2;->val$listThumb:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 123
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/sherdle/universal/providers/rss/RssAdapter$2;->val$listThumb:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public onPrepareLoad(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method
