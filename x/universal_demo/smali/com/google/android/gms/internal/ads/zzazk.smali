.class final Lcom/google/android/gms/internal/ads/zzazk;
.super Ljava/lang/Object;


# direct methods
.method private static zza([BII)J
    .locals 4

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzd([BI)J

    move-result-wide p0

    shr-long/2addr p0, p2

    const-wide/32 v0, 0x3ffffff

    and-long v2, p0, v0

    return-wide v2
.end method

.method private static zza([BJI)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    add-int v1, p3, v0

    const-wide/16 v2, 0xff

    and-long v4, p1, v2

    long-to-int v2, v4

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x8

    shr-long/2addr p1, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static zzd([BI)J
    .locals 4

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    int-to-long p0, p0

    const-wide v0, 0xffffffffL

    and-long v2, p0, v0

    return-wide v2
.end method

.method static zze([B[B)[B
    .locals 55

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v0

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The key length in bytes must be 32."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v2, 0x0

    invoke-static {v0, v2, v2}, Lcom/google/android/gms/internal/ads/zzazk;->zza([BII)J

    move-result-wide v4

    const-wide/32 v6, 0x3ffffff

    and-long v8, v4, v6

    const/4 v4, 0x2

    const/4 v5, 0x3

    invoke-static {v0, v5, v4}, Lcom/google/android/gms/internal/ads/zzazk;->zza([BII)J

    move-result-wide v10

    const-wide/32 v12, 0x3ffff03

    and-long v14, v10, v12

    const/4 v10, 0x4

    const/4 v11, 0x6

    invoke-static {v0, v11, v10}, Lcom/google/android/gms/internal/ads/zzazk;->zza([BII)J

    move-result-wide v12

    const-wide/32 v16, 0x3ffc0ff

    and-long v18, v12, v16

    const/16 v12, 0x9

    invoke-static {v0, v12, v11}, Lcom/google/android/gms/internal/ads/zzazk;->zza([BII)J

    move-result-wide v16

    const-wide/32 v20, 0x3f03fff

    and-long v22, v16, v20

    const/16 v13, 0x8

    const/16 v3, 0xc

    invoke-static {v0, v3, v13}, Lcom/google/android/gms/internal/ads/zzazk;->zza([BII)J

    move-result-wide v16

    const-wide/32 v20, 0xfffff

    and-long v24, v16, v20

    const-wide/16 v16, 0x5

    mul-long v20, v14, v16

    mul-long v26, v18, v16

    mul-long v28, v22, v16

    mul-long v30, v24, v16

    const/16 v6, 0x11

    new-array v6, v6, [B

    const-wide/16 v34, 0x0

    move-wide/from16 v36, v34

    move-wide/from16 v38, v36

    move-wide/from16 v40, v38

    move-wide/from16 v42, v40

    const/4 v7, 0x0

    :goto_0
    array-length v3, v1

    const/16 v13, 0x10

    const/16 v44, 0x1a

    if-ge v7, v3, :cond_2

    array-length v3, v1

    sub-int/2addr v3, v7

    invoke-static {v13, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v7, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v45, 0x1

    aput-byte v45, v6, v3

    if-eq v3, v13, :cond_1

    add-int/lit8 v3, v3, 0x1

    const/16 v13, 0x11

    invoke-static {v6, v3, v13, v2}, Ljava/util/Arrays;->fill([BIIB)V

    :cond_1
    invoke-static {v6, v2, v2}, Lcom/google/android/gms/internal/ads/zzazk;->zza([BII)J

    move-result-wide v47

    add-long v49, v42, v47

    invoke-static {v6, v5, v4}, Lcom/google/android/gms/internal/ads/zzazk;->zza([BII)J

    move-result-wide v42

    add-long v47, v34, v42

    invoke-static {v6, v11, v10}, Lcom/google/android/gms/internal/ads/zzazk;->zza([BII)J

    move-result-wide v34

    add-long v42, v36, v34

    invoke-static {v6, v12, v11}, Lcom/google/android/gms/internal/ads/zzazk;->zza([BII)J

    move-result-wide v34

    add-long v36, v38, v34

    const/16 v3, 0xc

    const/16 v13, 0x8

    invoke-static {v6, v3, v13}, Lcom/google/android/gms/internal/ads/zzazk;->zza([BII)J

    move-result-wide v34

    const/16 v3, 0x10

    aget-byte v3, v6, v3

    shl-int/lit8 v3, v3, 0x18

    int-to-long v4, v3

    or-long v38, v34, v4

    add-long v3, v40, v38

    mul-long v34, v49, v8

    mul-long v38, v47, v30

    add-long v40, v34, v38

    mul-long v34, v42, v28

    add-long v38, v40, v34

    mul-long v34, v36, v26

    add-long v40, v38, v34

    mul-long v34, v3, v20

    add-long v38, v40, v34

    mul-long v34, v49, v14

    mul-long v40, v47, v8

    add-long v45, v34, v40

    mul-long v34, v42, v30

    add-long v40, v45, v34

    mul-long v34, v36, v28

    add-long v45, v40, v34

    mul-long v34, v3, v26

    add-long v40, v45, v34

    mul-long v34, v49, v18

    mul-long v45, v47, v14

    add-long v51, v34, v45

    mul-long v34, v42, v8

    add-long v45, v51, v34

    mul-long v34, v36, v30

    add-long v51, v45, v34

    mul-long v34, v3, v28

    add-long v45, v51, v34

    mul-long v34, v49, v22

    mul-long v51, v47, v18

    add-long v53, v34, v51

    mul-long v34, v42, v14

    add-long v51, v53, v34

    mul-long v34, v36, v8

    add-long v53, v51, v34

    mul-long v34, v3, v30

    add-long v51, v53, v34

    mul-long v49, v49, v24

    mul-long v47, v47, v22

    add-long v34, v49, v47

    mul-long v42, v42, v18

    add-long v47, v34, v42

    mul-long v36, v36, v14

    add-long v34, v47, v36

    mul-long v3, v3, v8

    add-long v36, v34, v3

    shr-long v3, v38, v44

    const-wide/32 v32, 0x3ffffff

    and-long v34, v38, v32

    add-long v38, v40, v3

    shr-long v3, v38, v44

    and-long v40, v38, v32

    add-long v38, v45, v3

    shr-long v3, v38, v44

    and-long v42, v38, v32

    add-long v38, v51, v3

    shr-long v3, v38, v44

    and-long v45, v38, v32

    add-long v38, v36, v3

    shr-long v3, v38, v44

    and-long v36, v38, v32

    mul-long v3, v3, v16

    add-long v38, v34, v3

    shr-long v3, v38, v44

    and-long v34, v38, v32

    add-long v38, v40, v3

    add-int/lit8 v7, v7, 0x10

    move-wide/from16 v40, v36

    move-wide/from16 v36, v42

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/16 v13, 0x8

    move-wide/from16 v42, v34

    move-wide/from16 v34, v38

    move-wide/from16 v38, v45

    goto/16 :goto_0

    :cond_2
    const-wide/32 v32, 0x3ffffff

    shr-long v3, v34, v44

    and-long v5, v34, v32

    add-long v7, v36, v3

    shr-long v3, v7, v44

    and-long v12, v7, v32

    add-long v7, v38, v3

    shr-long v3, v7, v44

    and-long v14, v7, v32

    add-long v7, v40, v3

    shr-long v3, v7, v44

    and-long v18, v7, v32

    mul-long v3, v3, v16

    add-long v7, v42, v3

    shr-long v3, v7, v44

    and-long v20, v7, v32

    add-long v7, v5, v3

    add-long v3, v20, v16

    shr-long v5, v3, v44

    and-long v16, v3, v32

    add-long v3, v7, v5

    shr-long v5, v3, v44

    and-long v22, v3, v32

    add-long v3, v12, v5

    shr-long v5, v3, v44

    and-long v24, v3, v32

    add-long v3, v14, v5

    shr-long v5, v3, v44

    and-long v26, v3, v32

    add-long v3, v18, v5

    const-wide/32 v5, 0x4000000

    sub-long v28, v3, v5

    const/16 v1, 0x3f

    shr-long v3, v28, v1

    and-long v5, v20, v3

    and-long v20, v7, v3

    and-long v7, v12, v3

    and-long v12, v14, v3

    and-long v14, v18, v3

    const-wide/16 v18, -0x1

    xor-long v30, v3, v18

    and-long v3, v16, v30

    or-long v16, v5, v3

    and-long v3, v22, v30

    or-long v5, v20, v3

    and-long v3, v24, v30

    or-long v18, v7, v3

    and-long v3, v26, v30

    or-long v7, v12, v3

    and-long v3, v28, v30

    or-long v12, v14, v3

    shl-long v3, v5, v44

    or-long v14, v16, v3

    const-wide v3, 0xffffffffL

    and-long v16, v14, v3

    shr-long/2addr v5, v11

    const/16 v1, 0x14

    shl-long v14, v18, v1

    or-long v20, v5, v14

    and-long v5, v20, v3

    const/16 v1, 0xc

    shr-long v14, v18, v1

    const/16 v1, 0xe

    shl-long v18, v7, v1

    or-long v20, v14, v18

    and-long v14, v20, v3

    const/16 v1, 0x12

    shr-long/2addr v7, v1

    const/16 v1, 0x8

    shl-long v11, v12, v1

    or-long v18, v7, v11

    and-long v7, v18, v3

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzazk;->zzd([BI)J

    move-result-wide v11

    add-long v18, v16, v11

    and-long v11, v18, v3

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzazk;->zzd([BI)J

    move-result-wide v16

    add-long v20, v5, v16

    const/16 v1, 0x20

    shr-long v5, v18, v1

    add-long v16, v20, v5

    and-long v5, v16, v3

    const/16 v9, 0x18

    invoke-static {v0, v9}, Lcom/google/android/gms/internal/ads/zzazk;->zzd([BI)J

    move-result-wide v18

    add-long v20, v14, v18

    shr-long v13, v16, v1

    add-long v15, v20, v13

    and-long v13, v15, v3

    const/16 v9, 0x1c

    invoke-static {v0, v9}, Lcom/google/android/gms/internal/ads/zzazk;->zzd([BI)J

    move-result-wide v17

    add-long v19, v7, v17

    shr-long v0, v15, v1

    add-long v7, v19, v0

    and-long v0, v7, v3

    const/16 v3, 0x10

    new-array v3, v3, [B

    invoke-static {v3, v11, v12, v2}, Lcom/google/android/gms/internal/ads/zzazk;->zza([BJI)V

    invoke-static {v3, v5, v6, v10}, Lcom/google/android/gms/internal/ads/zzazk;->zza([BJI)V

    const/16 v2, 0x8

    invoke-static {v3, v13, v14, v2}, Lcom/google/android/gms/internal/ads/zzazk;->zza([BJI)V

    const/16 v2, 0xc

    invoke-static {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzazk;->zza([BJI)V

    return-object v3
.end method
