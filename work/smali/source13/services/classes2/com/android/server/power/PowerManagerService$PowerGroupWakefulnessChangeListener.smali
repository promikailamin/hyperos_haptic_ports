.class final Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Lcom/android/server/power/PowerGroup$PowerGroupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PowerGroupWakefulnessChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .registers 2

    .line 690
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onWakefulnessChangedLocked(IIJIIILjava/lang/String;Ljava/lang/String;)V
    .registers 33
    .param p1, "groupId"    # I
    .param p2, "wakefulness"    # I
    .param p3, "eventTime"    # J
    .param p5, "reason"    # I
    .param p6, "uid"    # I
    .param p7, "opUid"    # I
    .param p8, "opPackageName"    # Ljava/lang/String;
    .param p9, "details"    # Ljava/lang/String;

    .line 699
    move-object/from16 v0, p0

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v15, p5

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmPowerManagerServiceImpl(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerServiceStub;

    move-result-object v1

    move/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/PowerManagerServiceStub;->notifyWakefulnessChangedLocked(IIJI)V

    .line 702
    const/4 v1, 0x1

    if-ne v8, v1, :cond_58

    .line 704
    iget-object v2, v0, Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmPolicy(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/policy/WindowManagerPolicy;

    move-result-object v2

    instance-of v2, v2, Lcom/android/server/policy/PhoneWindowManager;

    if-eqz v2, :cond_34

    .line 705
    iget-object v2, v0, Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmPolicy(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/policy/WindowManagerPolicy;

    move-result-object v2

    check-cast v2, Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v3, p9

    invoke-virtual {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->wakingUp(Ljava/lang/String;)V

    goto :goto_36

    .line 704
    :cond_34
    move-object/from16 v3, p9

    .line 711
    :goto_36
    const/16 v2, 0xd

    if-ne v15, v2, :cond_3b

    .line 712
    goto :goto_3c

    :cond_3b
    const/4 v1, 0x0

    :goto_3c
    move/from16 v21, v1

    .line 713
    .local v21, "flags":I
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmPowerGroups(Lcom/android/server/power/PowerManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/android/server/power/PowerGroup;

    const/16 v20, 0x0

    move-object/from16 v16, v1

    move-wide/from16 v18, p3

    move/from16 v22, p6

    invoke-static/range {v16 .. v22}, Lcom/android/server/power/PowerManagerService;->-$$Nest$muserActivityNoUpdateLocked(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerGroup;JIII)Z

    goto :goto_5a

    .line 702
    .end local v21    # "flags":I
    :cond_58
    move-object/from16 v3, p9

    .line 716
    :goto_5a
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmDirty(Lcom/android/server/power/PowerManagerService;)I

    move-result v2

    const/high16 v4, 0x10000

    or-int/2addr v2, v4

    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmDirty(Lcom/android/server/power/PowerManagerService;I)V

    .line 717
    iget-object v9, v0, Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    move-wide/from16 v10, p3

    move/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p7

    move v1, v15

    move-object/from16 v15, p8

    move-object/from16 v16, p9

    invoke-static/range {v9 .. v16}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mupdateGlobalWakefulnessLocked(Lcom/android/server/power/PowerManagerService;JIIILjava/lang/String;Ljava/lang/String;)V

    .line 718
    iget-object v2, v0, Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmNotifier(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/Notifier;

    move-result-object v2

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 719
    invoke-virtual {v4}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v4

    .line 718
    invoke-virtual {v2, v7, v8, v1, v4}, Lcom/android/server/power/Notifier;->onPowerGroupWakefulnessChanged(IIII)V

    .line 720
    iget-object v2, v0, Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 721
    return-void
.end method
