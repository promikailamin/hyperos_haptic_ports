.class public Lcom/android/server/wm/AppCompatReachabilityPolicy;
.super Ljava/lang/Object;
.source "AppCompatReachabilityPolicy.java"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public final mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

.field mLetterboxInnerBoundsSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;)V
    .registers 3

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 78
    iput-object p2, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    .line 113
    iget-object v0, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 114
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getReachabilityOverrides()Lcom/android/server/wm/AppCompatReachabilityOverrides;

    move-result-object v0

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  isVerticalThinLetterboxed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->isVerticalThinLetterboxed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  isHorizontalThinLetterboxed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->isHorizontalThinLetterboxed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  isHorizontalReachabilityEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->isHorizontalReachabilityEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  isVerticalReachabilityEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->isVerticalReachabilityEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  letterboxHorizontalPositionMultiplier="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 125
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 124
    invoke-virtual {v0, v2}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->getHorizontalPositionMultiplier(Landroid/content/res/Configuration;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  letterboxVerticalPositionMultiplier="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 128
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 127
    invoke-virtual {v0, p0}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->getVerticalPositionMultiplier(Landroid/content/res/Configuration;)F

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 126
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getLetterboxInnerFrame()Landroid/graphics/Rect;
    .registers 1

    .line 238
    iget-object p0, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mLetterboxInnerBoundsSupplier:Ljava/util/function/Supplier;

    if-eqz p0, :cond_b

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    return-object p0

    .line 239
    :cond_b
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0
.end method

.method public handleDoubleTap(II)V
    .registers 4

    const/4 v0, 0x0

    .line 97
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/AppCompatReachabilityPolicy;->handleDoubleTap(III)V

    return-void
.end method

.method public handleDoubleTap(III)V
    .registers 4

    .line 108
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/AppCompatReachabilityPolicy;->handleHorizontalDoubleTap(II)V

    .line 109
    invoke-virtual {p0, p2, p3}, Lcom/android/server/wm/AppCompatReachabilityPolicy;->handleVerticalDoubleTap(II)V

    return-void
.end method

.method public final handleHorizontalDoubleTap(II)V
    .registers 8

    .line 132
    iget-object v0, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 133
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getReachabilityOverrides()Lcom/android/server/wm/AppCompatReachabilityOverrides;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_16

    .line 136
    iget-object p2, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 137
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    move-result p2

    if-eqz p2, :cond_16

    move p2, v2

    goto :goto_17

    :cond_16
    move p2, v1

    .line 138
    :goto_17
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->isHorizontalReachabilityEnabled()Z

    move-result v3

    if-eqz v3, :cond_77

    if-eqz p2, :cond_20

    goto :goto_77

    .line 141
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatReachabilityPolicy;->getLetterboxInnerFrame()Landroid/graphics/Rect;

    move-result-object p2

    .line 142
    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-gt v3, p1, :cond_2d

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-lt v3, p1, :cond_2d

    goto :goto_77

    .line 146
    :cond_2d
    iget-object v3, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 147
    invoke-virtual {v3}, Lcom/android/server/wm/AppCompatController;->getDeviceStateQuery()Lcom/android/server/wm/AppCompatDeviceStateQuery;

    move-result-object v3

    .line 149
    invoke-virtual {v3}, Lcom/android/server/wm/AppCompatDeviceStateQuery;->isDisplayFullScreenAndSeparatingHinge()Z

    move-result v3

    if-eqz v3, :cond_44

    iget-object v3, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 150
    invoke-virtual {v3}, Lcom/android/server/wm/AppCompatConfiguration;->getIsAutomaticReachabilityInBookModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_44

    move v1, v2

    .line 151
    :cond_44
    iget-object v3, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 152
    invoke-virtual {v3, v1}, Lcom/android/server/wm/AppCompatConfiguration;->getLetterboxPositionForHorizontalReachability(Z)I

    move-result v3

    .line 153
    iget v4, p2, Landroid/graphics/Rect;->left:I

    if-le v4, p1, :cond_5e

    .line 155
    iget-object p1, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/AppCompatConfiguration;->movePositionForHorizontalReachabilityToNextLeftStop(Z)V

    if-ne v3, v2, :cond_56

    goto :goto_57

    :cond_56
    const/4 v2, 0x4

    .line 162
    :goto_57
    invoke-virtual {p0, v2}, Lcom/android/server/wm/AppCompatReachabilityPolicy;->logLetterboxPositionChange(I)V

    .line 163
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->setDoubleTapEvent()V

    goto :goto_72

    .line 164
    :cond_5e
    iget p2, p2, Landroid/graphics/Rect;->right:I

    if-ge p2, p1, :cond_72

    .line 166
    iget-object p1, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/AppCompatConfiguration;->movePositionForHorizontalReachabilityToNextRightStop(Z)V

    if-ne v3, v2, :cond_6b

    const/4 p1, 0x3

    goto :goto_6c

    :cond_6b
    const/4 p1, 0x2

    .line 173
    :goto_6c
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatReachabilityPolicy;->logLetterboxPositionChange(I)V

    .line 174
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->setDoubleTapEvent()V

    .line 177
    :cond_72
    :goto_72
    iget-object p0, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->recomputeConfiguration()V

    :cond_77
    :goto_77
    return-void
.end method

.method public final handleVerticalDoubleTap(II)V
    .registers 8

    .line 181
    iget-object v0, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 182
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getReachabilityOverrides()Lcom/android/server/wm/AppCompatReachabilityOverrides;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p2, :cond_15

    .line 185
    iget-object p2, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 186
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    move-result p2

    if-eqz p2, :cond_15

    move p2, v1

    goto :goto_16

    :cond_15
    const/4 p2, 0x0

    .line 187
    :goto_16
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->isVerticalReachabilityEnabled()Z

    move-result v2

    if-eqz v2, :cond_6d

    if-eqz p2, :cond_1f

    goto :goto_6d

    .line 190
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatReachabilityPolicy;->getLetterboxInnerFrame()Landroid/graphics/Rect;

    move-result-object p2

    .line 191
    iget v2, p2, Landroid/graphics/Rect;->top:I

    if-gt v2, p1, :cond_2c

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    if-lt v2, p1, :cond_2c

    goto :goto_6d

    .line 195
    :cond_2c
    iget-object v2, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 196
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatController;->getDeviceStateQuery()Lcom/android/server/wm/AppCompatDeviceStateQuery;

    move-result-object v2

    .line 198
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatDeviceStateQuery;->isDisplayFullScreenAndSeparatingHinge()Z

    move-result v2

    .line 199
    iget-object v3, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 200
    invoke-virtual {v3, v2}, Lcom/android/server/wm/AppCompatConfiguration;->getLetterboxPositionForVerticalReachability(Z)I

    move-result v3

    .line 201
    iget v4, p2, Landroid/graphics/Rect;->top:I

    if-le v4, p1, :cond_54

    .line 203
    iget-object p1, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {p1, v2}, Lcom/android/server/wm/AppCompatConfiguration;->movePositionForVerticalReachabilityToNextTopStop(Z)V

    if-ne v3, v1, :cond_4b

    const/4 p1, 0x5

    goto :goto_4d

    :cond_4b
    const/16 p1, 0x8

    .line 210
    :goto_4d
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatReachabilityPolicy;->logLetterboxPositionChange(I)V

    .line 211
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->setDoubleTapEvent()V

    goto :goto_68

    .line 212
    :cond_54
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    if-ge p2, p1, :cond_68

    .line 214
    iget-object p1, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {p1, v2}, Lcom/android/server/wm/AppCompatConfiguration;->movePositionForVerticalReachabilityToNextBottomStop(Z)V

    if-ne v3, v1, :cond_61

    const/4 p1, 0x7

    goto :goto_62

    :cond_61
    const/4 p1, 0x6

    .line 221
    :goto_62
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatReachabilityPolicy;->logLetterboxPositionChange(I)V

    .line 222
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->setDoubleTapEvent()V

    .line 225
    :cond_68
    :goto_68
    iget-object p0, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->recomputeConfiguration()V

    :cond_6d
    :goto_6d
    return-void
.end method

.method public final logLetterboxPositionChange(I)V
    .registers 3

    .line 232
    iget-object v0, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 233
    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->logLetterboxPositionChange(Lcom/android/server/wm/ActivityRecord;I)V

    return-void
.end method

.method public setLetterboxInnerBoundsSupplier(Ljava/util/function/Supplier;)V
    .registers 2

    .line 87
    iput-object p1, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mLetterboxInnerBoundsSupplier:Ljava/util/function/Supplier;

    return-void
.end method
