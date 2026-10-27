.class public abstract Lcom/android/server/display/DisplayModeFactory;
.super Ljava/lang/Object;
.source "DisplayModeFactory.java"


# static fields
.field public static final NEXT_DISPLAY_MODE_ID:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/server/display/DisplayModeFactory;->NEXT_DISPLAY_MODE_ID:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static createAnisotropyCorrectedModes(Ljava/util/List;Landroid/util/SparseArray;)Ljava/util/List;
    .registers 23

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 148
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_bc

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 149
    iget-object v2, v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 150
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getModeId()I

    move-result v3

    move-object/from16 v4, p1

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceControl$DisplayMode;

    if-nez v3, :cond_26

    goto :goto_9

    .line 154
    :cond_26
    iget v5, v3, Landroid/view/SurfaceControl$DisplayMode;->xDpi:F

    const/4 v6, 0x0

    cmpg-float v7, v5, v6

    if-lez v7, :cond_9

    iget v7, v3, Landroid/view/SurfaceControl$DisplayMode;->yDpi:F

    cmpg-float v6, v7, v6

    if-gtz v6, :cond_34

    goto :goto_9

    :cond_34
    const v6, 0x3f833333    # 1.025f

    mul-float v8, v7, v6

    cmpl-float v8, v5, v8

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    const/4 v14, 0x6

    if-lez v8, :cond_7c

    .line 161
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, v3, Landroid/view/SurfaceControl$DisplayMode;->xDpi:F

    mul-float/2addr v5, v6

    iget v3, v3, Landroid/view/SurfaceControl$DisplayMode;->yDpi:F

    div-float/2addr v5, v3

    float-to-double v5, v5

    add-double/2addr v5, v9

    double-to-int v3, v5

    .line 162
    new-instance v5, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    new-instance v11, Landroid/view/Display$Mode;

    sget-object v6, Lcom/android/server/display/DisplayModeFactory;->NEXT_DISPLAY_MODE_ID:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 163
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v12

    .line 164
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getModeId()I

    move-result v13

    .line 165
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v15

    .line 166
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v17

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getVsyncRate()F

    move-result v18

    .line 167
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getAlternativeRefreshRates()[F

    move-result-object v19

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getSupportedHdrTypes()[I

    move-result-object v20

    move/from16 v16, v3

    invoke-direct/range {v11 .. v20}, Landroid/view/Display$Mode;-><init>(IIIIIFF[F[I)V

    invoke-direct {v5, v11}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;-><init>(Landroid/view/Display$Mode;)V

    .line 162
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_7c
    mul-float/2addr v5, v6

    cmpl-float v5, v7, v5

    if-lez v5, :cond_9

    .line 172
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, v3, Landroid/view/SurfaceControl$DisplayMode;->yDpi:F

    mul-float/2addr v5, v6

    iget v3, v3, Landroid/view/SurfaceControl$DisplayMode;->xDpi:F

    div-float/2addr v5, v3

    float-to-double v5, v5

    add-double/2addr v5, v9

    double-to-int v15, v5

    .line 173
    new-instance v3, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    new-instance v11, Landroid/view/Display$Mode;

    sget-object v5, Lcom/android/server/display/DisplayModeFactory;->NEXT_DISPLAY_MODE_ID:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 174
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v12

    .line 175
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getModeId()I

    move-result v13

    .line 176
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v16

    .line 177
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v17

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getVsyncRate()F

    move-result v18

    .line 178
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getAlternativeRefreshRates()[F

    move-result-object v19

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getSupportedHdrTypes()[I

    move-result-object v20

    invoke-direct/range {v11 .. v20}, Landroid/view/Display$Mode;-><init>(IIIIIFF[F[I)V

    invoke-direct {v3, v11}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;-><init>(Landroid/view/Display$Mode;)V

    .line 173
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_bc
    return-object v0
.end method

.method public static createArrSyntheticModes(Ljava/util/List;ZZ)Ljava/util/List;
    .registers 20

    if-nez p2, :cond_5

    .line 81
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    :cond_5
    if-nez p1, :cond_a

    .line 85
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 88
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 91
    iget-object v3, v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_13

    .line 92
    iget-object v2, v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 96
    :cond_2f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_38
    :goto_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 98
    iget-object v4, v3, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-static {v4}, Lcom/android/server/display/DisplayModeFactory;->is60HzAchievable(Landroid/view/Display$Mode;)Z

    move-result v4

    if-nez v4, :cond_4d

    goto :goto_38

    .line 102
    :cond_4d
    iget-object v4, v3, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_58

    goto :goto_38

    .line 106
    :cond_58
    iget-object v4, v3, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-static {v1, v4}, Lcom/android/server/display/DisplayModeFactory;->hasMatchingForArr(Ljava/util/List;Landroid/view/Display$Mode;)Z

    move-result v4

    if-nez v4, :cond_38

    iget-object v4, v3, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 107
    invoke-static {v0, v4}, Lcom/android/server/display/DisplayModeFactory;->hasMatchingForArr(Ljava/util/List;Landroid/view/Display$Mode;)Z

    move-result v4

    if-eqz v4, :cond_69

    goto :goto_38

    .line 110
    :cond_69
    iget-object v3, v3, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_38

    .line 114
    :cond_6f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_7a
    if-ge v4, v2, :cond_af

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Landroid/view/Display$Mode;

    .line 116
    new-instance v6, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    new-instance v7, Landroid/view/Display$Mode;

    sget-object v8, Lcom/android/server/display/DisplayModeFactory;->NEXT_DISPLAY_MODE_ID:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 117
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v8

    .line 118
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getModeId()I

    move-result v9

    .line 119
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v11

    invoke-virtual {v5}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v12

    new-array v15, v3, [F

    .line 121
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getSupportedHdrTypes()[I

    move-result-object v16

    const/4 v10, 0x1

    const/high16 v13, 0x42700000    # 60.0f

    const/high16 v14, 0x42700000    # 60.0f

    invoke-direct/range {v7 .. v16}, Landroid/view/Display$Mode;-><init>(IIIIIFF[F[I)V

    invoke-direct {v6, v7}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;-><init>(Landroid/view/Display$Mode;)V

    .line 116
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7a

    :cond_af
    return-object v0
.end method

.method public static createMode(IIF)Landroid/view/Display$Mode;
    .registers 13

    .line 50
    new-instance v0, Landroid/view/Display$Mode;

    sget-object v1, Lcom/android/server/display/DisplayModeFactory;->NEXT_DISPLAY_MODE_ID:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    const/4 v2, 0x0

    new-array v8, v2, [F

    new-array v9, v2, [I

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v7, p2

    move v4, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v9}, Landroid/view/Display$Mode;-><init>(IIIIIFF[F[I)V

    return-object v0
.end method

.method public static createMode(Landroid/view/SurfaceControl$DisplayMode;[FZZZ)Landroid/view/Display$Mode;
    .registers 15

    if-eqz p3, :cond_f

    if-eqz p2, :cond_f

    .line 61
    iget p2, p0, Landroid/view/SurfaceControl$DisplayMode;->peakRefreshRate:F

    const p3, 0x42700a3d    # 60.01f

    cmpg-float p2, p2, p3

    if-gtz p2, :cond_f

    const/4 p2, 0x1

    goto :goto_10

    :cond_f
    const/4 p2, 0x0

    :goto_10
    if-eqz p4, :cond_14

    or-int/lit8 p2, p2, 0x2

    :cond_14
    move v3, p2

    .line 70
    new-instance v0, Landroid/view/Display$Mode;

    sget-object p2, Lcom/android/server/display/DisplayModeFactory;->NEXT_DISPLAY_MODE_ID:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    iget v4, p0, Landroid/view/SurfaceControl$DisplayMode;->width:I

    iget v5, p0, Landroid/view/SurfaceControl$DisplayMode;->height:I

    iget v6, p0, Landroid/view/SurfaceControl$DisplayMode;->peakRefreshRate:F

    iget v7, p0, Landroid/view/SurfaceControl$DisplayMode;->vsyncRate:F

    iget-object v9, p0, Landroid/view/SurfaceControl$DisplayMode;->supportedHdrTypes:[I

    const/4 v2, -0x1

    move-object v8, p1

    invoke-direct/range {v0 .. v9}, Landroid/view/Display$Mode;-><init>(IIIIIFF[F[I)V

    return-object v0
.end method

.method public static hasMatchingForArr(Ljava/util/List;Landroid/view/Display$Mode;)Z
    .registers 3

    .line 186
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Display$Mode;

    .line 187
    invoke-static {p1, v0}, Lcom/android/server/display/DisplayModeFactory;->matchingForSyntheticArr(Landroid/view/Display$Mode;Landroid/view/Display$Mode;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public static is60HzAchievable(Landroid/view/Display$Mode;)Z
    .registers 2

    .line 195
    invoke-virtual {p0}, Landroid/view/Display$Mode;->getVsyncRate()F

    move-result p0

    const/high16 v0, 0x42700000    # 60.0f

    div-float/2addr p0, v0

    .line 196
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const v0, 0x3c23d70a    # 0.01f

    cmpg-float p0, p0, v0

    if-gez p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public static matchingForSyntheticArr(Landroid/view/Display$Mode;Landroid/view/Display$Mode;)Z
    .registers 4

    .line 200
    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v1

    if-ne v0, v1, :cond_24

    .line 201
    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v1

    if-ne v0, v1, :cond_24

    .line 202
    invoke-virtual {p0}, Landroid/view/Display$Mode;->getSupportedHdrTypes()[I

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getSupportedHdrTypes()[I

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    if-eqz p0, :cond_24

    const/4 p0, 0x1

    return p0

    :cond_24
    const/4 p0, 0x0

    return p0
.end method
