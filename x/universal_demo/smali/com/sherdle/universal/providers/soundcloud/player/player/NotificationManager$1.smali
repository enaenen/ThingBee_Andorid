.class Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager$1;
.super Ljava/lang/Object;
.source "NotificationManager.java"

# interfaces
.implements Lcom/squareup/picasso/Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->notify(Landroid/app/Service;Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager$1;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;

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

    .line 213
    iget-object p2, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager$1;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;

    invoke-static {p2}, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->access$000(Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;)Landroid/widget/RemoteViews;

    move-result-object p2

    const v0, 0x7f090176

    invoke-virtual {p2, v0, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 214
    iget-object p2, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager$1;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;

    invoke-static {p2}, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->access$100(Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;)Landroid/widget/RemoteViews;

    move-result-object p2

    invoke-virtual {p2, v0, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 216
    iget-object p2, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager$1;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;

    invoke-static {p2}, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->access$100(Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;)Landroid/widget/RemoteViews;

    move-result-object p2

    const v0, 0x7f090171

    invoke-virtual {p2, v0, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 218
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager$1;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;

    invoke-static {p1}, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->access$300(Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;)Landroid/app/NotificationManager;

    move-result-object p1

    iget-object p2, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager$1;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;

    invoke-static {p2}, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->access$200(Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;)Landroid/app/Notification;

    move-result-object p2

    const/16 v0, 0x42

    invoke-virtual {p1, v0, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public onPrepareLoad(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method
