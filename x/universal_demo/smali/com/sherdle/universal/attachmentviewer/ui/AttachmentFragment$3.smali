.class Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment$3;
.super Ljava/lang/Object;
.source "AttachmentFragment.java"

# interfaces
.implements Lcom/squareup/picasso/Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment$3;->this$0:Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;

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

    .line 164
    iget-object p2, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment$3;->this$0:Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;

    invoke-virtual {p2}, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p2

    .line 166
    :try_start_0
    invoke-virtual {p2, p1}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 168
    iget-object p1, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment$3;->this$0:Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;

    invoke-virtual {p1}, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment$3;->this$0:Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;

    const v0, 0x7f0f0111

    invoke-virtual {p2, v0}, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 169
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 171
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onPrepareLoad(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method
