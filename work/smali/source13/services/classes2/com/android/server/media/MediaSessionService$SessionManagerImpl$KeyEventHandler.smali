.class Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;
.super Ljava/lang/Object;
.source "MediaSessionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeyEventHandler"
.end annotation


# static fields
.field private static final KEY_TYPE_MEDIA:I = 0x0

.field private static final KEY_TYPE_VOLUME:I = 0x1


# instance fields
.field private mIsLongPressing:Z

.field private mKeyType:I

.field private mLongPressTimeoutRunnable:Ljava/lang/Runnable;

.field private mMultiTapCount:I

.field private mMultiTapKeyCode:I

.field private mMultiTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

.field final synthetic this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;


# direct methods
.method static bridge synthetic -$$Nest$mcreateCanceledKeyEvent(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;Landroid/view/KeyEvent;)Landroid/view/KeyEvent;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->createCanceledKeyEvent(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdispatchDownAndUpKeyEventsLocked(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLjava/lang/String;IZ)V
    .registers 10

    invoke-direct/range {p0 .. p9}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->dispatchDownAndUpKeyEventsLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLjava/lang/String;IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetLongPressTracking(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->resetLongPressTracking()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetMultiTapTrackingLocked(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->resetMultiTapTrackingLocked()V

    return-void
.end method

.method constructor <init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;I)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .param p2, "keyType"    # I

    .line 2588
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2589
    iput p2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mKeyType:I

    .line 2590
    return-void
.end method

.method private cancelTrackingIfNeeded(Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLjava/lang/String;IZI)V
    .registers 23
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "asSystemService"    # Z
    .param p5, "keyEvent"    # Landroid/view/KeyEvent;
    .param p6, "needWakeLock"    # Z
    .param p7, "opPackageName"    # Ljava/lang/String;
    .param p8, "stream"    # I
    .param p9, "musicOnly"    # Z
    .param p10, "overriddenKeyEvents"    # I

    .line 2697
    move-object v0, p0

    move-object/from16 v10, p5

    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

    if-nez v1, :cond_c

    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapTimeoutRunnable:Ljava/lang/Runnable;

    if-nez v1, :cond_c

    .line 2698
    return-void

    .line 2701
    :cond_c
    invoke-direct {p0, v10}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->isFirstDownKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 2702
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mLongPressTimeoutRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_28

    .line 2703
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v1, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmHandler(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mLongPressTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaSessionService$MessageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2704
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mLongPressTimeoutRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 2706
    :cond_28
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapTimeoutRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_37

    .line 2707
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    iget v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapKeyCode:I

    if-eq v1, v2, :cond_37

    .line 2708
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->runExistingMultiTapRunnableLocked()V

    .line 2710
    :cond_37
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->resetLongPressTracking()V

    .line 2711
    return-void

    .line 2714
    :cond_3b
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

    if-eqz v1, :cond_c1

    .line 2715
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_c1

    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

    .line 2716
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    if-ne v1, v2, :cond_c1

    .line 2717
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_c1

    .line 2718
    invoke-direct {p0, v10}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->isFirstLongPressKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_b4

    .line 2719
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapTimeoutRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_6b

    .line 2720
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->runExistingMultiTapRunnableLocked()V

    .line 2722
    :cond_6b
    and-int/lit8 v1, p10, 0x8

    if-nez v1, :cond_c1

    .line 2723
    iget v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mKeyType:I

    const/4 v11, 0x0

    if-ne v1, v2, :cond_97

    .line 2724
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v1, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCurrentFullUserRecord(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnVolumeKeyLongPressListener(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    move-result-object v1

    if-nez v1, :cond_c1

    .line 2725
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    move-object v2, p1

    move-object/from16 v3, p7

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-static/range {v1 .. v9}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->-$$Nest$mdispatchVolumeKeyEventLocked(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V

    .line 2727
    iput-object v11, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

    goto :goto_c1

    .line 2729
    :cond_97
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->-$$Nest$misVoiceKey(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;I)Z

    move-result v1

    if-nez v1, :cond_c1

    .line 2730
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-static/range {v1 .. v7}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->-$$Nest$mdispatchMediaKeyEventLocked(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    .line 2732
    iput-object v11, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

    goto :goto_c1

    .line 2735
    :cond_b4
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-le v1, v2, :cond_c1

    iget-boolean v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mIsLongPressing:Z

    if-nez v1, :cond_c1

    .line 2736
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->resetLongPressTracking()V

    .line 2739
    :cond_c1
    :goto_c1
    return-void
.end method

.method private createCanceledKeyEvent(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;
    .registers 7
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 2828
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    .line 2829
    .local v0, "upEvent":Landroid/view/KeyEvent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    const/16 v4, 0x20

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;

    move-result-object v1

    return-object v1
.end method

.method private createLongPressTimeoutRunnable(Landroid/view/KeyEvent;)Ljava/lang/Runnable;
    .registers 3
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 2810
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$1;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;Landroid/view/KeyEvent;)V

    return-object v0
.end method

.method private dispatchDownAndUpKeyEventsLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLjava/lang/String;IZ)V
    .registers 22
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "asSystemService"    # Z
    .param p5, "keyEvent"    # Landroid/view/KeyEvent;
    .param p6, "needWakeLock"    # Z
    .param p7, "opPackageName"    # Ljava/lang/String;
    .param p8, "stream"    # I
    .param p9, "musicOnly"    # Z

    .line 2846
    move-object v0, p0

    const/4 v1, 0x0

    move-object/from16 v11, p5

    invoke-static {v11, v1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    .line 2847
    .local v1, "downEvent":Landroid/view/KeyEvent;
    iget v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mKeyType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_26

    .line 2848
    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    move-object v3, p1

    move-object/from16 v4, p7

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move-object v8, v1

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-static/range {v2 .. v10}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->-$$Nest$mdispatchVolumeKeyEventLocked(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V

    .line 2850
    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    move-object/from16 v8, p5

    invoke-static/range {v2 .. v10}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->-$$Nest$mdispatchVolumeKeyEventLocked(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V

    goto :goto_3a

    .line 2853
    :cond_26
    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move-object v7, v1

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->-$$Nest$mdispatchMediaKeyEventLocked(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    .line 2855
    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    move-object/from16 v7, p5

    invoke-static/range {v2 .. v8}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->-$$Nest$mdispatchMediaKeyEventLocked(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    .line 2858
    :goto_3a
    return-void
.end method

.method private handleLongPressLocked(Landroid/view/KeyEvent;ZI)V
    .registers 8
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z
    .param p3, "overriddenKeyEvents"    # I

    .line 2775
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCustomMediaKeyDispatcher(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaKeyDispatcher;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 2776
    invoke-static {p3}, Lcom/android/server/media/MediaKeyDispatcher;->isLongPressOverridden(I)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 2777
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCustomMediaKeyDispatcher(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaKeyDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/media/MediaKeyDispatcher;->onLongPress(Landroid/view/KeyEvent;)V

    .line 2779
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mLongPressTimeoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2c

    .line 2780
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmHandler(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mLongPressTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionService$MessageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2782
    :cond_2c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4f

    .line 2783
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mLongPressTimeoutRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_3c

    .line 2784
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->createLongPressTimeoutRunnable(Landroid/view/KeyEvent;)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mLongPressTimeoutRunnable:Ljava/lang/Runnable;

    .line 2786
    :cond_3c
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmHandler(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mLongPressTimeoutRunnable:Ljava/lang/Runnable;

    invoke-static {}, Lcom/android/server/media/MediaSessionService;->-$$Nest$sfgetLONG_PRESS_TIMEOUT()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/media/MediaSessionService$MessageHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_90

    .line 2788
    :cond_4f
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->resetLongPressTracking()V

    goto :goto_90

    .line 2791
    :cond_53
    iget v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mKeyType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6f

    .line 2792
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->isFirstLongPressKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 2793
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

    invoke-static {v0, v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mdispatchVolumeKeyLongPressLocked(Lcom/android/server/media/MediaSessionService;Landroid/view/KeyEvent;)V

    .line 2795
    :cond_67
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0, p1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mdispatchVolumeKeyLongPressLocked(Lcom/android/server/media/MediaSessionService;Landroid/view/KeyEvent;)V

    goto :goto_90

    .line 2796
    :cond_6f
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->isFirstLongPressKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_87

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 2797
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->-$$Nest$misVoiceKey(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;I)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 2799
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    invoke-static {v0, p2}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->-$$Nest$mstartVoiceInput(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Z)V

    goto :goto_90

    .line 2802
    :cond_87
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_90

    .line 2803
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->resetLongPressTracking()V

    .line 2807
    :cond_90
    :goto_90
    return-void
.end method

.method private isFirstDownKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 2839
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_e

    .line 2840
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 2839
    :goto_f
    return v0
.end method

.method private isFirstLongPressKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 2834
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    .line 2835
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-ne v0, v1, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    .line 2834
    :goto_11
    return v1
.end method

.method private needTracking(Landroid/view/KeyEvent;I)Z
    .registers 9
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "overriddenKeyEvents"    # I

    .line 2742
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->isFirstDownKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_25

    .line 2743
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

    if-nez v0, :cond_c

    .line 2744
    return v1

    .line 2745
    :cond_c
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

    .line 2746
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    if-eq v0, v2, :cond_25

    .line 2747
    :cond_24
    return v1

    .line 2750
    :cond_25
    const/4 v0, 0x1

    if-nez p2, :cond_48

    .line 2751
    iget v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mKeyType:I

    if-ne v2, v0, :cond_3b

    .line 2752
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v2, v2, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCurrentFullUserRecord(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnVolumeKeyLongPressListener(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    move-result-object v2

    if-nez v2, :cond_48

    .line 2753
    return v1

    .line 2755
    :cond_3b
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->-$$Nest$misVoiceKey(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;I)Z

    move-result v2

    if-nez v2, :cond_48

    .line 2756
    return v1

    .line 2759
    :cond_48
    return v0
.end method

.method private onTripleTap(Landroid/view/KeyEvent;)V
    .registers 3
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 2901
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->resetMultiTapTrackingLocked()V

    .line 2902
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCustomMediaKeyDispatcher(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaKeyDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/media/MediaKeyDispatcher;->onTripleTap(Landroid/view/KeyEvent;)V

    .line 2903
    return-void
.end method

.method private resetLongPressTracking()V
    .registers 3

    .line 2822
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

    .line 2823
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mIsLongPressing:Z

    .line 2824
    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mLongPressTimeoutRunnable:Ljava/lang/Runnable;

    .line 2825
    return-void
.end method

.method private resetMultiTapTrackingLocked()V
    .registers 3

    .line 2768
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapCount:I

    .line 2769
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 2770
    iput v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapKeyCode:I

    .line 2771
    return-void
.end method

.method private runExistingMultiTapRunnableLocked()V
    .registers 3

    .line 2763
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmHandler(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionService$MessageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2764
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2765
    return-void
.end method

.method private shouldTrackForMultipleTapsLocked(I)Z
    .registers 3
    .param p1, "overriddenKeyEvents"    # I

    .line 2689
    invoke-static {p1}, Lcom/android/server/media/MediaKeyDispatcher;->isSingleTapOverridden(I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 2690
    invoke-static {p1}, Lcom/android/server/media/MediaKeyDispatcher;->isDoubleTapOverridden(I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 2691
    invoke-static {p1}, Lcom/android/server/media/MediaKeyDispatcher;->isTripleTapOverridden(I)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    .line 2689
    :goto_16
    return v0
.end method


# virtual methods
.method createDoubleTapRunnable(Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLjava/lang/String;IZZZ)Ljava/lang/Runnable;
    .registers 26
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "asSystemService"    # Z
    .param p5, "keyEvent"    # Landroid/view/KeyEvent;
    .param p6, "needWakeLock"    # Z
    .param p7, "opPackageName"    # Ljava/lang/String;
    .param p8, "stream"    # I
    .param p9, "musicOnly"    # Z
    .param p10, "singleTapOverridden"    # Z
    .param p11, "doubleTapOverridden"    # Z

    .line 2881
    new-instance v13, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;

    move-object v0, v13

    move-object v1, p0

    move/from16 v2, p11

    move-object/from16 v3, p5

    move/from16 v4, p10

    move-object v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-direct/range {v0 .. v12}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;ZLandroid/view/KeyEvent;ZLjava/lang/String;IIZZLjava/lang/String;IZ)V

    return-object v13
.end method

.method createSingleTapRunnable(Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLjava/lang/String;IZZ)Ljava/lang/Runnable;
    .registers 24
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "asSystemService"    # Z
    .param p5, "keyEvent"    # Landroid/view/KeyEvent;
    .param p6, "needWakeLock"    # Z
    .param p7, "opPackageName"    # Ljava/lang/String;
    .param p8, "stream"    # I
    .param p9, "musicOnly"    # Z
    .param p10, "overridden"    # Z

    .line 2863
    new-instance v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$2;

    move-object v0, v12

    move-object v1, p0

    move/from16 v2, p10

    move-object/from16 v3, p5

    move-object v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v0 .. v11}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$2;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;ZLandroid/view/KeyEvent;Ljava/lang/String;IIZZLjava/lang/String;IZ)V

    return-object v12
.end method

.method handleKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLjava/lang/String;IZ)V
    .registers 27
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "asSystemService"    # Z
    .param p5, "keyEvent"    # Landroid/view/KeyEvent;
    .param p6, "needWakeLock"    # Z
    .param p7, "opPackageName"    # Ljava/lang/String;
    .param p8, "stream"    # I
    .param p9, "musicOnly"    # Z

    .line 2608
    move-object/from16 v12, p0

    move-object/from16 v13, p5

    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2609
    return-void

    .line 2612
    :cond_b
    const/4 v0, 0x0

    .line 2613
    .local v0, "overriddenKeyEvents":I
    iget-object v1, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v1, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCustomMediaKeyDispatcher(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaKeyDispatcher;

    move-result-object v1

    if-eqz v1, :cond_44

    iget-object v1, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v1, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCustomMediaKeyDispatcher(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaKeyDispatcher;

    move-result-object v1

    .line 2614
    invoke-virtual {v1}, Lcom/android/server/media/MediaKeyDispatcher;->getOverriddenKeyEvents()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_44

    .line 2615
    iget-object v1, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v1, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCustomMediaKeyDispatcher(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaKeyDispatcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/media/MediaKeyDispatcher;->getOverriddenKeyEvents()Ljava/util/Map;

    move-result-object v1

    .line 2616
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v14, v0

    goto :goto_45

    .line 2618
    :cond_44
    move v14, v0

    .end local v0    # "overriddenKeyEvents":I
    .local v14, "overriddenKeyEvents":I
    :goto_45
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move v10, v14

    invoke-direct/range {v0 .. v10}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->cancelTrackingIfNeeded(Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLjava/lang/String;IZI)V

    .line 2620
    invoke-direct {v12, v13, v14}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->needTracking(Landroid/view/KeyEvent;I)Z

    move-result v0

    const/4 v11, 0x1

    if-nez v0, :cond_90

    .line 2621
    iget v0, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mKeyType:I

    if-ne v0, v11, :cond_7e

    .line 2622
    iget-object v0, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-static/range {v0 .. v8}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->-$$Nest$mdispatchVolumeKeyEventLocked(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V

    goto :goto_8f

    .line 2625
    :cond_7e
    iget-object v0, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->-$$Nest$mdispatchMediaKeyEventLocked(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    .line 2628
    :goto_8f
    return-void

    .line 2631
    :cond_90
    invoke-direct {v12, v13}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->isFirstDownKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 2632
    iput-object v13, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

    .line 2633
    const/4 v0, 0x0

    iput-boolean v0, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mIsLongPressing:Z

    .line 2634
    return-void

    .line 2639
    :cond_9c
    invoke-direct {v12, v13}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->isFirstLongPressKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 2640
    iput-boolean v11, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mIsLongPressing:Z

    .line 2642
    :cond_a4
    iget-boolean v0, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mIsLongPressing:Z

    if-eqz v0, :cond_ae

    .line 2643
    move/from16 v15, p6

    invoke-direct {v12, v13, v15, v14}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->handleLongPressLocked(Landroid/view/KeyEvent;ZI)V

    .line 2644
    return-void

    .line 2647
    :cond_ae
    move/from16 v15, p6

    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v11, :cond_186

    .line 2648
    const/4 v0, 0x0

    iput-object v0, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

    .line 2649
    invoke-direct {v12, v14}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->shouldTrackForMultipleTapsLocked(I)Z

    move-result v0

    if-eqz v0, :cond_183

    .line 2650
    iget v0, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapCount:I

    if-nez v0, :cond_117

    .line 2651
    nop

    .line 2654
    invoke-static {v14}, Lcom/android/server/media/MediaKeyDispatcher;->isSingleTapOverridden(I)Z

    move-result v10

    .line 2651
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->createSingleTapRunnable(Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLjava/lang/String;IZZ)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 2655
    invoke-static {v14}, Lcom/android/server/media/MediaKeyDispatcher;->isSingleTapOverridden(I)Z

    move-result v0

    if-eqz v0, :cond_fb

    .line 2656
    invoke-static {v14}, Lcom/android/server/media/MediaKeyDispatcher;->isDoubleTapOverridden(I)Z

    move-result v0

    if-nez v0, :cond_fb

    .line 2657
    invoke-static {v14}, Lcom/android/server/media/MediaKeyDispatcher;->isTripleTapOverridden(I)Z

    move-result v0

    if-nez v0, :cond_fb

    .line 2658
    iget-object v0, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_186

    .line 2660
    :cond_fb
    iget-object v0, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmHandler(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v0

    iget-object v1, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-static {}, Lcom/android/server/media/MediaSessionService;->-$$Nest$sfgetMULTI_TAP_TIMEOUT()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/media/MediaSessionService$MessageHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2662
    iput v11, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapCount:I

    .line 2663
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iput v0, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapKeyCode:I

    goto/16 :goto_186

    .line 2665
    :cond_117
    const/4 v10, 0x2

    if-ne v0, v11, :cond_16f

    .line 2666
    iget-object v0, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmHandler(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v0

    iget-object v1, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionService$MessageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2667
    nop

    .line 2669
    invoke-static {v14}, Lcom/android/server/media/MediaKeyDispatcher;->isSingleTapOverridden(I)Z

    move-result v11

    .line 2670
    invoke-static {v14}, Lcom/android/server/media/MediaKeyDispatcher;->isDoubleTapOverridden(I)Z

    move-result v16

    .line 2667
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move v15, v10

    move v10, v11

    move/from16 v11, v16

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->createDoubleTapRunnable(Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLjava/lang/String;IZZZ)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 2671
    invoke-static {v14}, Lcom/android/server/media/MediaKeyDispatcher;->isTripleTapOverridden(I)Z

    move-result v0

    if-eqz v0, :cond_169

    .line 2672
    iget-object v0, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmHandler(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v0

    iget-object v1, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-static {}, Lcom/android/server/media/MediaSessionService;->-$$Nest$sfgetMULTI_TAP_TIMEOUT()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/media/MediaSessionService$MessageHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2673
    iput v15, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapCount:I

    goto :goto_186

    .line 2675
    :cond_169
    iget-object v0, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_186

    .line 2677
    :cond_16f
    move v15, v10

    if-ne v0, v15, :cond_186

    .line 2678
    iget-object v0, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmHandler(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v0

    iget-object v1, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionService$MessageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2679
    invoke-direct {v12, v13}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->onTripleTap(Landroid/view/KeyEvent;)V

    goto :goto_186

    .line 2682
    :cond_183
    invoke-direct/range {p0 .. p9}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->dispatchDownAndUpKeyEventsLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLjava/lang/String;IZ)V

    .line 2686
    :cond_186
    :goto_186
    return-void
.end method

.method handleMediaKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V
    .registers 17
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "asSystemService"    # Z
    .param p5, "keyEvent"    # Landroid/view/KeyEvent;
    .param p6, "needWakeLock"    # Z

    .line 2594
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->handleKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLjava/lang/String;IZ)V

    .line 2596
    return-void
.end method

.method handleVolumeKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Ljava/lang/String;IZ)V
    .registers 19
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "asSystemService"    # Z
    .param p5, "keyEvent"    # Landroid/view/KeyEvent;
    .param p6, "opPackageName"    # Ljava/lang/String;
    .param p7, "stream"    # I
    .param p8, "musicOnly"    # Z

    .line 2601
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->handleKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLjava/lang/String;IZ)V

    .line 2603
    return-void
.end method
