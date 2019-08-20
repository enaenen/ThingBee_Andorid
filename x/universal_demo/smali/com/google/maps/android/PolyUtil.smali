.class public Lcom/google/maps/android/PolyUtil;
.super Ljava/lang/Object;
.source "PolyUtil.java"


# static fields
.field private static final DEFAULT_TOLERANCE:D = 0.1


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containsLocation(DDLjava/util/List;Z)Z
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;Z)Z"
        }
    .end annotation

    .line 103
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 107
    :cond_0
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    .line 108
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v15

    const/16 v17, 0x1

    add-int/lit8 v0, v0, -0x1

    move-object/from16 v2, p4

    .line 109
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLng;

    .line 110
    iget-wide v3, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    .line 111
    iget-wide v5, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    .line 113
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-wide v2, v3

    const/16 v18, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/maps/model/LatLng;

    sub-double v7, v15, v5

    const-wide v9, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    const-wide v11, 0x400921fb54442d18L    # Math.PI

    .line 114
    invoke-static/range {v7 .. v12}, Lcom/google/maps/android/MathUtil;->wrap(DDD)D

    move-result-wide v10

    cmpl-double v7, v13, v2

    if-nez v7, :cond_1

    const-wide/16 v7, 0x0

    cmpl-double v9, v10, v7

    if-nez v9, :cond_1

    return v17

    .line 119
    :cond_1
    iget-wide v7, v4, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v19

    .line 120
    iget-wide v7, v4, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v21

    sub-double v23, v21, v5

    const-wide v25, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    const-wide v27, 0x400921fb54442d18L    # Math.PI

    .line 122
    invoke-static/range {v23 .. v28}, Lcom/google/maps/android/MathUtil;->wrap(DDD)D

    move-result-wide v6

    move-wide/from16 v4, v19

    move-wide v8, v13

    move/from16 v12, p5

    invoke-static/range {v2 .. v12}, Lcom/google/maps/android/PolyUtil;->intersects(DDDDDZ)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v18, v18, 0x1

    :cond_2
    move-wide/from16 v2, v19

    move-wide/from16 v5, v21

    goto :goto_0

    :cond_3
    and-int/lit8 v0, v18, 0x1

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const/16 v17, 0x0

    :goto_1
    return v17
.end method

.method public static containsLocation(Lcom/google/android/gms/maps/model/LatLng;Ljava/util/List;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/maps/model/LatLng;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;Z)Z"
        }
    .end annotation

    .line 91
    iget-wide v0, p0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/google/maps/android/PolyUtil;->containsLocation(DDLjava/util/List;Z)Z

    move-result p0

    return p0
.end method

.method public static decode(Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .line 441
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 445
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    :goto_1
    add-int/lit8 v9, v3, 0x1

    .line 455
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x3f

    sub-int/2addr v3, v6

    shl-int v10, v3, v8

    add-int/2addr v7, v10

    add-int/lit8 v8, v8, 0x5

    const/16 v10, 0x1f

    if-ge v3, v10, :cond_3

    and-int/lit8 v3, v7, 0x1

    if-eqz v3, :cond_0

    shr-int/lit8 v3, v7, 0x1

    xor-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_0
    shr-int/lit8 v3, v7, 0x1

    :goto_2
    add-int/2addr v3, v4

    const/4 v4, 0x1

    const/4 v7, 0x0

    :goto_3
    add-int/lit8 v8, v9, 0x1

    .line 464
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    add-int/lit8 v9, v9, -0x3f

    sub-int/2addr v9, v6

    shl-int v11, v9, v7

    add-int/2addr v4, v11

    add-int/lit8 v7, v7, 0x5

    if-ge v9, v10, :cond_2

    and-int/lit8 v6, v4, 0x1

    if-eqz v6, :cond_1

    shr-int/lit8 v4, v4, 0x1

    xor-int/lit8 v4, v4, -0x1

    goto :goto_4

    :cond_1
    shr-int/lit8 v4, v4, 0x1

    :goto_4
    add-int/2addr v5, v4

    .line 470
    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    int-to-double v6, v3

    const-wide v9, 0x3ee4f8b588e368f1L    # 1.0E-5

    mul-double v6, v6, v9

    int-to-double v11, v5

    mul-double v11, v11, v9

    invoke-direct {v4, v6, v7, v11, v12}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v3

    move v3, v8

    goto :goto_0

    :cond_2
    move v9, v8

    goto :goto_3

    :cond_3
    move v3, v9

    goto :goto_1

    :cond_4
    return-object v1
.end method

.method public static distanceToLine(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D
    .locals 12

    .line 411
    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    invoke-static {p2, p0}, Lcom/google/maps/android/SphericalUtil;->computeDistanceBetween(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D

    move-result-wide p0

    return-wide p0

    .line 415
    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 416
    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 417
    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 418
    iget-wide v6, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 419
    iget-wide v8, p2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    .line 420
    iget-wide v10, p2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    sub-double/2addr v8, v4

    sub-double/2addr v10, v6

    sub-double/2addr v0, v4

    mul-double v0, v0, v8

    sub-double/2addr v2, v6

    mul-double v2, v2, v10

    add-double/2addr v0, v2

    mul-double v8, v8, v8

    mul-double v10, v10, v10

    add-double/2addr v8, v10

    div-double/2addr v0, v8

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_1

    .line 427
    invoke-static {p0, p1}, Lcom/google/maps/android/SphericalUtil;->computeDistanceBetween(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D

    move-result-wide p0

    return-wide p0

    :cond_1
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_2

    .line 430
    invoke-static {p0, p2}, Lcom/google/maps/android/SphericalUtil;->computeDistanceBetween(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D

    move-result-wide p0

    return-wide p0

    .line 432
    :cond_2
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v3, p0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v5, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    sub-double/2addr v3, v5

    iget-wide v5, p0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-wide v7, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    sub-double/2addr v5, v7

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 433
    new-instance p0, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v3, p2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v5, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    sub-double/2addr v3, v5

    mul-double v3, v3, v0

    iget-wide v5, p2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-wide p1, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    sub-double/2addr v5, p1

    mul-double v0, v0, v5

    invoke-direct {p0, v3, v4, v0, v1}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 434
    invoke-static {v2, p0}, Lcom/google/maps/android/SphericalUtil;->computeDistanceBetween(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static encode(Ljava/util/List;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 483
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 485
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/maps/model/LatLng;

    .line 486
    iget-wide v6, v5, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    const-wide v8, 0x40f86a0000000000L    # 100000.0

    mul-double v6, v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    .line 487
    iget-wide v10, v5, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    mul-double v10, v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    sub-long v10, v6, v1

    sub-long v1, v8, v3

    .line 492
    invoke-static {v10, v11, v0}, Lcom/google/maps/android/PolyUtil;->encode(JLjava/lang/StringBuffer;)V

    .line 493
    invoke-static {v1, v2, v0}, Lcom/google/maps/android/PolyUtil;->encode(JLjava/lang/StringBuffer;)V

    move-wide v1, v6

    move-wide v3, v8

    goto :goto_0

    .line 498
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static encode(JLjava/lang/StringBuffer;)V
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    const/4 v0, 0x1

    if-gez v2, :cond_0

    shl-long/2addr p0, v0

    const-wide/16 v0, -0x1

    xor-long v2, p0, v0

    goto :goto_0

    :cond_0
    shl-long v2, p0, v0

    :goto_0
    const-wide/16 p0, 0x20

    cmp-long v0, v2, p0

    const-wide/16 v4, 0x3f

    if-ltz v0, :cond_1

    const-wide/16 v0, 0x1f

    and-long v6, v2, v0

    or-long v0, v6, p0

    add-long p0, v0, v4

    long-to-int p0, p0

    .line 504
    invoke-static {p0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/4 p0, 0x5

    shr-long/2addr v2, p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    add-long p0, v2, v4

    long-to-int p0, p0

    .line 507
    invoke-static {p0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    return-void
.end method

.method private static intersects(DDDDDZ)Z
    .locals 18

    const-wide/16 v8, 0x0

    cmpl-double v10, p8, v8

    const/4 v11, 0x0

    if-ltz v10, :cond_0

    cmpl-double v10, p8, p4

    if-gez v10, :cond_1

    :cond_0
    cmpg-double v10, p8, v8

    if-gez v10, :cond_2

    cmpg-double v10, p8, p4

    if-gez v10, :cond_2

    :cond_1
    return v11

    :cond_2
    const-wide v12, -0x4006de04abbbd2e8L    # -1.5707963267948966

    cmpg-double v10, p6, v12

    if-gtz v10, :cond_3

    return v11

    :cond_3
    cmpg-double v10, p0, v12

    if-lez v10, :cond_b

    cmpg-double v10, p2, v12

    if-lez v10, :cond_b

    const-wide v12, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpl-double v10, p0, v12

    if-gez v10, :cond_b

    cmpl-double v10, p2, v12

    if-ltz v10, :cond_4

    goto :goto_2

    :cond_4
    const-wide v14, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    cmpg-double v10, p4, v14

    if-gtz v10, :cond_5

    return v11

    :cond_5
    const/4 v10, 0x0

    sub-double v14, p4, p8

    mul-double v14, v14, p0

    mul-double v16, p2, p8

    add-double v14, v14, v16

    div-double v14, v14, p4

    cmpl-double v10, p0, v8

    if-ltz v10, :cond_6

    cmpl-double v10, p2, v8

    if-ltz v10, :cond_6

    cmpg-double v10, p6, v14

    if-gez v10, :cond_6

    return v11

    :cond_6
    cmpg-double v10, p0, v8

    const/16 v16, 0x1

    if-gtz v10, :cond_7

    cmpg-double v10, p2, v8

    if-gtz v10, :cond_7

    cmpl-double v8, p6, v14

    if-ltz v8, :cond_7

    return v16

    :cond_7
    cmpl-double v8, p6, v12

    if-ltz v8, :cond_8

    return v16

    :cond_8
    if-eqz p10, :cond_9

    .line 86
    invoke-static/range {p6 .. p7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p8

    invoke-static/range {v0 .. v7}, Lcom/google/maps/android/PolyUtil;->tanLatGC(DDDD)D

    move-result-wide v0

    cmpl-double v2, v8, v0

    if-ltz v2, :cond_a

    :goto_0
    const/4 v11, 0x1

    goto :goto_1

    .line 87
    :cond_9
    invoke-static/range {p6 .. p7}, Lcom/google/maps/android/MathUtil;->mercator(D)D

    move-result-wide v8

    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p8

    invoke-static/range {v0 .. v7}, Lcom/google/maps/android/PolyUtil;->mercatorLatRhumb(DDDD)D

    move-result-wide v0

    cmpl-double v2, v8, v0

    if-ltz v2, :cond_a

    goto :goto_0

    :cond_a
    :goto_1
    return v11

    :cond_b
    :goto_2
    return v11
.end method

.method public static isClosedPolygon(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 393
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/LatLng;

    .line 394
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/maps/model/LatLng;

    .line 395
    invoke-virtual {v1, p0}, Lcom/google/android/gms/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v3

    :cond_0
    return v0
.end method

.method public static isLocationOnEdge(Lcom/google/android/gms/maps/model/LatLng;Ljava/util/List;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/maps/model/LatLng;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;Z)Z"
        }
    .end annotation

    const-wide v0, 0x3fb999999999999aL    # 0.1

    .line 149
    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/maps/android/PolyUtil;->isLocationOnEdge(Lcom/google/android/gms/maps/model/LatLng;Ljava/util/List;ZD)Z

    move-result p0

    return p0
.end method

.method public static isLocationOnEdge(Lcom/google/android/gms/maps/model/LatLng;Ljava/util/List;ZD)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/maps/model/LatLng;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;ZD)Z"
        }
    .end annotation

    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    .line 141
    invoke-static/range {v0 .. v5}, Lcom/google/maps/android/PolyUtil;->isLocationOnEdgeOrPath(Lcom/google/android/gms/maps/model/LatLng;Ljava/util/List;ZZD)Z

    move-result p0

    return p0
.end method

.method private static isLocationOnEdgeOrPath(Lcom/google/android/gms/maps/model/LatLng;Ljava/util/List;ZZD)Z
    .locals 44
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/maps/model/LatLng;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;ZZD)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 175
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const-wide v3, 0x41584db040000000L    # 6371009.0

    div-double v3, p4, v3

    .line 180
    invoke-static {v3, v4}, Lcom/google/maps/android/MathUtil;->hav(D)D

    move-result-wide v19

    .line 181
    iget-wide v5, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    .line 182
    iget-wide v5, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v21

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    sub-int/2addr v1, v0

    move v5, v1

    move-object/from16 v1, p1

    goto :goto_0

    :cond_1
    move-object/from16 v1, p1

    const/4 v5, 0x0

    .line 183
    :goto_0
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/maps/model/LatLng;

    .line 184
    iget-wide v6, v5, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 185
    iget-wide v8, v5, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    if-eqz p3, :cond_3

    .line 187
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-wide v5, v6

    move-wide v7, v8

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/maps/model/LatLng;

    .line 188
    iget-wide v9, v3, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v23

    .line 189
    iget-wide v3, v3, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    move-wide/from16 v9, v23

    move-wide v11, v3

    move-wide/from16 v25, v13

    move-wide/from16 v15, v21

    move-wide/from16 v17, v19

    .line 190
    invoke-static/range {v5 .. v18}, Lcom/google/maps/android/PolyUtil;->isOnSegmentGC(DDDDDDD)Z

    move-result v5

    if-eqz v5, :cond_2

    return v0

    :cond_2
    move-wide v7, v3

    move-wide/from16 v5, v23

    move-wide/from16 v13, v25

    goto :goto_1

    :cond_3
    move-wide/from16 v25, v13

    const/4 v5, 0x0

    sub-double v15, v13, v3

    add-double/2addr v3, v13

    .line 204
    invoke-static {v6, v7}, Lcom/google/maps/android/MathUtil;->mercator(D)D

    move-result-wide v10

    .line 205
    invoke-static {v13, v14}, Lcom/google/maps/android/MathUtil;->mercator(D)D

    move-result-wide v17

    const/4 v5, 0x3

    .line 206
    new-array v5, v5, [D

    .line 207
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-wide/from16 v23, v10

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/maps/model/LatLng;

    .line 208
    iget-wide v11, v10, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    .line 209
    invoke-static {v11, v12}, Lcom/google/maps/android/MathUtil;->mercator(D)D

    move-result-wide v25

    move-object/from16 v27, v1

    .line 210
    iget-wide v0, v10, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 211
    invoke-static {v6, v7, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v28

    cmpl-double v10, v28, v15

    if-ltz v10, :cond_6

    invoke-static {v6, v7, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    cmpg-double v10, v6, v3

    if-gtz v10, :cond_6

    sub-double v28, v0, v8

    const-wide v30, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    const-wide v32, 0x400921fb54442d18L    # Math.PI

    .line 213
    invoke-static/range {v28 .. v33}, Lcom/google/maps/android/MathUtil;->wrap(DDD)D

    move-result-wide v28

    sub-double v30, v21, v8

    const-wide v32, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    const-wide v34, 0x400921fb54442d18L    # Math.PI

    .line 214
    invoke-static/range {v30 .. v35}, Lcom/google/maps/android/MathUtil;->wrap(DDD)D

    move-result-wide v6

    aput-wide v6, v5, v2

    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    add-double v30, v6, v8

    const/4 v10, 0x1

    aput-wide v30, v5, v10

    const/4 v10, 0x2

    sub-double/2addr v6, v8

    aput-wide v6, v5, v10

    .line 219
    array-length v6, v5

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v6, :cond_6

    aget-wide v7, v5, v9

    sub-double v30, v25, v23

    mul-double v32, v28, v28

    mul-double v34, v30, v30

    add-double v32, v32, v34

    const-wide/16 v34, 0x0

    cmpg-double v10, v32, v34

    if-gtz v10, :cond_4

    goto :goto_4

    :cond_4
    mul-double v34, v7, v28

    const/4 v10, 0x0

    sub-double v36, v17, v23

    mul-double v36, v36, v30

    add-double v34, v34, v36

    div-double v36, v34, v32

    const-wide/16 v38, 0x0

    const-wide/high16 v40, 0x3ff0000000000000L    # 1.0

    .line 222
    invoke-static/range {v36 .. v41}, Lcom/google/maps/android/MathUtil;->clamp(DDD)D

    move-result-wide v34

    :goto_4
    mul-double v32, v34, v28

    mul-double v34, v34, v30

    const/4 v10, 0x0

    move-wide/from16 v42, v3

    add-double v2, v23, v34

    .line 225
    invoke-static {v2, v3}, Lcom/google/maps/android/MathUtil;->inverseMercator(D)D

    move-result-wide v2

    sub-double v30, v7, v32

    move-wide v7, v13

    move v4, v9

    move-wide v9, v2

    move-wide v2, v11

    move-wide/from16 v11, v30

    .line 226
    invoke-static/range {v7 .. v12}, Lcom/google/maps/android/MathUtil;->havDistance(DDD)D

    move-result-wide v7

    cmpg-double v9, v7, v19

    if-gez v9, :cond_5

    const/4 v7, 0x1

    return v7

    :cond_5
    const/4 v7, 0x1

    add-int/lit8 v9, v4, 0x1

    move-wide v11, v2

    move-wide/from16 v3, v42

    const/4 v2, 0x0

    goto :goto_3

    :cond_6
    move-wide/from16 v42, v3

    move-wide v2, v11

    const/4 v7, 0x1

    move-wide v8, v0

    move-wide v6, v2

    move-wide/from16 v23, v25

    move-object/from16 v1, v27

    move-wide/from16 v3, v42

    const/4 v0, 0x1

    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public static isLocationOnPath(Lcom/google/android/gms/maps/model/LatLng;Ljava/util/List;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/maps/model/LatLng;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;Z)Z"
        }
    .end annotation

    const-wide v0, 0x3fb999999999999aL    # 0.1

    .line 170
    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/maps/android/PolyUtil;->isLocationOnPath(Lcom/google/android/gms/maps/model/LatLng;Ljava/util/List;ZD)Z

    move-result p0

    return p0
.end method

.method public static isLocationOnPath(Lcom/google/android/gms/maps/model/LatLng;Ljava/util/List;ZD)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/maps/model/LatLng;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;ZD)Z"
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    .line 160
    invoke-static/range {v0 .. v5}, Lcom/google/maps/android/PolyUtil;->isLocationOnEdgeOrPath(Lcom/google/android/gms/maps/model/LatLng;Ljava/util/List;ZZD)Z

    move-result p0

    return p0
.end method

.method private static isOnSegmentGC(DDDDDDD)Z
    .locals 20

    sub-double v12, p2, p10

    move-wide/from16 v8, p0

    move-wide/from16 v10, p8

    .line 263
    invoke-static/range {v8 .. v13}, Lcom/google/maps/android/MathUtil;->havDistance(DDD)D

    move-result-wide v8

    cmpg-double v10, v8, p12

    const/4 v11, 0x1

    if-gtz v10, :cond_0

    return v11

    :cond_0
    const/4 v10, 0x0

    sub-double v16, p6, p10

    move-wide/from16 v12, p4

    move-wide/from16 v14, p8

    .line 267
    invoke-static/range {v12 .. v17}, Lcom/google/maps/android/MathUtil;->havDistance(DDD)D

    move-result-wide v12

    cmpg-double v10, v12, p12

    if-gtz v10, :cond_1

    return v11

    .line 271
    :cond_1
    invoke-static/range {p0 .. p11}, Lcom/google/maps/android/PolyUtil;->sinDeltaBearing(DDDDDD)D

    move-result-wide v4

    .line 272
    invoke-static {v8, v9}, Lcom/google/maps/android/MathUtil;->sinFromHav(D)D

    move-result-wide v14

    mul-double v14, v14, v4

    .line 273
    invoke-static {v14, v15}, Lcom/google/maps/android/MathUtil;->havFromSin(D)D

    move-result-wide v4

    cmpl-double v10, v4, p12

    const/4 v6, 0x0

    if-lez v10, :cond_2

    return v6

    :cond_2
    const/4 v7, 0x0

    sub-double v18, p2, p6

    move-wide/from16 v14, p0

    move-wide/from16 v16, p4

    .line 277
    invoke-static/range {v14 .. v19}, Lcom/google/maps/android/MathUtil;->havDistance(DDD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double v14, v0, v2

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v14, v16, v14

    mul-double v14, v14, v4

    add-double/2addr v14, v0

    cmpl-double v7, v8, v14

    if-gtz v7, :cond_6

    cmpl-double v7, v12, v14

    if-lez v7, :cond_3

    goto :goto_0

    :cond_3
    const-wide v14, 0x3fe7ae147ae147aeL    # 0.74

    cmpg-double v7, v0, v14

    if-gez v7, :cond_4

    return v11

    :cond_4
    mul-double v2, v2, v4

    const/4 v0, 0x0

    sub-double v16, v16, v2

    sub-double/2addr v8, v4

    div-double v8, v8, v16

    sub-double/2addr v12, v4

    div-double v12, v12, v16

    .line 288
    invoke-static {v8, v9, v12, v13}, Lcom/google/maps/android/MathUtil;->sinSumFromHav(DD)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_5

    const/4 v6, 0x1

    :cond_5
    return v6

    :cond_6
    :goto_0
    return v6
.end method

.method private static mercatorLatRhumb(DDDD)D
    .locals 2

    .line 45
    invoke-static {p0, p1}, Lcom/google/maps/android/MathUtil;->mercator(D)D

    move-result-wide p0

    sub-double v0, p4, p6

    mul-double p0, p0, v0

    invoke-static {p2, p3}, Lcom/google/maps/android/MathUtil;->mercator(D)D

    move-result-wide p2

    mul-double p2, p2, p6

    add-double/2addr p0, p2

    div-double/2addr p0, p4

    return-wide p0
.end method

.method public static simplify(Ljava/util/List;D)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;D)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 311
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    .line 313
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Polyline must have at least 1 point"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide/16 v5, 0x0

    cmpg-double v7, p1, v5

    if-gtz v7, :cond_1

    .line 316
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tolerance must be greater than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/google/maps/android/PolyUtil;->isClosedPolygon(Ljava/util/List;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_2

    .line 326
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v4

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/maps/model/LatLng;

    .line 328
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v4

    invoke-interface {v0, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 329
    new-instance v9, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v10, v8, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    const-wide v12, 0x3da5fd7fe1796495L    # 1.0E-11

    add-double/2addr v10, v12

    iget-wide v14, v8, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    add-double/2addr v14, v12

    invoke-direct {v9, v10, v11, v14, v15}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    :cond_2
    new-instance v9, Ljava/util/Stack;

    invoke-direct {v9}, Ljava/util/Stack;-><init>()V

    .line 335
    new-array v10, v3, [D

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const/4 v13, 0x0

    .line 336
    aput-wide v11, v10, v13

    add-int/lit8 v14, v3, -0x1

    .line 337
    aput-wide v11, v10, v14

    const/4 v11, 0x2

    if-le v3, v11, :cond_6

    .line 343
    new-array v3, v11, [I

    aput v13, v3, v13

    aput v14, v3, v4

    .line 344
    invoke-virtual {v9, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    .line 345
    :goto_0
    invoke-virtual {v9}, Ljava/util/Stack;->size()I

    move-result v12

    if-lez v12, :cond_6

    .line 346
    invoke-virtual {v9}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [I

    .line 348
    aget v14, v12, v13

    add-int/2addr v14, v4

    move-wide v15, v5

    :goto_1
    aget v5, v12, v4

    if-ge v14, v5, :cond_4

    .line 349
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/maps/model/LatLng;

    aget v6, v12, v13

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/maps/model/LatLng;

    aget v13, v12, v4

    .line 350
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/maps/model/LatLng;

    .line 349
    invoke-static {v5, v6, v13}, Lcom/google/maps/android/PolyUtil;->distanceToLine(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D

    move-result-wide v5

    cmpl-double v13, v5, v15

    if-lez v13, :cond_3

    move-wide v15, v5

    move v3, v14

    :cond_3
    add-int/lit8 v14, v14, 0x1

    const/4 v13, 0x0

    goto :goto_1

    :cond_4
    cmpl-double v5, v15, p1

    if-lez v5, :cond_5

    .line 357
    aput-wide v15, v10, v3

    .line 358
    new-array v5, v11, [I

    const/4 v6, 0x0

    aget v13, v12, v6

    aput v13, v5, v6

    aput v3, v5, v4

    .line 359
    invoke-virtual {v9, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    new-array v5, v11, [I

    aput v3, v5, v6

    aget v12, v12, v4

    aput v12, v5, v4

    .line 361
    invoke-virtual {v9, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    :goto_2
    const-wide/16 v5, 0x0

    const/4 v13, 0x0

    goto :goto_0

    :cond_6
    const/4 v6, 0x0

    if-eqz v7, :cond_7

    .line 368
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 369
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 375
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/model/LatLng;

    .line 376
    aget-wide v3, v10, v6

    const-wide/16 v7, 0x0

    cmpl-double v5, v3, v7

    if-eqz v5, :cond_8

    .line 377
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_9
    return-object v1
.end method

.method private static sinDeltaBearing(DDDDDD)D
    .locals 20

    .line 246
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    .line 247
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    .line 248
    invoke-static/range {p8 .. p9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    sub-double v10, p8, p0

    sub-double v12, p10, p2

    sub-double v0, p4, p0

    sub-double v2, p6, p2

    .line 253
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double v14, v14, v8

    .line 254
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v16, v16, v6

    .line 255
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    mul-double v4, v4, v18

    mul-double v8, v8, v4

    invoke-static {v12, v13}, Lcom/google/maps/android/MathUtil;->hav(D)D

    move-result-wide v12

    mul-double v8, v8, v12

    add-double/2addr v10, v8

    .line 256
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v4, v4, v6

    invoke-static {v2, v3}, Lcom/google/maps/android/MathUtil;->hav(D)D

    move-result-wide v2

    mul-double v4, v4, v2

    add-double/2addr v0, v4

    mul-double v2, v14, v14

    mul-double v4, v10, v10

    add-double/2addr v2, v4

    mul-double v4, v16, v16

    mul-double v6, v0, v0

    add-double/2addr v4, v6

    mul-double v2, v2, v4

    const-wide/16 v4, 0x0

    cmpg-double v6, v2, v4

    if-gtz v6, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    mul-double v14, v14, v0

    mul-double v10, v10, v16

    const/4 v0, 0x0

    sub-double/2addr v14, v10

    .line 258
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    div-double v0, v14, v0

    :goto_0
    return-wide v0
.end method

.method private static tanLatGC(DDDD)D
    .locals 2

    .line 38
    invoke-static {p0, p1}, Ljava/lang/Math;->tan(D)D

    move-result-wide p0

    sub-double v0, p4, p6

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double p0, p0, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->tan(D)D

    move-result-wide p2

    invoke-static {p6, p7}, Ljava/lang/Math;->sin(D)D

    move-result-wide p6

    mul-double p2, p2, p6

    add-double/2addr p0, p2

    invoke-static {p4, p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    div-double/2addr p0, p2

    return-wide p0
.end method
