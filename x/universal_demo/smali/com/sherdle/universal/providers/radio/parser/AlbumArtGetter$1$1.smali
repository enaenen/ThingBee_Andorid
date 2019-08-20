.class Lcom/sherdle/universal/providers/radio/parser/AlbumArtGetter$1$1;
.super Ljava/lang/Object;
.source "AlbumArtGetter.java"

# interfaces
.implements Lcom/squareup/picasso/Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/radio/parser/AlbumArtGetter$1;->onPostExecute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/radio/parser/AlbumArtGetter$1;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/radio/parser/AlbumArtGetter$1;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/sherdle/universal/providers/radio/parser/AlbumArtGetter$1$1;->this$0:Lcom/sherdle/universal/providers/radio/parser/AlbumArtGetter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 61
    iget-object p1, p0, Lcom/sherdle/universal/providers/radio/parser/AlbumArtGetter$1$1;->this$0:Lcom/sherdle/universal/providers/radio/parser/AlbumArtGetter$1;

    iget-object p1, p1, Lcom/sherdle/universal/providers/radio/parser/AlbumArtGetter$1;->val$callback:Lcom/sherdle/universal/providers/radio/parser/AlbumArtGetter$AlbumCallback;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/sherdle/universal/providers/radio/parser/AlbumArtGetter$AlbumCallback;->finished(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onBitmapLoaded(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
    .locals 0

    .line 56
    iget-object p2, p0, Lcom/sherdle/universal/providers/radio/parser/AlbumArtGetter$1$1;->this$0:Lcom/sherdle/universal/providers/radio/parser/AlbumArtGetter$1;

    iget-object p2, p2, Lcom/sherdle/universal/providers/radio/parser/AlbumArtGetter$1;->val$callback:Lcom/sherdle/universal/providers/radio/parser/AlbumArtGetter$AlbumCallback;

    invoke-interface {p2, p1}, Lcom/sherdle/universal/providers/radio/parser/AlbumArtGetter$AlbumCallback;->finished(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onPrepareLoad(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method
