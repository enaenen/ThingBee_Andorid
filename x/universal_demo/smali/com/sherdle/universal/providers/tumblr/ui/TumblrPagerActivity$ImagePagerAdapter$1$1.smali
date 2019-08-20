.class Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter$1$1;
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

    .line 120
    iput-object p1, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter$1$1;->this$2:Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 123
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    .line 125
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tumblr_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter$1$1;->this$2:Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter$1;

    iget-object v2, v2, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter$1;->this$1:Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter;

    invoke-static {v2}, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter;->access$000(Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter$1$1;->this$2:Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter$1;

    iget v3, v3, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter$1;->val$position:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sherdle/universal/providers/tumblr/TumblrItem;

    invoke-virtual {v2}, Lcom/sherdle/universal/providers/tumblr/TumblrItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 128
    iget-object v1, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter$1$1;->this$2:Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter$1;

    iget-object v1, v1, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter$1;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 129
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x63

    invoke-virtual {v1, v2, v3, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 130
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 131
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 133
    iget-object p1, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter$1$1;->this$2:Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter$1;

    iget-object p1, p1, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter$1;->this$1:Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter;

    iget-object p1, p1, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter;->this$0:Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    iget-object p1, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter$1$1;->this$2:Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter$1;

    iget-object p1, p1, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter$1;->this$1:Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter;

    iget-object p1, p1, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter;->this$0:Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0f00cb

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 136
    iget-object v1, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter$1$1;->this$2:Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter$1;

    iget-object v1, v1, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter$1;->this$1:Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter;

    iget-object v1, v1, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter;->this$0:Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity;

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 140
    invoke-static {p1}, Lcom/sherdle/universal/util/Log;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 138
    invoke-static {p1}, Lcom/sherdle/universal/util/Log;->printStackTrace(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
