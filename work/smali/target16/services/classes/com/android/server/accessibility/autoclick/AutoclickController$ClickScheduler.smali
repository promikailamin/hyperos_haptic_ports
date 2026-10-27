.class final Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;
.super Ljava/lang/Object;
.source "AutoclickController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mActive:Z

.field public mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

.field public mDelay:I

.field public mEventPolicyFlags:I

.field public mHandler:Landroid/os/Handler;

.field public mHoveredState:Z

.field public mIgnoreMinorCursorMovement:Z

.field public mLastMotionEvent:Landroid/view/MotionEvent;

.field public mMetaState:I

.field public mMovementSlop:D

.field public mRevertToLeftClick:Z

.field public mScheduledClickTime:J

.field public mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field public mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

.field public final synthetic this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDelay(Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mDelay:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEventPolicyFlags(Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIgnoreMinorCursorMovement(Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mIgnoreMinorCursorMovement:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastMotionEvent(Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;)Landroid/view/MotionEvent;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRevertToLeftClick(Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mRevertToLeftClick:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$mbuildMotionEvent(Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;JJILandroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->buildMotionEvent(JJILandroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mclearDraggingState(Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->clearDraggingState()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mresetInternalState(Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->resetInternalState()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mresetSelectedClickTypeIfNecessary(Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->resetSelectedClickTypeIfNecessary()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendMotionEventsForClick(Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->sendMotionEventsForClick(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateMovementSlop(Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;D)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->updateMovementSlop(D)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/os/Handler;I)V
    .registers 6

    .line 1062
    iput-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    .line 1020
    iput-wide v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mMovementSlop:D

    const/4 p1, 0x0

    .line 1023
    iput-boolean p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mIgnoreMinorCursorMovement:Z

    const/4 p1, 0x1

    .line 1026
    iput-boolean p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mRevertToLeftClick:Z

    .line 1063
    iput-object p2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 1065
    iput-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 1066
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->resetInternalState()V

    .line 1067
    iput p3, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mDelay:I

    .line 1068
    new-instance p1, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {p1}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    return-void
.end method


# virtual methods
.method public final buildMotionEvent(JJILandroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 24

    move-object/from16 v0, p0

    .line 1567
    iget-object v7, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    iget-object v8, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    iget v9, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mMetaState:I

    .line 1578
    invoke-virtual/range {p6 .. p6}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v13

    .line 1580
    invoke-virtual/range {p6 .. p6}, Landroid/view/MotionEvent;->getSource()I

    move-result v15

    .line 1581
    invoke-virtual/range {p6 .. p6}, Landroid/view/MotionEvent;->getFlags()I

    move-result v16

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move/from16 v10, p5

    .line 1567
    invoke-static/range {v1 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public final cacheLastEvent(Landroid/view/MotionEvent;IZ)V
    .registers 5

    .line 1268
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_7

    .line 1269
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1271
    :cond_7
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 1272
    iput p2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    .line 1273
    iget-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-static {p1}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$misClickTypePanelHovered(Lcom/android/server/accessibility/autoclick/AutoclickController;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mHoveredState:Z

    if-eqz p3, :cond_26

    .line 1276
    iget-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    .line 1277
    iget-object p2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual {p2, p1, p0}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    :cond_26
    return-void
.end method

.method public cancel()V
    .registers 2

    .line 1134
    iget-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mActive:Z

    if-nez v0, :cond_5

    return-void

    .line 1138
    :cond_5
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-static {v0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$fgetmDragModeIsDragging(Lcom/android/server/accessibility/autoclick/AutoclickController;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1139
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->clearDraggingState()V

    .line 1142
    :cond_10
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-static {v0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$fgetmHasOngoingLongPress(Lcom/android/server/accessibility/autoclick/AutoclickController;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1143
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->clearLongPressState()V

    .line 1146
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->resetInternalState()V

    .line 1147
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final clearDraggingState()V
    .registers 4

    .line 1155
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1c

    .line 1158
    invoke-static {v0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    const/4 v1, 0x1

    .line 1159
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1160
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-static {v1}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$fgetmDragModeClickDownTime(Lcom/android/server/accessibility/autoclick/AutoclickController;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setDownTime(J)V

    .line 1161
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    # invokes: Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    invoke-static {v1, v0, v0, v2}, Lcom/android/server/accessibility/autoclick/AutoclickController;->access$001(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 1165
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->resetSelectedClickTypeIfNecessary()V

    .line 1166
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$fputmDragModeIsDragging(Lcom/android/server/accessibility/autoclick/AutoclickController;Z)V

    return-void
.end method

.method public final clearLongPressState()V
    .registers 4

    .line 1174
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1c

    .line 1177
    invoke-static {v0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    const/4 v1, 0x3

    .line 1178
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1179
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-static {v1}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$fgetmLongPressDownTime(Lcom/android/server/accessibility/autoclick/AutoclickController;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setDownTime(J)V

    .line 1180
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    # invokes: Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    invoke-static {v1, v0, v0, v2}, Lcom/android/server/accessibility/autoclick/AutoclickController;->access$101(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 1184
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->resetSelectedClickTypeIfNecessary()V

    .line 1185
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$fputmHasOngoingLongPress(Lcom/android/server/accessibility/autoclick/AutoclickController;Z)V

    return-void
.end method

.method public final detectMovement(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 1307
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1310
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 1311
    iget-object v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v2, v3

    .line 1312
    iget-object v3, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v3, p1

    float-to-double v4, v2

    float-to-double v2, v3

    .line 1313
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    .line 1320
    iget-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-static {p1}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$misClickTypePanelHovered(Lcom/android/server/accessibility/autoclick/AutoclickController;)Z

    move-result p1

    if-nez p1, :cond_36

    iget-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-static {p1}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$misScrollPanelHovered(Lcom/android/server/accessibility/autoclick/AutoclickController;)Z

    move-result p1

    if-eqz p1, :cond_33

    goto :goto_36

    .line 1323
    :cond_33
    iget-wide p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mMovementSlop:D

    goto :goto_38

    :cond_36
    :goto_36
    const-wide/high16 p0, 0x4014000000000000L    # 5.0

    :goto_38
    cmpl-double p0, v2, p0

    if-lez p0, :cond_3e

    const/4 p0, 0x1

    return p0

    :cond_3e
    return v1
.end method

.method public final endDragEvent()V
    .registers 19

    move-object/from16 v0, p0

    .line 1623
    iget-object v1, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$fputmDragModeIsDragging(Lcom/android/server/accessibility/autoclick/AutoclickController;Z)V

    .line 1625
    iget-object v1, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-static {v1}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$fgetmDragModeClickDownTime(Lcom/android/server/accessibility/autoclick/AutoclickController;)J

    move-result-wide v2

    iget-object v1, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-static {v1}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$fgetmDragModeClickDownTime(Lcom/android/server/accessibility/autoclick/AutoclickController;)J

    move-result-wide v4

    iget-object v8, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    iget-object v9, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    iget v10, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mMetaState:I

    iget-object v1, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 1637
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v14

    iget-object v1, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 1639
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I

    move-result v16

    iget-object v1, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 1640
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v17

    const/16 v6, 0xc

    const/4 v7, 0x1

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    .line 1626
    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    .line 1641
    invoke-static {v1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    const/4 v3, 0x1

    .line 1642
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->setActionButton(I)V

    .line 1643
    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1644
    iget-object v3, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget v4, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    # invokes: Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    invoke-static {v3, v1, v1, v4}, Lcom/android/server/accessibility/autoclick/AutoclickController;->access$1201(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 1646
    iget-object v1, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget v0, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    # invokes: Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    invoke-static {v1, v2, v2, v0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->access$1301(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public getDelayForTesting()I
    .registers 1

    .line 1226
    iget p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mDelay:I

    return p0
.end method

.method public getIsActiveForTesting()Z
    .registers 1

    .line 1202
    iget-boolean p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mActive:Z

    return p0
.end method

.method public getMetaStateForTesting()I
    .registers 1

    .line 1197
    iget p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mMetaState:I

    return p0
.end method

.method public getRevertToLeftClickForTesting()Z
    .registers 1

    .line 1231
    iget-boolean p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mRevertToLeftClick:Z

    return p0
.end method

.method public getScheduledClickTimeForTesting()J
    .registers 3

    .line 1207
    iget-wide v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    return-wide v0
.end method

.method public final handleScrollClick()Z
    .registers 7

    .line 1437
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-static {v0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$fgetmActiveClickType(Lcom/android/server/accessibility/autoclick/AutoclickController;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_78

    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget-object v3, v0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickScrollPanel:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;

    if-nez v3, :cond_11

    goto :goto_78

    .line 1443
    :cond_11
    iget-object v0, v0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickTypePanel:Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;

    invoke-virtual {v0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->isHovered()Z

    move-result v0

    if-eqz v0, :cond_1a

    return v1

    .line 1447
    :cond_1a
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget-object v0, v0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickScrollPanel:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;

    invoke-virtual {v0}, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->isVisible()Z

    move-result v0

    .line 1448
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget-object v1, v1, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickScrollPanel:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;

    invoke-virtual {v1}, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->isHovered()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v0, :cond_37

    .line 1451
    iget-object v4, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget v5, v4, Lcom/android/server/accessibility/autoclick/AutoclickController;->mHoveredDirection:I

    if-ne v5, v2, :cond_37

    .line 1452
    invoke-virtual {v4}, Lcom/android/server/accessibility/autoclick/AutoclickController;->exitScrollMode()V

    return v3

    :cond_37
    if-nez v1, :cond_53

    .line 1458
    iget-object v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 1459
    iget-object v4, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget-object v5, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v5, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    iput v5, v4, Lcom/android/server/accessibility/autoclick/AutoclickController;->mScrollCursorX:F

    .line 1460
    iget-object v4, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget-object v5, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v5, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iput v2, v4, Lcom/android/server/accessibility/autoclick/AutoclickController;->mScrollCursorY:F

    :cond_53
    if-eqz v0, :cond_6a

    if-nez v1, :cond_6a

    .line 1466
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget-object v0, v0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickScrollPanel:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;

    invoke-virtual {v0}, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->hide()V

    .line 1467
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickScrollPanel:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;

    iget v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mScrollCursorX:F

    iget p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mScrollCursorY:F

    invoke-virtual {v0, v1, p0}, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->show(FF)V

    goto :goto_77

    :cond_6a
    if-nez v0, :cond_77

    .line 1470
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickScrollPanel:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;

    iget v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mScrollCursorX:F

    iget p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mScrollCursorY:F

    invoke-virtual {v0, v1, p0}, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->show(FF)V

    :cond_77
    :goto_77
    return v3

    :cond_78
    :goto_78
    return v1
.end method

.method public final rescheduleClick(I)V
    .registers 8

    .line 1240
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    .line 1245
    iget-boolean p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mActive:Z

    if-eqz p1, :cond_13

    iget-wide v4, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    cmp-long v4, v0, v4

    if-lez v4, :cond_13

    .line 1246
    iput-wide v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    return-void

    :cond_13
    if-eqz p1, :cond_1a

    .line 1251
    iget-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1a
    const/4 p1, 0x1

    .line 1254
    iput-boolean p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mActive:Z

    .line 1255
    iput-wide v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    .line 1257
    iget-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final resetInternalState()V
    .registers 3

    const/4 v0, 0x0

    .line 1282
    iput-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mActive:Z

    .line 1283
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_d

    .line 1284
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x0

    .line 1285
    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    :cond_d
    const-wide/16 v0, -0x1

    .line 1287
    iput-wide v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    .line 1289
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickIndicatorView:Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;

    if-eqz p0, :cond_1a

    .line 1290
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->clearIndicator()V

    :cond_1a
    return-void
.end method

.method public final resetSelectedClickTypeIfNecessary()V
    .registers 3

    .line 1295
    iget-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mRevertToLeftClick:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-static {v0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$fgetmActiveClickType(Lcom/android/server/accessibility/autoclick/AutoclickController;)I

    move-result v0

    if-nez v0, :cond_15

    :cond_c
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-static {v0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$fgetmActiveClickType(Lcom/android/server/accessibility/autoclick/AutoclickController;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1d

    .line 1297
    :cond_15
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickTypePanel:Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->collapsePanelWithClickType(I)V

    :cond_1d
    return-void
.end method

.method public run()V
    .registers 6

    .line 1073
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1076
    iget-wide v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_11

    .line 1077
    iget-object v4, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mHandler:Landroid/os/Handler;

    sub-long/2addr v2, v0

    invoke-virtual {v4, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 1081
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->sendClick()V

    .line 1083
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-static {v0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$fgetmHasOngoingDoubleClick(Lcom/android/server/accessibility/autoclick/AutoclickController;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1084
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->resetInternalState()V

    .line 1088
    :cond_1f
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-static {v0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$fgetmActiveClickType(Lcom/android/server/accessibility/autoclick/AutoclickController;)I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_34

    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-static {v0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$fgetmDragModeIsDragging(Lcom/android/server/accessibility/autoclick/AutoclickController;)Z

    move-result v0

    if-eqz v0, :cond_34

    move v0, v3

    goto :goto_35

    :cond_34
    move v0, v2

    .line 1090
    :goto_35
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-static {v1}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$fgetmActiveClickType(Lcom/android/server/accessibility/autoclick/AutoclickController;)I

    move-result v1

    const/4 v4, 0x4

    if-ne v1, v4, :cond_4b

    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget-object v1, v1, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickScrollPanel:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;

    if-eqz v1, :cond_4b

    .line 1092
    invoke-virtual {v1}, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_4b

    move v2, v3

    :cond_4b
    if-nez v0, :cond_56

    if-nez v2, :cond_56

    .line 1095
    iget-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mHoveredState:Z

    if-nez v0, :cond_56

    .line 1096
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->resetSelectedClickTypeIfNecessary()V

    :cond_56
    return-void
.end method

.method public final sendClick()V
    .registers 7

    .line 1348
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_d6

    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v0

    if-nez v0, :cond_e

    goto/16 :goto_d6

    .line 1354
    :cond_e
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-static {v0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$fgetmHasOngoingLongPress(Lcom/android/server/accessibility/autoclick/AutoclickController;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1355
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->clearLongPressState()V

    .line 1358
    :cond_19
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget-object v0, v0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickTypePanel:Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;

    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->isHoveringDraggableArea(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget-object v0, v0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickTypePanel:Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;

    .line 1359
    invoke-virtual {v0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->getIsDragging()Z

    move-result v0

    if-nez v0, :cond_39

    .line 1360
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget-object v0, v0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickTypePanel:Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;

    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->onDragStart(Landroid/view/MotionEvent;)V

    return-void

    .line 1368
    :cond_39
    iget-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mHoveredState:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_40

    move v0, v1

    goto :goto_46

    :cond_40
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-static {v0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$fgetmActiveClickType(Lcom/android/server/accessibility/autoclick/AutoclickController;)I

    move-result v0

    .line 1370
    :goto_46
    invoke-static {v0}, Lcom/android/server/accessibility/autoclick/AutoclickLogger;->logSelectedClickType(I)V

    .line 1373
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->handleScrollClick()Z

    move-result v2

    if-eqz v2, :cond_51

    goto/16 :goto_d6

    .line 1377
    :cond_51
    iget-object v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 1379
    iget-object v3, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v4, 0x1

    if-nez v3, :cond_67

    .line 1380
    new-array v3, v4, [Landroid/view/MotionEvent$PointerProperties;

    iput-object v3, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 1381
    new-instance v5, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v5, v3, v1

    .line 1384
    :cond_67
    iget-object v3, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    iget-object v5, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v5, v5, v1

    invoke-virtual {v3, v2, v5}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 1386
    iget-object v3, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    if-nez v3, :cond_7f

    .line 1387
    new-array v3, v4, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v3, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 1388
    new-instance v5, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v5, v3, v1

    .line 1390
    :cond_7f
    iget-boolean v3, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mIgnoreMinorCursorMovement:Z

    if-eqz v3, :cond_92

    .line 1391
    iget-object v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v1, v2, v1

    iget-object v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    iget v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    iput v3, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 1392
    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    iput v2, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    goto :goto_9b

    .line 1394
    :cond_92
    iget-object v3, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    iget-object v5, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v1, v5, v1

    invoke-virtual {v3, v2, v1}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    :goto_9b
    const/4 v1, 0x2

    if-eq v0, v4, :cond_bf

    if-eq v0, v1, :cond_bb

    const/4 v1, 0x3

    if-eq v0, v1, :cond_ab

    const/4 v1, 0x5

    if-eq v0, v1, :cond_a7

    goto :goto_c0

    .line 1415
    :cond_a7
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->sendLongPress()V

    return-void

    .line 1407
    :cond_ab
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-static {v0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$fgetmDragModeIsDragging(Lcom/android/server/accessibility/autoclick/AutoclickController;)Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 1408
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->endDragEvent()V

    return-void

    .line 1410
    :cond_b7
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->startDragEvent()V

    return-void

    .line 1404
    :cond_bb
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->sendDoubleClickEvent()V

    return-void

    :cond_bf
    move v4, v1

    .line 1420
    :goto_c0
    invoke-virtual {p0, v4}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->sendMotionEventsForClick(I)V

    .line 1424
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget-object v0, v0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickTypePanel:Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;

    if-eqz v0, :cond_d6

    invoke-virtual {v0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->getIsDragging()Z

    move-result v0

    if-eqz v0, :cond_d6

    .line 1425
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickTypePanel:Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;

    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->onDragEnd()V

    :cond_d6
    :goto_d6
    return-void
.end method

.method public final sendDoubleClickEvent()V
    .registers 5

    .line 1512
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$fputmHasOngoingDoubleClick(Lcom/android/server/accessibility/autoclick/AutoclickController;Z)V

    .line 1513
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->sendMotionEventsForClick(I)V

    .line 1514
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler$1;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler$1;-><init>(Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;)V

    sget-wide v2, Lcom/android/server/accessibility/autoclick/AutoclickController;->DOUBLE_CLICK_MINIMUM_TIMEOUT:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final sendLongPress()V
    .registers 9

    .line 1525
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$fputmHasOngoingLongPress(Lcom/android/server/accessibility/autoclick/AutoclickController;Z)V

    .line 1526
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$fputmLongPressDownTime(Lcom/android/server/accessibility/autoclick/AutoclickController;J)V

    .line 1527
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-static {v0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$fgetmLongPressDownTime(Lcom/android/server/accessibility/autoclick/AutoclickController;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-static {v0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$fgetmLongPressDownTime(Lcom/android/server/accessibility/autoclick/AutoclickController;)J

    move-result-wide v4

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->buildMotionEvent(JJILandroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p0

    .line 1530
    invoke-static {p0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    const/16 v2, 0xb

    .line 1531
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1533
    iget-object v2, v1, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget v3, v1, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    # invokes: Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    invoke-static {v2, p0, p0, v3}, Lcom/android/server/accessibility/autoclick/AutoclickController;->access$601(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 1534
    iget-object v2, v1, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget v3, v1, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    # invokes: Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    invoke-static {v2, v0, v0, v3}, Lcom/android/server/accessibility/autoclick/AutoclickController;->access$701(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 1536
    iget-object v2, v1, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler$2;

    invoke-direct {v3, v1, p0, v0}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler$2;-><init>(Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    sget-wide v0, Lcom/android/server/accessibility/autoclick/AutoclickController;->LONG_PRESS_TIMEOUT:J

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final sendMotionEventsForClick(I)V
    .registers 9

    .line 1481
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1482
    iget-object v6, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    move-wide v3, v1

    move-object v0, p0

    move v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->buildMotionEvent(JJILandroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p0

    .line 1485
    invoke-static {p0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    const/16 v1, 0xb

    .line 1486
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1487
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->setActionButton(I)V

    .line 1489
    invoke-static {p0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    const/16 v2, 0xc

    .line 1490
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1491
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->setActionButton(I)V

    const/4 v2, 0x0

    .line 1492
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setButtonState(I)V

    .line 1494
    invoke-static {p0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    const/4 v4, 0x1

    .line 1495
    invoke-virtual {v3, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1496
    invoke-virtual {v3, v2}, Landroid/view/MotionEvent;->setButtonState(I)V

    .line 1498
    iget-object v2, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget v4, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    # invokes: Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    invoke-static {v2, p0, p0, v4}, Lcom/android/server/accessibility/autoclick/AutoclickController;->access$201(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 1499
    invoke-virtual {p0}, Landroid/view/MotionEvent;->recycle()V

    .line 1501
    iget-object p0, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget v2, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    # invokes: Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    invoke-static {p0, p1, p1, v2}, Lcom/android/server/accessibility/autoclick/AutoclickController;->access$301(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 1502
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 1504
    iget-object p0, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget p1, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    # invokes: Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    invoke-static {p0, v1, v1, p1}, Lcom/android/server/accessibility/autoclick/AutoclickController;->access$401(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 1505
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 1507
    iget-object p0, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget p1, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    # invokes: Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    invoke-static {p0, v3, v3, p1}, Lcom/android/server/accessibility/autoclick/AutoclickController;->access$501(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 1508
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public setIgnoreMinorCursorMovement(Z)V
    .registers 2

    .line 1330
    iput-boolean p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mIgnoreMinorCursorMovement:Z

    .line 1331
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickIndicatorView:Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;

    if-eqz p0, :cond_b

    .line 1332
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->setIgnoreMinorCursorMovement(Z)V

    :cond_b
    return-void
.end method

.method public setRevertToLeftClick(Z)V
    .registers 2

    .line 1337
    iput-boolean p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mRevertToLeftClick:Z

    return-void
.end method

.method public final startDragEvent()V
    .registers 20

    move-object/from16 v0, p0

    .line 1588
    iget-object v1, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$fputmDragModeClickDownTime(Lcom/android/server/accessibility/autoclick/AutoclickController;J)V

    .line 1589
    iget-object v1, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$fputmDragModeIsDragging(Lcom/android/server/accessibility/autoclick/AutoclickController;Z)V

    .line 1591
    iget-object v1, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-static {v1}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$fgetmDragModeClickDownTime(Lcom/android/server/accessibility/autoclick/AutoclickController;)J

    move-result-wide v3

    iget-object v1, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-static {v1}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$fgetmDragModeClickDownTime(Lcom/android/server/accessibility/autoclick/AutoclickController;)J

    move-result-wide v5

    iget-object v9, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    iget-object v10, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    iget v11, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mMetaState:I

    iget-object v1, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 1603
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v15

    iget-object v1, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 1605
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I

    move-result v17

    iget-object v1, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 1606
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v18

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v12, 0x1

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    .line 1592
    invoke-static/range {v3 .. v18}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    .line 1607
    invoke-static {v1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    const/16 v4, 0xb

    .line 1608
    invoke-virtual {v3, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1609
    invoke-virtual {v3, v2}, Landroid/view/MotionEvent;->setActionButton(I)V

    .line 1610
    iget-object v2, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget v4, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    # invokes: Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    invoke-static {v2, v1, v1, v4}, Lcom/android/server/accessibility/autoclick/AutoclickController;->access$1001(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 1612
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 1613
    iget-object v1, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget v0, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    # invokes: Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    invoke-static {v1, v3, v3, v0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->access$1101(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 1615
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1652
    const-string v1, "ClickScheduler: { active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1653
    const-string v1, ", delay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1654
    const-string v1, ", scheduledClickTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1655
    const-string v1, ", anchor={x:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    iget v1, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1656
    const-string v1, ", y:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    iget v1, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1657
    const-string v1, ", metastate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mMetaState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1658
    const-string v1, ", policyFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1659
    const-string v1, ", lastMotionEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1660
    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1661
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public update(Landroid/view/MotionEvent;I)V
    .registers 6

    .line 1110
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mMetaState:I

    .line 1112
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->detectMovement(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1113
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_13

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v1, 0x1

    :goto_14
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->cacheLastEvent(Landroid/view/MotionEvent;IZ)V

    .line 1118
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p2

    .line 1119
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget-object v1, v1, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickIndicatorView:Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;

    .line 1120
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 1119
    invoke-virtual {v1, v2, p1}, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->setCoordination(FF)V

    if-eqz v0, :cond_38

    .line 1124
    iget p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mDelay:I

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->rescheduleClick(I)V

    .line 1127
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickIndicatorScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;

    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;->update()V

    :cond_38
    return-void
.end method

.method public updateDelay(I)V
    .registers 2

    .line 1217
    iput p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mDelay:I

    .line 1219
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickIndicatorView:Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;

    if-eqz p0, :cond_d

    add-int/lit16 p1, p1, -0x96

    .line 1220
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->setAnimationDuration(I)V

    :cond_d
    return-void
.end method

.method public updateMetaState(I)V
    .registers 2

    .line 1192
    iput p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mMetaState:I

    return-void
.end method

.method public final updateMovementSlop(D)V
    .registers 3

    .line 1341
    iput-wide p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mMovementSlop:D

    return-void
.end method
