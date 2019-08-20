.class Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager$2;
.super Ljava/lang/Object;
.source "NotificationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$mArtworkTarget:Lcom/squareup/picasso/Target;

.field final synthetic val$track:Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;Lcom/squareup/picasso/Target;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager$2;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;

    iput-object p2, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager$2;->val$track:Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;

    iput-object p3, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager$2;->val$mArtworkTarget:Lcom/squareup/picasso/Target;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 235
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager$2;->val$track:Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;

    const-string v2, "t300x300"

    .line 236
    invoke-static {v1, v2}, Lcom/sherdle/universal/providers/soundcloud/helpers/SoundCloudArtworkHelper;->getArtworkUrl(Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager$2;->val$mArtworkTarget:Lcom/squareup/picasso/Target;

    .line 237
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Lcom/squareup/picasso/Target;)V

    return-void
.end method
