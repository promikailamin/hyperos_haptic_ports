.class public final Lcom/android/server/display/mode/VoteSummary;
.super Ljava/lang/Object;
.source "VoteSummary.java"


# instance fields
.field public appRequestBaseModeRefreshRate:F

.field public disableRefreshRateSwitching:Z

.field public height:I

.field public final mLoggingEnabled:Z

.field public final mSupportedModesVoteEnabled:Z

.field public final mSupportsFrameRateOverride:Z

.field public maxPhysicalRefreshRate:F

.field public maxRenderFrameRate:F

.field public minHeight:I

.field public minPhysicalRefreshRate:F

.field public minRenderFrameRate:F

.field public minWidth:I

.field public rejectedModeIds:Ljava/util/Set;

.field public requestedRefreshRates:Ljava/util/Set;

.field public supportedModeIds:Ljava/util/List;

.field public supportedRefreshRates:Ljava/util/List;

.field public width:I


# direct methods
.method public constructor <init>(ZZZ)V
    .registers 5

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/VoteSummary;->requestedRefreshRates:Ljava/util/Set;

    .line 63
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/VoteSummary;->rejectedModeIds:Ljava/util/Set;

    .line 71
    iput-boolean p1, p0, Lcom/android/server/display/mode/VoteSummary;->mSupportedModesVoteEnabled:Z

    .line 72
    iput-boolean p2, p0, Lcom/android/server/display/mode/VoteSummary;->mLoggingEnabled:Z

    .line 73
    iput-boolean p3, p0, Lcom/android/server/display/mode/VoteSummary;->mSupportsFrameRateOverride:Z

    .line 74
    invoke-virtual {p0}, Lcom/android/server/display/mode/VoteSummary;->reset()V

    return-void
.end method

.method public static equalsWithinFloatTolerance(FF)Z
    .registers 4

    .line 0
    const v0, 0x3c23d70a    # 0.01f

    sub-float v1, p1, v0

    cmpl-float v1, p0, v1

    if-ltz v1, :cond_10

    add-float/2addr p1, v0

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public adjustSize(Landroid/view/Display$Mode;[Landroid/view/Display$Mode;)V
    .registers 5

    .line 101
    iget v0, p0, Lcom/android/server/display/mode/VoteSummary;->height:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    iget v0, p0, Lcom/android/server/display/mode/VoteSummary;->width:I

    if-ne v0, v1, :cond_a

    goto :goto_e

    .line 105
    :cond_a
    invoke-virtual {p0, p2}, Lcom/android/server/display/mode/VoteSummary;->updateSummaryWithBestAllowedResolution([Landroid/view/Display$Mode;)V

    goto :goto_1a

    .line 102
    :cond_e
    :goto_e
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result p2

    iput p2, p0, Lcom/android/server/display/mode/VoteSummary;->width:I

    .line 103
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result p1

    iput p1, p0, Lcom/android/server/display/mode/VoteSummary;->height:I

    .line 107
    :goto_1a
    iget-boolean p1, p0, Lcom/android/server/display/mode/VoteSummary;->mLoggingEnabled:Z

    if-eqz p1, :cond_34

    .line 108
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "adjustSize: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VoteSummary"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    return-void
.end method

.method public applyVotes(Landroid/util/SparseArray;II)V
    .registers 6

    .line 79
    invoke-virtual {p0}, Lcom/android/server/display/mode/VoteSummary;->reset()V

    move v0, p3

    :goto_4
    if-lt v0, p2, :cond_15

    .line 83
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/mode/Vote;

    if-nez v1, :cond_f

    goto :goto_12

    .line 87
    :cond_f
    invoke-interface {v1, p0}, Lcom/android/server/display/mode/Vote;->updateSummary(Lcom/android/server/display/mode/VoteSummary;)V

    :goto_12
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 89
    :cond_15
    iget-boolean p1, p0, Lcom/android/server/display/mode/VoteSummary;->mLoggingEnabled:Z

    if-eqz p1, :cond_47

    .line 90
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "applyVotes for range ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-static {p2}, Lcom/android/server/display/mode/Vote;->priorityToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-static {p3}, Lcom/android/server/display/mode/Vote;->priorityToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 90
    const-string p1, "VoteSummary"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    return-void
.end method

.method public disableModeSwitching(F)V
    .registers 3

    .line 194
    iput p1, p0, Lcom/android/server/display/mode/VoteSummary;->maxPhysicalRefreshRate:F

    iput p1, p0, Lcom/android/server/display/mode/VoteSummary;->minPhysicalRefreshRate:F

    .line 195
    iget v0, p0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    .line 197
    iget-boolean p1, p0, Lcom/android/server/display/mode/VoteSummary;->mLoggingEnabled:Z

    if-eqz p1, :cond_26

    .line 198
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Disabled mode switching on summary: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VoteSummary"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    return-void
.end method

.method public disableRenderRateSwitching(F)V
    .registers 3

    .line 203
    iget v0, p0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    iput v0, p0, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    .line 205
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/VoteSummary;->isRenderRateAchievable(F)Z

    move-result v0

    if-nez v0, :cond_e

    .line 206
    iput p1, p0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    iput p1, p0, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    .line 209
    :cond_e
    iget-boolean p1, p0, Lcom/android/server/display/mode/VoteSummary;->mLoggingEnabled:Z

    if-eqz p1, :cond_28

    .line 210
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Disabled render rate switching on summary: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VoteSummary"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    return-void
.end method

.method public filterModes([Landroid/view/Display$Mode;)Ljava/util/List;
    .registers 10

    .line 126
    invoke-virtual {p0}, Lcom/android/server/display/mode/VoteSummary;->isValid()Z

    move-result v0

    if-nez v0, :cond_c

    .line 127
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 129
    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    iget v1, p0, Lcom/android/server/display/mode/VoteSummary;->appRequestBaseModeRefreshRate:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    if-lez v1, :cond_1b

    const/4 v1, 0x1

    goto :goto_1c

    :cond_1b
    move v1, v2

    .line 132
    :goto_1c
    array-length v3, p1

    move v4, v2

    :goto_1e
    if-ge v4, v3, :cond_6e

    aget-object v5, p1, v4

    .line 133
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getParentModeId()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2a

    goto :goto_6b

    .line 136
    :cond_2a
    invoke-virtual {p0, v5}, Lcom/android/server/display/mode/VoteSummary;->validateRefreshRatesSupported(Landroid/view/Display$Mode;)Z

    move-result v6

    if-nez v6, :cond_31

    goto :goto_6b

    .line 139
    :cond_31
    invoke-virtual {p0, v5}, Lcom/android/server/display/mode/VoteSummary;->validateModeSupported(Landroid/view/Display$Mode;)Z

    move-result v6

    if-nez v6, :cond_38

    goto :goto_6b

    .line 142
    :cond_38
    invoke-virtual {p0, v5}, Lcom/android/server/display/mode/VoteSummary;->validateModeRejected(Landroid/view/Display$Mode;)Z

    move-result v6

    if-nez v6, :cond_3f

    goto :goto_6b

    .line 145
    :cond_3f
    invoke-virtual {p0, v5}, Lcom/android/server/display/mode/VoteSummary;->validateModeSize(Landroid/view/Display$Mode;)Z

    move-result v6

    if-nez v6, :cond_46

    goto :goto_6b

    .line 148
    :cond_46
    invoke-virtual {p0, v5}, Lcom/android/server/display/mode/VoteSummary;->validateModeWithinPhysicalRefreshRange(Landroid/view/Display$Mode;)Z

    move-result v6

    if-nez v6, :cond_4d

    goto :goto_6b

    .line 151
    :cond_4d
    invoke-virtual {p0, v5}, Lcom/android/server/display/mode/VoteSummary;->validateModeWithinRenderRefreshRange(Landroid/view/Display$Mode;)Z

    move-result v6

    if-nez v6, :cond_54

    goto :goto_6b

    .line 154
    :cond_54
    invoke-virtual {p0, v5}, Lcom/android/server/display/mode/VoteSummary;->validateModeRenderRateAchievable(Landroid/view/Display$Mode;)Z

    move-result v6

    if-nez v6, :cond_5b

    goto :goto_6b

    .line 157
    :cond_5b
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v5

    iget v6, p0, Lcom/android/server/display/mode/VoteSummary;->appRequestBaseModeRefreshRate:F

    invoke-static {v5, v6}, Lcom/android/server/display/mode/VoteSummary;->equalsWithinFloatTolerance(FF)Z

    move-result v5

    if-eqz v5, :cond_6b

    move v1, v2

    :cond_6b
    :goto_6b
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    :cond_6e
    if-eqz v1, :cond_76

    .line 163
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_76
    return-object v0
.end method

.method public final isRenderRateAchievable(F)Z
    .registers 6

    .line 343
    iget v0, p0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    div-float v0, p1, v0

    const v1, 0x3c23d70a    # 0.01f

    sub-float/2addr v0, v1

    float-to-double v2, v0

    .line 344
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 347
    iget p0, p0, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    sub-float/2addr p0, v1

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_19

    const/4 p0, 0x1

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public final isValid()Z
    .registers 8

    .line 351
    iget v0, p0, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    iget v1, p0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    const v2, 0x3c23d70a    # 0.01f

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    const-string v1, ", maxRenderFrameRate="

    const/4 v2, 0x0

    const-string v3, "VoteSummary"

    if-lez v0, :cond_34

    .line 352
    iget-boolean v0, p0, Lcom/android/server/display/mode/VoteSummary;->mLoggingEnabled:Z

    if-eqz v0, :cond_33

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Vote summary resulted in empty set (invalid frame rate range): minRenderFrameRate="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    return v2

    .line 360
    :cond_34
    iget-object v0, p0, Lcom/android/server/display/mode/VoteSummary;->supportedRefreshRates:Ljava/util/List;

    if-eqz v0, :cond_4c

    iget-boolean v4, p0, Lcom/android/server/display/mode/VoteSummary;->mSupportedModesVoteEnabled:Z

    if-eqz v4, :cond_4c

    .line 361
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 362
    iget-boolean p0, p0, Lcom/android/server/display/mode/VoteSummary;->mLoggingEnabled:Z

    if-eqz p0, :cond_4b

    .line 363
    const-string p0, "Vote summary resulted in empty set (empty supportedModes)"

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    return v2

    .line 368
    :cond_4c
    iget-object v0, p0, Lcom/android/server/display/mode/VoteSummary;->requestedRefreshRates:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_52
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    .line 369
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget v6, p0, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_72

    .line 370
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget v6, p0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_52

    .line 371
    :cond_72
    iget-boolean v0, p0, Lcom/android/server/display/mode/VoteSummary;->mLoggingEnabled:Z

    if-eqz v0, :cond_a6

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requested refreshRate is outside frame rate range: requestedRefreshRates="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/display/mode/VoteSummary;->requestedRefreshRates:Ljava/util/Set;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", requestedRefreshRate="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", minRenderFrameRate="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a6
    return v2

    :cond_a7
    const/4 p0, 0x1

    return p0
.end method

.method public limitRefreshRanges(Lcom/android/server/display/mode/VoteSummary;)V
    .registers 4

    .line 113
    iget v0, p0, Lcom/android/server/display/mode/VoteSummary;->minPhysicalRefreshRate:F

    iget v1, p1, Lcom/android/server/display/mode/VoteSummary;->minPhysicalRefreshRate:F

    .line 114
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/mode/VoteSummary;->minPhysicalRefreshRate:F

    .line 115
    iget v0, p0, Lcom/android/server/display/mode/VoteSummary;->maxPhysicalRefreshRate:F

    iget v1, p1, Lcom/android/server/display/mode/VoteSummary;->maxPhysicalRefreshRate:F

    .line 116
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/mode/VoteSummary;->maxPhysicalRefreshRate:F

    .line 117
    iget v0, p0, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    iget v1, p1, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    .line 118
    iget v0, p0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    iget p1, p1, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    .line 120
    iget-boolean p1, p0, Lcom/android/server/display/mode/VoteSummary;->mLoggingEnabled:Z

    if-eqz p1, :cond_43

    .line 121
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "limitRefreshRanges: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VoteSummary"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    return-void
.end method

.method public final reset()V
    .registers 3

    const/4 v0, 0x0

    .line 413
    iput v0, p0, Lcom/android/server/display/mode/VoteSummary;->minPhysicalRefreshRate:F

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 414
    iput v1, p0, Lcom/android/server/display/mode/VoteSummary;->maxPhysicalRefreshRate:F

    .line 415
    iput v0, p0, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    .line 416
    iput v1, p0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    const/4 v1, -0x1

    .line 417
    iput v1, p0, Lcom/android/server/display/mode/VoteSummary;->width:I

    .line 418
    iput v1, p0, Lcom/android/server/display/mode/VoteSummary;->height:I

    const/4 v1, 0x0

    .line 419
    iput v1, p0, Lcom/android/server/display/mode/VoteSummary;->minWidth:I

    .line 420
    iput v1, p0, Lcom/android/server/display/mode/VoteSummary;->minHeight:I

    .line 421
    iput-boolean v1, p0, Lcom/android/server/display/mode/VoteSummary;->disableRefreshRateSwitching:Z

    .line 422
    iput v0, p0, Lcom/android/server/display/mode/VoteSummary;->appRequestBaseModeRefreshRate:F

    .line 423
    iget-object v0, p0, Lcom/android/server/display/mode/VoteSummary;->requestedRefreshRates:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    .line 424
    iput-object v0, p0, Lcom/android/server/display/mode/VoteSummary;->supportedRefreshRates:Ljava/util/List;

    .line 425
    iput-object v0, p0, Lcom/android/server/display/mode/VoteSummary;->supportedModeIds:Ljava/util/List;

    .line 426
    iget-object v0, p0, Lcom/android/server/display/mode/VoteSummary;->rejectedModeIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 427
    iget-boolean v0, p0, Lcom/android/server/display/mode/VoteSummary;->mLoggingEnabled:Z

    if-eqz v0, :cond_42

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Summary reset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VoteSummary"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    return-void
.end method

.method public selectBaseMode(Ljava/util/List;Landroid/view/Display$Mode;)Landroid/view/Display$Mode;
    .registers 5

    .line 177
    iget p0, p0, Lcom/android/server/display/mode/VoteSummary;->appRequestBaseModeRefreshRate:F

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_8

    goto :goto_c

    .line 178
    :cond_8
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result p0

    .line 179
    :goto_c
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_10
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Display$Mode;

    .line 180
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v1

    invoke-static {p0, v1}, Lcom/android/server/display/mode/VoteSummary;->equalsWithinFloatTolerance(FF)Z

    move-result v1

    if-eqz v1, :cond_10

    return-object v0

    .line 190
    :cond_27
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_35

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/Display$Mode;

    return-object p0

    :cond_35
    const/4 p0, 0x0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoteSummary{ minPhysicalRefreshRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/mode/VoteSummary;->minPhysicalRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", maxPhysicalRefreshRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/mode/VoteSummary;->maxPhysicalRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", minRenderFrameRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", maxRenderFrameRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/mode/VoteSummary;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/mode/VoteSummary;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", minWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/mode/VoteSummary;->minWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", minHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/mode/VoteSummary;->minHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", disableRefreshRateSwitching="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/mode/VoteSummary;->disableRefreshRateSwitching:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", appRequestBaseModeRefreshRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/mode/VoteSummary;->appRequestBaseModeRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", requestRefreshRates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/mode/VoteSummary;->requestedRefreshRates:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", supportedRefreshRates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/mode/VoteSummary;->supportedRefreshRates:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", supportedModeIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/mode/VoteSummary;->supportedModeIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rejectedModeIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/mode/VoteSummary;->rejectedModeIds:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSupportedModesVoteEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/mode/VoteSummary;->mSupportedModesVoteEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSupportsFrameRateOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/display/mode/VoteSummary;->mSupportsFrameRateOverride:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateSummaryWithBestAllowedResolution([Landroid/view/Display$Mode;)V
    .registers 11

    .line 386
    iget v0, p0, Lcom/android/server/display/mode/VoteSummary;->width:I

    .line 387
    iget v1, p0, Lcom/android/server/display/mode/VoteSummary;->height:I

    const/4 v2, -0x1

    .line 388
    iput v2, p0, Lcom/android/server/display/mode/VoteSummary;->width:I

    .line 389
    iput v2, p0, Lcom/android/server/display/mode/VoteSummary;->height:I

    .line 391
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_c
    if-ge v3, v2, :cond_6d

    aget-object v5, p1, v3

    .line 392
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v6

    if-gt v6, v0, :cond_6a

    .line 393
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v6

    if-gt v6, v1, :cond_6a

    .line 394
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v6

    iget v7, p0, Lcom/android/server/display/mode/VoteSummary;->minWidth:I

    if-lt v6, v7, :cond_6a

    .line 395
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v6

    iget v7, p0, Lcom/android/server/display/mode/VoteSummary;->minHeight:I

    if-lt v6, v7, :cond_6a

    .line 396
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v6

    iget v7, p0, Lcom/android/server/display/mode/VoteSummary;->minPhysicalRefreshRate:F

    const v8, 0x3c23d70a    # 0.01f

    sub-float/2addr v7, v8

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_6a

    .line 397
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v6

    iget v7, p0, Lcom/android/server/display/mode/VoteSummary;->maxPhysicalRefreshRate:F

    add-float/2addr v7, v8

    cmpl-float v6, v6, v7

    if-lez v6, :cond_46

    goto :goto_6a

    .line 402
    :cond_46
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v7

    mul-int/2addr v6, v7

    if-gt v6, v4, :cond_5d

    .line 403
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v7

    if-ne v7, v0, :cond_6a

    .line 404
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v7

    if-ne v7, v1, :cond_6a

    .line 406
    :cond_5d
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v4

    iput v4, p0, Lcom/android/server/display/mode/VoteSummary;->width:I

    .line 407
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v4

    iput v4, p0, Lcom/android/server/display/mode/VoteSummary;->height:I

    move v4, v6

    :cond_6a
    :goto_6a
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_6d
    return-void
.end method

.method public final validateModeRejected(Landroid/view/Display$Mode;)Z
    .registers 5

    .line 299
    iget-object v0, p0, Lcom/android/server/display/mode/VoteSummary;->rejectedModeIds:Ljava/util/Set;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 302
    :cond_6
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getModeId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    return v1

    .line 305
    :cond_15
    iget-boolean v0, p0, Lcom/android/server/display/mode/VoteSummary;->mLoggingEnabled:Z

    if-eqz v0, :cond_49

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Discarding mode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getModeId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", is a rejectedMode: mode.modeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getModeId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", rejectedModeIds="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/mode/VoteSummary;->rejectedModeIds:Ljava/util/Set;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 306
    const-string p1, "VoteSummary"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    const/4 p0, 0x0

    return p0
.end method

.method public final validateModeRenderRateAchievable(Landroid/view/Display$Mode;)Z
    .registers 5

    .line 268
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v0

    .line 269
    invoke-virtual {p0, v0}, Lcom/android/server/display/mode/VoteSummary;->isRenderRateAchievable(F)Z

    move-result v1

    if-nez v1, :cond_46

    .line 270
    iget-boolean v1, p0, Lcom/android/server/display/mode/VoteSummary;->mLoggingEnabled:Z

    if-eqz v1, :cond_44

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Discarding mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getModeId()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", outside frame rate bounds: minRenderFrameRate="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", maxRenderFrameRate="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ", modePhysicalRefreshRate="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VoteSummary"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    const/4 p0, 0x0

    return p0

    :cond_46
    const/4 p0, 0x1

    return p0
.end method

.method public final validateModeSize(Landroid/view/Display$Mode;)Z
    .registers 4

    .line 214
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v0

    iget v1, p0, Lcom/android/server/display/mode/VoteSummary;->width:I

    if-ne v0, v1, :cond_13

    .line 215
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v0

    iget v1, p0, Lcom/android/server/display/mode/VoteSummary;->height:I

    if-eq v0, v1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x1

    return p0

    .line 216
    :cond_13
    :goto_13
    iget-boolean v0, p0, Lcom/android/server/display/mode/VoteSummary;->mLoggingEnabled:Z

    if-eqz v0, :cond_5d

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Discarding mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getModeId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", wrong size: desiredWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/mode/VoteSummary;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": desiredHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/mode/VoteSummary;->height:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ": actualWidth="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ": actualHeight="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 217
    const-string p1, "VoteSummary"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5d
    const/4 p0, 0x0

    return p0
.end method

.method public final validateModeSupported(Landroid/view/Display$Mode;)Z
    .registers 5

    .line 283
    iget-object v0, p0, Lcom/android/server/display/mode/VoteSummary;->supportedModeIds:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_4f

    iget-boolean v2, p0, Lcom/android/server/display/mode/VoteSummary;->mSupportedModesVoteEnabled:Z

    if-nez v2, :cond_a

    goto :goto_4f

    .line 286
    :cond_a
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getModeId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    return v1

    .line 289
    :cond_19
    iget-boolean v0, p0, Lcom/android/server/display/mode/VoteSummary;->mLoggingEnabled:Z

    if-eqz v0, :cond_4d

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Discarding mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getModeId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", supportedMode not found: mode.modeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getModeId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", supportedModeIds="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/mode/VoteSummary;->supportedModeIds:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 290
    const-string p1, "VoteSummary"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    const/4 p0, 0x0

    return p0

    :cond_4f
    :goto_4f
    return v1
.end method

.method public final validateModeWithinPhysicalRefreshRange(Landroid/view/Display$Mode;)Z
    .registers 5

    .line 229
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v0

    .line 233
    iget v1, p0, Lcom/android/server/display/mode/VoteSummary;->minPhysicalRefreshRate:F

    const v2, 0x3c23d70a    # 0.01f

    sub-float/2addr v1, v2

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_18

    iget v1, p0, Lcom/android/server/display/mode/VoteSummary;->maxPhysicalRefreshRate:F

    add-float/2addr v1, v2

    cmpl-float v1, v0, v1

    if-lez v1, :cond_16

    goto :goto_18

    :cond_16
    const/4 p0, 0x1

    return p0

    .line 235
    :cond_18
    :goto_18
    iget-boolean v1, p0, Lcom/android/server/display/mode/VoteSummary;->mLoggingEnabled:Z

    if-eqz v1, :cond_52

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Discarding mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getModeId()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", outside refresh rate bounds: minPhysicalRefreshRate="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/mode/VoteSummary;->minPhysicalRefreshRate:F

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", maxPhysicalRefreshRate="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/mode/VoteSummary;->maxPhysicalRefreshRate:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ", modeRefreshRate="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VoteSummary"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    const/4 p0, 0x0

    return p0
.end method

.method public final validateModeWithinRenderRefreshRange(Landroid/view/Display$Mode;)Z
    .registers 5

    .line 248
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v0

    .line 251
    iget-boolean v1, p0, Lcom/android/server/display/mode/VoteSummary;->mSupportsFrameRateOverride:Z

    if-nez v1, :cond_55

    .line 252
    iget v1, p0, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    const v2, 0x3c23d70a    # 0.01f

    sub-float/2addr v1, v2

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_19

    iget v1, p0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    add-float/2addr v1, v2

    cmpl-float v1, v0, v1

    if-lez v1, :cond_55

    .line 254
    :cond_19
    iget-boolean v1, p0, Lcom/android/server/display/mode/VoteSummary;->mLoggingEnabled:Z

    if-eqz v1, :cond_53

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Discarding mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getModeId()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", outside render rate bounds: minRenderFrameRate="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", maxRenderFrameRate="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ", modeRefreshRate="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VoteSummary"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    const/4 p0, 0x0

    return p0

    :cond_55
    const/4 p0, 0x1

    return p0
.end method

.method public final validateRefreshRatesSupported(Landroid/view/Display$Mode;)Z
    .registers 7

    .line 315
    iget-object v0, p0, Lcom/android/server/display/mode/VoteSummary;->supportedRefreshRates:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_75

    iget-boolean v2, p0, Lcom/android/server/display/mode/VoteSummary;->mSupportedModesVoteEnabled:Z

    if-nez v2, :cond_a

    goto :goto_75

    .line 318
    :cond_a
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/mode/SupportedRefreshRatesVote$RefreshRates;

    .line 319
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v3

    iget v4, v2, Lcom/android/server/display/mode/SupportedRefreshRatesVote$RefreshRates;->mPeakRefreshRate:F

    invoke-static {v3, v4}, Lcom/android/server/display/mode/VoteSummary;->equalsWithinFloatTolerance(FF)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 320
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getVsyncRate()F

    move-result v3

    iget v2, v2, Lcom/android/server/display/mode/SupportedRefreshRatesVote$RefreshRates;->mVsyncRate:F

    invoke-static {v3, v2}, Lcom/android/server/display/mode/VoteSummary;->equalsWithinFloatTolerance(FF)Z

    move-result v2

    if-eqz v2, :cond_e

    return v1

    .line 324
    :cond_33
    iget-boolean v0, p0, Lcom/android/server/display/mode/VoteSummary;->mLoggingEnabled:Z

    if-eqz v0, :cond_73

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Discarding mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getModeId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", supportedRefreshRates not found: mode.refreshRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mode.vsyncRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getVsyncRate()F

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", supportedRefreshRates="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/mode/VoteSummary;->supportedRefreshRates:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 325
    const-string p1, "VoteSummary"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_73
    const/4 p0, 0x0

    return p0

    :cond_75
    :goto_75
    return v1
.end method
