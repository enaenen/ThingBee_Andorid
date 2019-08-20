.class public Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;
.super Landroid/widget/FrameLayout;
.source "PlaybackView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayerListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView$Listener;
    }
.end annotation


# static fields
.field private static sDummyListener:Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView$Listener;


# instance fields
.field private mArtist:Landroid/widget/TextView;

.field private mArtwork:Landroid/widget/ImageView;

.field private mCurrentTime:Landroid/widget/TextView;

.field private mDuration:Landroid/widget/TextView;

.field private mListener:Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView$Listener;

.field private mLoader:Landroid/widget/ProgressBar;

.field private mPlayPause:Landroid/widget/ImageView;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeeking:Z

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView$1;

    invoke-direct {v0}, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView$1;-><init>()V

    sput-object v0, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->sDummyListener:Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView$Listener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 75
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 67
    sget-object v0, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->sDummyListener:Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView$Listener;

    iput-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->mListener:Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView$Listener;

    .line 76
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    invoke-direct {p0, p1}, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->init(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    sget-object p2, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->sDummyListener:Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView$Listener;

    iput-object p2, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->mListener:Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView$Listener;

    .line 89
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->isInEditMode()Z

    move-result p2

    if-nez p2, :cond_0

    .line 90
    invoke-direct {p0, p1}, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->init(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 102
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    sget-object p2, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->sDummyListener:Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView$Listener;

    iput-object p2, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->mListener:Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView$Listener;

    .line 103
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->isInEditMode()Z

    move-result p2

    if-nez p2, :cond_0

    .line 104
    invoke-direct {p0, p1}, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->init(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private getSecondMinutes(J)[I
    .locals 2

    long-to-int p1, p1

    .line 306
    div-int/lit16 p1, p1, 0x3e8

    const/4 p2, 0x2

    .line 307
    new-array p2, p2, [I

    div-int/lit8 v0, p1, 0x3c

    const/4 v1, 0x0

    aput v0, p2, v1

    rem-int/lit8 p1, p1, 0x3c

    const/4 v0, 0x1

    aput p1, p2, v0

    return-object p2
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 282
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b009d

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f090129

    .line 283
    invoke-virtual {p0, v0}, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09012a

    .line 284
    invoke-virtual {p0, v0}, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090126

    .line 285
    invoke-virtual {p0, v0}, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->mCurrentTime:Landroid/widget/TextView;

    const v0, 0x7f090127

    .line 286
    invoke-virtual {p0, v0}, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->mDuration:Landroid/widget/TextView;

    const v0, 0x7f09012c

    .line 287
    invoke-virtual {p0, v0}, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->mPlayPause:Landroid/widget/ImageView;

    const v0, 0x7f090128

    .line 288
    invoke-virtual {p0, v0}, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->mLoader:Landroid/widget/ProgressBar;

    .line 289
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->mPlayPause:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090125

    .line 292
    invoke-virtual {p0, v0}, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->mArtwork:Landroid/widget/ImageView;

    .line 293
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->mArtwork:Landroid/widget/ImageView;

    const v1, 0x7f060085

    .line 294
    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 293
    invoke-virtual {v0, p1, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const p1, 0x7f09012e

    .line 296
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->mTitle:Landroid/widget/TextView;

    const p1, 0x7f09012d

    .line 297
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->mArtist:Landroid/widget/TextView;

    const p1, 0x7f09012b

    .line 298
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->mSeekBar:Landroid/widget/SeekBar;

    .line 299
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 300
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 302
    iput-boolean v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->mSeeking:Z

    return-void
.end method

.method private setPlaying(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 275
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->mPlayPause:Landroid/widget/ImageView;

    const v0, 0x7f0800c9

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 277
    :cond_0
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->mPlayPause:Landroid/widget/ImageView;

    const v0, 0x7f0800cc

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private setTrack(Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;)V
    .locals 7

    const/4 v0, 0x2

    const v1, 0x7f0f00b4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    .line 238
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->mTitle:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->mArtist:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->mArtwork:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 241
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->mPlayPause:Landroid/widget/ImageView;

    const v4, 0x7f0800cc

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 242
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 243
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 244
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->mDuration:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 247
    :cond_0
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const-string v5, "t300x300"

    invoke-static {p1, v5}, Lcom/sherdle/universal/providers/soundcloud/helpers/SoundCloudArtworkHelper;->getArtworkUrl(Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->mArtwork:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 249
    iget-object v4, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v4, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->mArtist:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->getUsername()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v4, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->mPlayPause:Landroid/widget/ImageView;

    const v5, 0x7f0800c9

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 252
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->getTranslationY()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1

    .line 253
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 255
    :cond_1
    iget-object v4, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->getDuration()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 256
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 257
    invoke-virtual {p1}, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->getDuration()J

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->getSecondMinutes(J)[I

    move-result-object p1

    .line 258
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    aget v5, p1, v3

    .line 259
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v3

    aget p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    .line 258
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 260
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->mDuration:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onBufferingEnded()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->mLoader:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->mPlayPause:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onBufferingStarted()V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->mLoader:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->mPlayPause:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 131
    :pswitch_1
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->mListener:Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView$Listener;

    invoke-interface {p1}, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView$Listener;->onTogglePlayPressed()V

    goto :goto_0

    .line 128
    :pswitch_2
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->mListener:Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView$Listener;

    invoke-interface {p1}, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView$Listener;->onPreviousPressed()V

    goto :goto_0

    .line 125
    :pswitch_3
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->mListener:Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView$Listener;

    invoke-interface {p1}, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView$Listener;->onNextPressed()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f090129
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDurationChanged(J)V
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->mSeekBar:Landroid/widget/SeekBar;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 176
    invoke-direct {p0, p1, p2}, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->getSecondMinutes(J)[I

    move-result-object p1

    .line 177
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0f00b4

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget v2, p1, v1

    .line 178
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aget p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    .line 177
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 179
    iget-object p2, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->mDuration:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPlayerDestroyed()V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->mPlayPause:Landroid/widget/ImageView;

    const v1, 0x7f0800cc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public onPlayerPause()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->mPlayPause:Landroid/widget/ImageView;

    const v1, 0x7f0800cc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public onPlayerPlay(Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;I)V
    .locals 0

    .line 143
    invoke-direct {p0, p1}, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->setTrack(Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;)V

    return-void
.end method

.method public onPlayerSeekTo(I)V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method public onProgressChanged(I)V
    .locals 4

    .line 184
    iget-boolean v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->mSeeking:Z

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    int-to-long v0, p1

    .line 186
    invoke-direct {p0, v0, v1}, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->getSecondMinutes(J)[I

    move-result-object p1

    .line 187
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f00b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aget v3, p1, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aget p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 188
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    int-to-long p1, p2

    .line 199
    invoke-direct {p0, p1, p2}, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->getSecondMinutes(J)[I

    move-result-object p1

    .line 200
    iget-object p2, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->mCurrentTime:Landroid/widget/TextView;

    .line 201
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0f00b4

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget v2, p1, v1

    .line 202
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aget p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    .line 201
    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 200
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    const/4 p1, 0x1

    .line 208
    iput-boolean p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->mSeeking:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const/4 v0, 0x0

    .line 213
    iput-boolean v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->mSeeking:Z

    .line 214
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->mListener:Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView$Listener;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView$Listener;->onSeekToRequested(I)V

    return-void
.end method

.method public setListener(Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView$Listener;)V
    .locals 0

    if-nez p1, :cond_0

    .line 115
    sget-object p1, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->sDummyListener:Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView$Listener;

    iput-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->mListener:Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView$Listener;

    goto :goto_0

    .line 117
    :cond_0
    iput-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->mListener:Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView$Listener;

    :goto_0
    return-void
.end method

.method public synchronize(Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;)V
    .locals 2

    .line 225
    invoke-virtual {p1}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->getCurrentTrack()Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->setTrack(Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;)V

    .line 226
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->mLoader:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->mPlayPause:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 228
    invoke-virtual {p1}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->isPlaying()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->setPlaying(Z)V

    return-void
.end method
