.class public Landroid/widget/EditorTouchState;
.super Ljava/lang/Object;
.source "EditorTouchState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/EditorTouchState$MultiTapStatus;
    }
.end annotation


# instance fields
.field private blacklist mInitialDragDirectionXYRatio:F

.field private blacklist mIsOnHandle:Z

.field private blacklist mLastDownMillis:J

.field private blacklist mLastDownX:F

.field private blacklist mLastDownY:F

.field private blacklist mLastUpMillis:J

.field private blacklist mLastUpX:F

.field private blacklist mLastUpY:F

.field private blacklist mMovedEnoughForDrag:Z

.field private blacklist mMultiTapInSameArea:Z

.field private blacklist mMultiTapStatus:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    return-void
.end method

.method public static blacklist getXYRatio(I)F
    .registers 3
    .param p0, "angleFromVerticalInDegrees"    # I

    .line 240
    if-gtz p0, :cond_4

    .line 241
    const/4 v0, 0x0

    return v0

    .line 243
    :cond_4
    const/16 v0, 0x5a

    if-lt p0, v0, :cond_c

    .line 244
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    return v0

    .line 246
    :cond_c
    int-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static blacklist isDistanceWithin(FFFFI)Z
    .registers 9
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "x2"    # F
    .param p3, "y2"    # F
    .param p4, "maxDistance"    # I

    .line 220
    sub-float v0, p2, p0

    .line 221
    .local v0, "deltaX":F
    sub-float v1, p3, p1

    .line 222
    .local v1, "deltaY":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    .line 223
    .local v2, "distanceSquared":F
    mul-int v3, p4, p4

    int-to-float v3, v3

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_12

    const/4 v3, 0x1

    goto :goto_13

    :cond_12
    const/4 v3, 0x0

    :goto_13
    return v3
.end method


# virtual methods
.method public blacklist getInitialDragDirectionXYRatio()F
    .registers 2

    .line 117
    iget v0, p0, Landroid/widget/EditorTouchState;->mInitialDragDirectionXYRatio:F

    return v0
.end method

.method public blacklist getLastDownX()F
    .registers 2

    .line 65
    iget v0, p0, Landroid/widget/EditorTouchState;->mLastDownX:F

    return v0
.end method

.method public blacklist getLastDownY()F
    .registers 2

    .line 69
    iget v0, p0, Landroid/widget/EditorTouchState;->mLastDownY:F

    return v0
.end method

.method public blacklist getLastUpX()F
    .registers 2

    .line 73
    iget v0, p0, Landroid/widget/EditorTouchState;->mLastUpX:F

    return v0
.end method

.method public blacklist getLastUpY()F
    .registers 2

    .line 77
    iget v0, p0, Landroid/widget/EditorTouchState;->mLastUpY:F

    return v0
.end method

.method public blacklist isDoubleTap()Z
    .registers 3

    .line 81
    iget v0, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist isMovedEnoughForDrag()Z
    .registers 2

    .line 98
    iget-boolean v0, p0, Landroid/widget/EditorTouchState;->mMovedEnoughForDrag:Z

    return v0
.end method

.method public blacklist isMultiTap()Z
    .registers 3

    .line 89
    iget v0, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public blacklist isMultiTapInSameArea()Z
    .registers 2

    .line 94
    invoke-virtual {p0}, Landroid/widget/EditorTouchState;->isMultiTap()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Landroid/widget/EditorTouchState;->mMultiTapInSameArea:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public blacklist isOnHandle()Z
    .registers 2

    .line 125
    iget-boolean v0, p0, Landroid/widget/EditorTouchState;->mIsOnHandle:Z

    return v0
.end method

.method public blacklist isTripleClick()Z
    .registers 3

    .line 85
    iget v0, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist setIsOnHandle(Z)V
    .registers 2
    .param p1, "onHandle"    # Z

    .line 121
    iput-boolean p1, p0, Landroid/widget/EditorTouchState;->mIsOnHandle:Z

    .line 122
    return-void
.end method

.method public blacklist update(Landroid/view/MotionEvent;Landroid/view/ViewConfiguration;)V
    .registers 19
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "config"    # Landroid/view/ViewConfiguration;

    .line 132
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 133
    .local v1, "action":I
    const/4 v2, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v1, :cond_95

    .line 134
    const/16 v7, 0x2002

    move-object/from16 v8, p1

    invoke-virtual {v8, v7}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v7

    .line 141
    .local v7, "isMouse":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    iget-wide v11, v0, Landroid/widget/EditorTouchState;->mLastUpMillis:J

    sub-long/2addr v9, v11

    .line 142
    .local v9, "millisSinceLastUp":J
    iget-wide v13, v0, Landroid/widget/EditorTouchState;->mLastDownMillis:J

    sub-long/2addr v11, v13

    .line 145
    .local v11, "millisBetweenLastDownAndLastUp":J
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v13

    int-to-long v13, v13

    cmp-long v13, v9, v13

    if-gtz v13, :cond_79

    .line 146
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v13

    int-to-long v13, v13

    cmp-long v13, v11, v13

    if-gtz v13, :cond_79

    iget v13, v0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    if-eq v13, v5, :cond_38

    if-ne v13, v4, :cond_79

    if-eqz v7, :cond_79

    .line 149
    :cond_38
    if-ne v13, v5, :cond_3d

    .line 150
    iput v4, v0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    goto :goto_3f

    .line 152
    :cond_3d
    iput v2, v0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    .line 154
    :goto_3f
    iget v2, v0, Landroid/widget/EditorTouchState;->mLastDownX:F

    iget v13, v0, Landroid/widget/EditorTouchState;->mLastDownY:F

    .line 155
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v3

    .line 154
    invoke-static {v2, v13, v14, v15, v3}, Landroid/widget/EditorTouchState;->isDistanceWithin(FFFFI)Z

    move-result v2

    iput-boolean v2, v0, Landroid/widget/EditorTouchState;->mMultiTapInSameArea:Z

    .line 163
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditorTouchState;->isDoubleTap()Z

    move-result v2

    if-eqz v2, :cond_5e

    const-string v2, "double"

    goto :goto_61

    :cond_5e
    const-string/jumbo v2, "triple"

    .line 164
    .local v2, "status":Ljava/lang/String;
    :goto_61
    iget-boolean v3, v0, Landroid/widget/EditorTouchState;->mMultiTapInSameArea:Z

    if-eqz v3, :cond_68

    const-string v3, "in same area"

    goto :goto_6b

    :cond_68
    const-string/jumbo v3, "not in same area"

    .line 165
    .local v3, "inSameArea":Ljava/lang/String;
    :goto_6b
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v6

    aput-object v3, v4, v5

    const-string v5, "EditorTouchState"

    const-string v13, "ACTION_DOWN: %s tap detected, %s"

    invoke-static {v5, v13, v4}, Landroid/widget/Editor;->logCursor(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    .end local v2    # "status":Ljava/lang/String;
    .end local v3    # "inSameArea":Ljava/lang/String;
    goto :goto_7d

    .line 170
    :cond_79
    iput v5, v0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    .line 171
    iput-boolean v6, v0, Landroid/widget/EditorTouchState;->mMultiTapInSameArea:Z

    .line 176
    :goto_7d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, v0, Landroid/widget/EditorTouchState;->mLastDownX:F

    .line 177
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, v0, Landroid/widget/EditorTouchState;->mLastDownY:F

    .line 178
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/widget/EditorTouchState;->mLastDownMillis:J

    .line 179
    iput-boolean v6, v0, Landroid/widget/EditorTouchState;->mMovedEnoughForDrag:Z

    .line 180
    const/4 v2, 0x0

    iput v2, v0, Landroid/widget/EditorTouchState;->mInitialDragDirectionXYRatio:F

    .line 181
    .end local v7    # "isMouse":Z
    .end local v9    # "millisSinceLastUp":J
    .end local v11    # "millisBetweenLastDownAndLastUp":J
    goto :goto_fe

    :cond_95
    move-object/from16 v8, p1

    if-ne v1, v5, :cond_b1

    .line 185
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, v0, Landroid/widget/EditorTouchState;->mLastUpX:F

    .line 186
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, v0, Landroid/widget/EditorTouchState;->mLastUpY:F

    .line 187
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/widget/EditorTouchState;->mLastUpMillis:J

    .line 188
    iput-boolean v6, v0, Landroid/widget/EditorTouchState;->mMovedEnoughForDrag:Z

    .line 189
    const/4 v2, 0x0

    iput v2, v0, Landroid/widget/EditorTouchState;->mInitialDragDirectionXYRatio:F

    goto :goto_fe

    .line 190
    :cond_b1
    if-ne v1, v4, :cond_ed

    .line 191
    iget-boolean v2, v0, Landroid/widget/EditorTouchState;->mMovedEnoughForDrag:Z

    if-nez v2, :cond_fe

    .line 192
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, v0, Landroid/widget/EditorTouchState;->mLastDownX:F

    sub-float/2addr v2, v3

    .line 193
    .local v2, "deltaX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, v0, Landroid/widget/EditorTouchState;->mLastDownY:F

    sub-float/2addr v3, v4

    .line 194
    .local v3, "deltaY":F
    mul-float v4, v2, v2

    .line 195
    .local v4, "deltaXSquared":F
    mul-float v7, v3, v3

    add-float/2addr v7, v4

    .line 196
    .local v7, "distanceSquared":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v9

    .line 197
    .local v9, "touchSlop":I
    mul-int v10, v9, v9

    int-to-float v10, v10

    cmpl-float v10, v7, v10

    if-lez v10, :cond_d6

    goto :goto_d7

    :cond_d6
    move v5, v6

    :goto_d7
    iput-boolean v5, v0, Landroid/widget/EditorTouchState;->mMovedEnoughForDrag:Z

    .line 198
    if-eqz v5, :cond_ec

    .line 199
    const/4 v5, 0x0

    cmpl-float v5, v3, v5

    if-nez v5, :cond_e4

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_ea

    .line 200
    :cond_e4
    div-float v5, v2, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    :goto_ea
    iput v5, v0, Landroid/widget/EditorTouchState;->mInitialDragDirectionXYRatio:F

    .line 202
    .end local v2    # "deltaX":F
    .end local v3    # "deltaY":F
    .end local v4    # "deltaXSquared":F
    .end local v7    # "distanceSquared":F
    .end local v9    # "touchSlop":I
    :cond_ec
    goto :goto_fe

    .line 203
    :cond_ed
    if-ne v1, v2, :cond_fe

    .line 204
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/widget/EditorTouchState;->mLastDownMillis:J

    .line 205
    iput-wide v2, v0, Landroid/widget/EditorTouchState;->mLastUpMillis:J

    .line 206
    iput v6, v0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    .line 207
    iput-boolean v6, v0, Landroid/widget/EditorTouchState;->mMultiTapInSameArea:Z

    .line 208
    iput-boolean v6, v0, Landroid/widget/EditorTouchState;->mMovedEnoughForDrag:Z

    .line 209
    const/4 v2, 0x0

    iput v2, v0, Landroid/widget/EditorTouchState;->mInitialDragDirectionXYRatio:F

    .line 211
    :cond_fe
    :goto_fe
    return-void
.end method
