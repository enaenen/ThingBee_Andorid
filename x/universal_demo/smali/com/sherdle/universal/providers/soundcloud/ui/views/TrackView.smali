.class public Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;
.super Landroid/widget/FrameLayout;
.source "TrackView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView$Listener;
    }
.end annotation


# instance fields
.field private mArtist:Landroid/widget/TextView;

.field private mArtistColor:I

.field private mArtistColorSelected:I

.field private mArtwork:Landroid/widget/ImageView;

.field private mListener:Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView$Listener;

.field private mModel:Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;

.field private mMore:Landroid/widget/ImageView;

.field private mTitle:Landroid/widget/TextView;

.field private mTrackColor:I

.field private mTrackColorSelected:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    invoke-direct {p0, p1}, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->init(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->isInEditMode()Z

    move-result p2

    if-nez p2, :cond_0

    .line 57
    invoke-direct {p0, p1}, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->init(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->isInEditMode()Z

    move-result p2

    if-nez p2, :cond_0

    .line 71
    invoke-direct {p0, p1}, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->init(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;)Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView$Listener;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->mListener:Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView$Listener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;)Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->mModel:Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 126
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b009e

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0901ad

    .line 128
    invoke-virtual {p0, v0}, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->mArtwork:Landroid/widget/ImageView;

    const v0, 0x7f0901ae

    .line 129
    invoke-virtual {p0, v0}, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f0901ac

    .line 130
    invoke-virtual {p0, v0}, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->mArtist:Landroid/widget/TextView;

    const v0, 0x7f0901ab

    .line 131
    invoke-virtual {p0, v0}, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->mMore:Landroid/widget/ImageView;

    const v0, 0x7f080102

    .line 133
    invoke-virtual {p0, v0}, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->setBackgroundResource(I)V

    .line 135
    invoke-virtual {p0, p0}, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0600a6

    .line 137
    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->mTrackColor:I

    const v0, 0x7f0600a2

    .line 138
    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->mArtistColor:I

    const v0, 0x7f0600a3

    .line 139
    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->mArtistColorSelected:I

    const v0, 0x7f0600a7

    .line 140
    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->mTrackColorSelected:I

    .line 142
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->mMore:Landroid/widget/ImageView;

    new-instance v0, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView$1;

    invoke-direct {v0, p0}, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView$1;-><init>(Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 157
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->mListener:Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView$Listener;

    if-eqz p1, :cond_0

    .line 158
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->mListener:Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView$Listener;

    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->mModel:Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;

    invoke-interface {p1, v0}, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView$Listener;->onTrackClicked(Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;)V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView$Listener;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->mListener:Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView$Listener;

    return-void
.end method

.method public setModel(Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;)V
    .locals 4

    .line 97
    iput-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->mModel:Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;

    .line 98
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->mModel:Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;

    if-eqz p1, :cond_1

    .line 100
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->mModel:Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;

    const-string v0, "t300x300"

    invoke-static {p1, v0}, Lcom/sherdle/universal/providers/soundcloud/helpers/SoundCloudArtworkHelper;->getArtworkUrl(Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->mArtwork:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->mArtwork:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 105
    :cond_0
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->mArtwork:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    :goto_0
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->mArtist:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->mModel:Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->mTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->mModel:Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->mModel:Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->getDuration()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    .line 111
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->mModel:Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->getDuration()J

    move-result-wide v0

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    :cond_1
    return-void
.end method

.method public setSelected(Z)V
    .locals 2

    .line 77
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    const v0, 0x7f09006e

    if-eqz p1, :cond_0

    .line 79
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->mArtist:Landroid/widget/TextView;

    iget v1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->mArtistColorSelected:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->mTitle:Landroid/widget/TextView;

    iget v1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->mTrackColorSelected:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    invoke-virtual {p0, v0}, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 84
    :cond_0
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->mArtist:Landroid/widget/TextView;

    iget v1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->mArtistColor:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->mTitle:Landroid/widget/TextView;

    iget v1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->mTrackColor:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    invoke-virtual {p0, v0}, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
