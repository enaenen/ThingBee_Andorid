.class Lcom/cleveroad/audiovisualization/GLWaveLayer;
.super Ljava/lang/Object;
.source "GLWaveLayer.java"


# instance fields
.field private final allBubbles:[Lcom/cleveroad/audiovisualization/GLBubble;

.field private amplitude:F

.field private final bubbleFromY:F

.field private final bubbleToY:F

.field private final configuration:Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;

.field private isCalmedDown:Z

.field private final producedBubbles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/cleveroad/audiovisualization/GLBubble;",
            ">;"
        }
    .end annotation
.end field

.field private final random:Ljava/util/Random;

.field private final rectangle:Lcom/cleveroad/audiovisualization/GLRectangle;

.field private final unusedBubbles:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/cleveroad/audiovisualization/GLBubble;",
            ">;"
        }
    .end annotation
.end field

.field private final usedBubbles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/cleveroad/audiovisualization/GLBubble;",
            ">;"
        }
    .end annotation
.end field

.field private final waves:[Lcom/cleveroad/audiovisualization/GLWave;


# direct methods
.method public constructor <init>(Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;[FFFLjava/util/Random;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v10, p4

    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v1, v0, Lcom/cleveroad/audiovisualization/GLWaveLayer;->configuration:Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;

    move-object/from16 v11, p5

    .line 33
    iput-object v11, v0, Lcom/cleveroad/audiovisualization/GLWaveLayer;->random:Ljava/util/Random;

    .line 34
    iget v2, v1, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->wavesCount:I

    new-array v2, v2, [Lcom/cleveroad/audiovisualization/GLWave;

    iput-object v2, v0, Lcom/cleveroad/audiovisualization/GLWaveLayer;->waves:[Lcom/cleveroad/audiovisualization/GLWave;

    .line 35
    iget v2, v1, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->footerHeight:F

    iget v3, v1, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->footerHeight:F

    iget v4, v1, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->waveHeight:F

    const/high16 v8, 0x40000000    # 2.0f

    mul-float v4, v4, v8

    add-float/2addr v3, v4

    div-float/2addr v2, v3

    sub-float v3, v10, p3

    mul-float v2, v2, v3

    add-float v12, p3, v2

    .line 36
    new-instance v9, Lcom/cleveroad/audiovisualization/GLRectangle;

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v2, v9

    move-object/from16 v3, p2

    move/from16 v6, p3

    move v7, v12

    invoke-direct/range {v2 .. v7}, Lcom/cleveroad/audiovisualization/GLRectangle;-><init>([FFFFF)V

    iput-object v9, v0, Lcom/cleveroad/audiovisualization/GLWaveLayer;->rectangle:Lcom/cleveroad/audiovisualization/GLRectangle;

    .line 37
    iget v2, v1, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->wavesCount:I

    int-to-float v2, v2

    div-float/2addr v8, v2

    .line 38
    iget-object v2, v0, Lcom/cleveroad/audiovisualization/GLWaveLayer;->random:Ljava/util/Random;

    iget v3, v1, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->wavesCount:I

    const v4, 0x3e19999a    # 0.15f

    invoke-static {v2, v3, v8, v4}, Lcom/cleveroad/audiovisualization/GLWaveLayer;->randomPoints(Ljava/util/Random;IFF)[F

    move-result-object v13

    .line 39
    iput v12, v0, Lcom/cleveroad/audiovisualization/GLWaveLayer;->bubbleFromY:F

    .line 40
    iput v10, v0, Lcom/cleveroad/audiovisualization/GLWaveLayer;->bubbleToY:F

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 41
    :goto_0
    iget v2, v1, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->wavesCount:I

    if-ge v15, v2, :cond_1

    .line 42
    rem-int/lit8 v2, v15, 0x2

    if-nez v2, :cond_0

    const/4 v8, 0x0

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    const/4 v8, 0x1

    .line 43
    :goto_1
    iget-object v9, v0, Lcom/cleveroad/audiovisualization/GLWaveLayer;->waves:[Lcom/cleveroad/audiovisualization/GLWave;

    new-instance v16, Lcom/cleveroad/audiovisualization/GLWave;

    aget v4, v13, v15

    add-int/lit8 v17, v15, 0x1

    aget v5, v13, v17

    move-object/from16 v2, v16

    move-object/from16 v3, p2

    move v6, v12

    move v7, v10

    move-object/from16 v18, v9

    move-object v9, v11

    invoke-direct/range {v2 .. v9}, Lcom/cleveroad/audiovisualization/GLWave;-><init>([FFFFFBLjava/util/Random;)V

    aput-object v16, v18, v15

    move/from16 v15, v17

    goto :goto_0

    .line 45
    :cond_1
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, v0, Lcom/cleveroad/audiovisualization/GLWaveLayer;->usedBubbles:Ljava/util/Set;

    .line 46
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, v0, Lcom/cleveroad/audiovisualization/GLWaveLayer;->producedBubbles:Ljava/util/Set;

    .line 47
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, v0, Lcom/cleveroad/audiovisualization/GLWaveLayer;->unusedBubbles:Ljava/util/Queue;

    .line 48
    iget v1, v1, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->bubblesPerLayer:I

    move-object/from16 v2, p2

    invoke-direct {v0, v2, v1}, Lcom/cleveroad/audiovisualization/GLWaveLayer;->generateBubbles([FI)[Lcom/cleveroad/audiovisualization/GLBubble;

    move-result-object v1

    iput-object v1, v0, Lcom/cleveroad/audiovisualization/GLWaveLayer;->allBubbles:[Lcom/cleveroad/audiovisualization/GLBubble;

    .line 49
    iget-object v1, v0, Lcom/cleveroad/audiovisualization/GLWaveLayer;->unusedBubbles:Ljava/util/Queue;

    iget-object v2, v0, Lcom/cleveroad/audiovisualization/GLWaveLayer;->allBubbles:[Lcom/cleveroad/audiovisualization/GLBubble;

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method private generateBubbles([FI)[Lcom/cleveroad/audiovisualization/GLBubble;
    .locals 12

    .line 166
    new-array v0, p2, [Lcom/cleveroad/audiovisualization/GLBubble;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_2

    .line 168
    iget-object v3, p0, Lcom/cleveroad/audiovisualization/GLWaveLayer;->configuration:Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;

    iget v3, v3, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->bubbleSize:F

    .line 169
    iget-object v4, p0, Lcom/cleveroad/audiovisualization/GLWaveLayer;->configuration:Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;

    iget-boolean v4, v4, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->randomizeBubbleSize:Z

    if-eqz v4, :cond_0

    const/high16 v4, 0x3f000000    # 0.5f

    .line 170
    iget-object v5, p0, Lcom/cleveroad/audiovisualization/GLWaveLayer;->random:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v5

    const v6, 0x3f4ccccd    # 0.8f

    mul-float v5, v5, v6

    add-float/2addr v5, v4

    mul-float v3, v3, v5

    :cond_0
    move v9, v3

    .line 172
    iget-object v3, p0, Lcom/cleveroad/audiovisualization/GLWaveLayer;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const v4, 0x3dcccccd    # 0.1f

    mul-float v3, v3, v4

    iget-object v4, p0, Lcom/cleveroad/audiovisualization/GLWaveLayer;->random:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextBoolean()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, -0x1

    :goto_1
    int-to-float v4, v4

    mul-float v3, v3, v4

    .line 173
    array-length v4, p1

    new-array v5, v4, [F

    .line 174
    array-length v4, v5

    invoke-static {p1, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    new-instance v11, Lcom/cleveroad/audiovisualization/GLBubble;

    const/high16 v4, -0x40800000    # -1.0f

    iget-object v6, p0, Lcom/cleveroad/audiovisualization/GLWaveLayer;->random:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    mul-float v6, v6, v7

    add-float/2addr v6, v4

    iget v4, p0, Lcom/cleveroad/audiovisualization/GLWaveLayer;->bubbleFromY:F

    add-float v7, v4, v3

    iget v8, p0, Lcom/cleveroad/audiovisualization/GLWaveLayer;->bubbleToY:F

    iget-object v10, p0, Lcom/cleveroad/audiovisualization/GLWaveLayer;->random:Ljava/util/Random;

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lcom/cleveroad/audiovisualization/GLBubble;-><init>([FFFFFLjava/util/Random;)V

    aput-object v11, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private produceBubbles()V
    .locals 8

    .line 144
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/GLWaveLayer;->random:Ljava/util/Random;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 146
    iget-object v2, p0, Lcom/cleveroad/audiovisualization/GLWaveLayer;->unusedBubbles:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cleveroad/audiovisualization/GLBubble;

    if-eqz v2, :cond_2

    .line 148
    iget-object v3, p0, Lcom/cleveroad/audiovisualization/GLWaveLayer;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const v4, 0x3dcccccd    # 0.1f

    mul-float v3, v3, v4

    iget-object v4, p0, Lcom/cleveroad/audiovisualization/GLWaveLayer;->random:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextBoolean()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, -0x1

    :goto_1
    int-to-float v4, v4

    mul-float v3, v3, v4

    .line 149
    iget-object v4, p0, Lcom/cleveroad/audiovisualization/GLWaveLayer;->configuration:Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;

    iget v4, v4, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->bubbleSize:F

    .line 150
    iget-object v5, p0, Lcom/cleveroad/audiovisualization/GLWaveLayer;->configuration:Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;

    iget-boolean v5, v5, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->randomizeBubbleSize:Z

    if-eqz v5, :cond_1

    const/high16 v5, 0x3f000000    # 0.5f

    .line 151
    iget-object v6, p0, Lcom/cleveroad/audiovisualization/GLWaveLayer;->random:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    const v7, 0x3f4ccccd    # 0.8f

    mul-float v6, v6, v7

    add-float/2addr v6, v5

    mul-float v4, v4, v6

    :cond_1
    const/high16 v5, -0x40800000    # -1.0f

    .line 153
    iget-object v6, p0, Lcom/cleveroad/audiovisualization/GLWaveLayer;->random:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    mul-float v6, v6, v7

    add-float/2addr v6, v5

    iget v5, p0, Lcom/cleveroad/audiovisualization/GLWaveLayer;->bubbleFromY:F

    add-float/2addr v5, v3

    iget v3, p0, Lcom/cleveroad/audiovisualization/GLWaveLayer;->bubbleToY:F

    invoke-virtual {v2, v6, v5, v3, v4}, Lcom/cleveroad/audiovisualization/GLBubble;->update(FFFF)V

    .line 154
    iget-object v3, p0, Lcom/cleveroad/audiovisualization/GLWaveLayer;->producedBubbles:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static randomPoints(Ljava/util/Random;IFF)[F
    .locals 5

    add-int/lit8 p1, p1, 0x1

    .line 62
    new-array p1, p1, [F

    const/4 v0, 0x0

    .line 63
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    const/high16 v1, -0x40800000    # -1.0f

    if-nez v0, :cond_0

    .line 65
    aput v1, p1, v0

    goto :goto_2

    .line 66
    :cond_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    if-ne v0, v2, :cond_1

    .line 67
    aput v3, p1, v0

    goto :goto_2

    .line 69
    :cond_1
    invoke-virtual {p0}, Ljava/util/Random;->nextFloat()F

    move-result v2

    mul-float v2, v2, p3

    mul-float v2, v2, p2

    .line 70
    invoke-virtual {p0}, Ljava/util/Random;->nextBoolean()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const/high16 v3, -0x40800000    # -1.0f

    :goto_1
    mul-float v2, v2, v3

    int-to-float v3, v0

    mul-float v3, v3, p2

    add-float/2addr v3, v1

    add-float/2addr v3, v2

    .line 71
    aput v3, p1, v0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object p1
.end method


# virtual methods
.method public draw()V
    .locals 4

    .line 112
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/GLWaveLayer;->waves:[Lcom/cleveroad/audiovisualization/GLWave;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 113
    invoke-virtual {v3}, Lcom/cleveroad/audiovisualization/GLWave;->draw()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/GLWaveLayer;->rectangle:Lcom/cleveroad/audiovisualization/GLRectangle;

    invoke-virtual {v0}, Lcom/cleveroad/audiovisualization/GLRectangle;->draw()V

    .line 116
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/GLWaveLayer;->usedBubbles:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cleveroad/audiovisualization/GLBubble;

    .line 117
    invoke-virtual {v1}, Lcom/cleveroad/audiovisualization/GLBubble;->draw()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public isCalmedDown()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/cleveroad/audiovisualization/GLWaveLayer;->isCalmedDown:Z

    return v0
.end method

.method public setColor([F)V
    .locals 5

    .line 181
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/GLWaveLayer;->rectangle:Lcom/cleveroad/audiovisualization/GLRectangle;

    invoke-virtual {v0, p1}, Lcom/cleveroad/audiovisualization/GLRectangle;->setColor([F)V

    .line 182
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/GLWaveLayer;->waves:[Lcom/cleveroad/audiovisualization/GLWave;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 183
    invoke-virtual {v4, p1}, Lcom/cleveroad/audiovisualization/GLWave;->setColor([F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/GLWaveLayer;->allBubbles:[Lcom/cleveroad/audiovisualization/GLBubble;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 186
    invoke-virtual {v3, p1}, Lcom/cleveroad/audiovisualization/GLBubble;->setColor([F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public update(JFF)V
    .locals 5

    long-to-float v0, p1

    mul-float v0, v0, p3

    const/4 p3, 0x1

    .line 86
    iput-boolean p3, p0, Lcom/cleveroad/audiovisualization/GLWaveLayer;->isCalmedDown:Z

    .line 87
    iget-object p3, p0, Lcom/cleveroad/audiovisualization/GLWaveLayer;->waves:[Lcom/cleveroad/audiovisualization/GLWave;

    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p3, v2

    .line 88
    invoke-virtual {v3, v0}, Lcom/cleveroad/audiovisualization/GLWave;->update(F)V

    .line 89
    iget-boolean v4, p0, Lcom/cleveroad/audiovisualization/GLWaveLayer;->isCalmedDown:Z

    invoke-virtual {v3}, Lcom/cleveroad/audiovisualization/GLWave;->isCalmedDown()Z

    move-result v3

    and-int/2addr v3, v4

    iput-boolean v3, p0, Lcom/cleveroad/audiovisualization/GLWaveLayer;->isCalmedDown:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 91
    :cond_0
    iget-object p3, p0, Lcom/cleveroad/audiovisualization/GLWaveLayer;->usedBubbles:Ljava/util/Set;

    iget-object v0, p0, Lcom/cleveroad/audiovisualization/GLWaveLayer;->producedBubbles:Ljava/util/Set;

    invoke-interface {p3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 92
    iget-object p3, p0, Lcom/cleveroad/audiovisualization/GLWaveLayer;->producedBubbles:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->clear()V

    .line 93
    iget-object p3, p0, Lcom/cleveroad/audiovisualization/GLWaveLayer;->usedBubbles:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    .line 94
    :cond_1
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cleveroad/audiovisualization/GLBubble;

    .line 96
    invoke-virtual {v0, p1, p2, p4}, Lcom/cleveroad/audiovisualization/GLBubble;->update(JF)V

    .line 97
    invoke-virtual {v0}, Lcom/cleveroad/audiovisualization/GLBubble;->isOffScreen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/cleveroad/audiovisualization/GLWaveLayer;->unusedBubbles:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public updateData(FF)V
    .locals 5

    .line 127
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/GLWaveLayer;->waves:[Lcom/cleveroad/audiovisualization/GLWave;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 128
    iget-object v4, p0, Lcom/cleveroad/audiovisualization/GLWaveLayer;->random:Ljava/util/Random;

    invoke-static {p1, v4}, Lcom/cleveroad/audiovisualization/Utils;->randomize(FLjava/util/Random;)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/cleveroad/audiovisualization/GLWave;->setCoefficient(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    :cond_0
    iget v0, p0, Lcom/cleveroad/audiovisualization/GLWaveLayer;->amplitude:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    .line 131
    iput p2, p0, Lcom/cleveroad/audiovisualization/GLWaveLayer;->amplitude:F

    const/high16 p2, 0x3e800000    # 0.25f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    .line 133
    invoke-direct {p0}, Lcom/cleveroad/audiovisualization/GLWaveLayer;->produceBubbles()V

    goto :goto_1

    .line 136
    :cond_1
    iget p1, p0, Lcom/cleveroad/audiovisualization/GLWaveLayer;->amplitude:F

    const v0, 0x3f4ccccd    # 0.8f

    invoke-static {p1, p2, v0}, Lcom/cleveroad/audiovisualization/Utils;->smooth(FFF)F

    move-result p1

    iput p1, p0, Lcom/cleveroad/audiovisualization/GLWaveLayer;->amplitude:F

    :cond_2
    :goto_1
    return-void
.end method
