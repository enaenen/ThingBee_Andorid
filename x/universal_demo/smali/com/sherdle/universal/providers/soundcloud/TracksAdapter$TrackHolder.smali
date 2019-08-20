.class Lcom/sherdle/universal/providers/soundcloud/TracksAdapter$TrackHolder;
.super Lcom/sherdle/universal/providers/soundcloud/TracksAdapter$Holder;
.source "TracksAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TrackHolder"
.end annotation


# instance fields
.field private trackView:Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;


# direct methods
.method private constructor <init>(Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;)V
    .locals 1

    const/4 v0, 0x1

    .line 217
    invoke-direct {p0, p1, v0}, Lcom/sherdle/universal/providers/soundcloud/TracksAdapter$Holder;-><init>(Landroid/view/View;I)V

    .line 218
    iput-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/TracksAdapter$TrackHolder;->trackView:Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;Lcom/sherdle/universal/providers/soundcloud/TracksAdapter$1;)V
    .locals 0

    .line 213
    invoke-direct {p0, p1}, Lcom/sherdle/universal/providers/soundcloud/TracksAdapter$TrackHolder;-><init>(Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sherdle/universal/providers/soundcloud/TracksAdapter$TrackHolder;)Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;
    .locals 0

    .line 213
    iget-object p0, p0, Lcom/sherdle/universal/providers/soundcloud/TracksAdapter$TrackHolder;->trackView:Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;

    return-object p0
.end method
