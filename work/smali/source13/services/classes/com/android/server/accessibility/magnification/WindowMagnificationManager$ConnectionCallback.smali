.class Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;
.super Landroid/view/accessibility/IWindowMagnificationConnectionCallback$Stub;
.source "WindowMagnificationManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/magnification/WindowMagnificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionCallback"
.end annotation


# instance fields
.field private mExpiredDeathRecipient:Z

.field final synthetic this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;


# direct methods
.method static bridge synthetic -$$Nest$fputmExpiredDeathRecipient(Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;->mExpiredDeathRecipient:Z

    return-void
.end method

.method private constructor <init>(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;)V
    .registers 2

    .line 843
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    invoke-direct {p0}, Landroid/view/accessibility/IWindowMagnificationConnectionCallback$Stub;-><init>()V

    .line 845
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;->mExpiredDeathRecipient:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;-><init>(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    .line 933
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->-$$Nest$fgetmLock(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 934
    :try_start_7
    const-string v1, "WindowMagnificationMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "binderDied DeathRecipient :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;->mExpiredDeathRecipient:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    iget-boolean v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;->mExpiredDeathRecipient:Z

    if-eqz v1, :cond_27

    .line 936
    monitor-exit v0

    return-void

    .line 938
    :cond_27
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    iget-object v1, v1, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    .line 939
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    .line 940
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    invoke-static {v1, v2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->-$$Nest$fputmConnectionCallback(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;)V

    .line 941
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->-$$Nest$msetConnectionState(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;I)V

    .line 942
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    invoke-static {v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->-$$Nest$mresetWindowMagnifiers(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;)V

    .line 943
    monitor-exit v0

    .line 944
    return-void

    .line 943
    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_7 .. :try_end_47} :catchall_45

    throw v1
.end method

.method public onAccessibilityActionPerformed(I)V
    .registers 7
    .param p1, "displayId"    # I

    .line 911
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->-$$Nest$fgetmTrace(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;)Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    const-wide/16 v1, 0x100

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 913
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->-$$Nest$fgetmTrace(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;)Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WindowMagnificationMgrConnectionCallback.onAccessibilityActionPerformed"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 917
    :cond_2c
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->-$$Nest$fgetmCallback(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;)Lcom/android/server/accessibility/magnification/WindowMagnificationManager$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$Callback;->onAccessibilityActionPerformed(I)V

    .line 918
    return-void
.end method

.method public onChangeMagnificationMode(II)V
    .registers 8
    .param p1, "displayId"    # I
    .param p2, "magnificationMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 871
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->-$$Nest$fgetmTrace(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;)Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    const-wide/16 v1, 0x100

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 873
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->-$$Nest$fgetmTrace(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;)Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WindowMagnificationMgrConnectionCallback.onChangeMagnificationMode"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 877
    :cond_36
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->-$$Nest$fgetmCallback(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;)Lcom/android/server/accessibility/magnification/WindowMagnificationManager$Callback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$Callback;->onChangeMagnificationMode(II)V

    .line 878
    return-void
.end method

.method public onMove(I)V
    .registers 7
    .param p1, "displayId"    # I

    .line 922
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->-$$Nest$fgetmTrace(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;)Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    const-wide/16 v1, 0x100

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 924
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->-$$Nest$fgetmTrace(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;)Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WindowMagnificationMgrConnectionCallback.onMove"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 928
    :cond_2c
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->setTrackingTypingFocusEnabled(IZ)V

    .line 929
    return-void
.end method

.method public onPerformScaleAction(IF)V
    .registers 8
    .param p1, "displayId"    # I
    .param p2, "scale"    # F

    .line 900
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->-$$Nest$fgetmTrace(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;)Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    const-wide/16 v1, 0x100

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 902
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->-$$Nest$fgetmTrace(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;)Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";scale="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WindowMagnificationMgrConnectionCallback.onPerformScaleAction"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 906
    :cond_36
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->-$$Nest$fgetmCallback(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;)Lcom/android/server/accessibility/magnification/WindowMagnificationManager$Callback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$Callback;->onPerformScaleAction(IF)V

    .line 907
    return-void
.end method

.method public onSourceBoundsChanged(ILandroid/graphics/Rect;)V
    .registers 9
    .param p1, "displayId"    # I
    .param p2, "sourceBounds"    # Landroid/graphics/Rect;

    .line 882
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->-$$Nest$fgetmTrace(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;)Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    const-wide/16 v1, 0x100

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 884
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->-$$Nest$fgetmTrace(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;)Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    const-string v3, "WindowMagnificationMgrConnectionCallback.onSourceBoundsChanged"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "displayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";source="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 888
    :cond_36
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->-$$Nest$fgetmLock(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 889
    :try_start_3d
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    invoke-static {v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->-$$Nest$fgetmWindowMagnifiers(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    .line 890
    .local v1, "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    if-nez v1, :cond_52

    .line 891
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    invoke-static {v2, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->-$$Nest$mcreateWindowMagnifier(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;I)Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    move-result-object v2

    move-object v1, v2

    .line 893
    :cond_52
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->onSourceBoundsChanged(Landroid/graphics/Rect;)V

    .line 894
    .end local v1    # "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_3d .. :try_end_56} :catchall_60

    .line 895
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->-$$Nest$fgetmCallback(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;)Lcom/android/server/accessibility/magnification/WindowMagnificationManager$Callback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$Callback;->onSourceBoundsChanged(ILandroid/graphics/Rect;)V

    .line 896
    return-void

    .line 894
    :catchall_60
    move-exception v1

    :try_start_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw v1
.end method

.method public onWindowMagnifierBoundsChanged(ILandroid/graphics/Rect;)V
    .registers 9
    .param p1, "displayId"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 849
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->-$$Nest$fgetmTrace(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;)Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    const-wide/16 v1, 0x100

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 851
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->-$$Nest$fgetmTrace(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;)Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    const-string v3, "WindowMagnificationMgrConnectionCallback.onWindowMagnifierBoundsChanged"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "displayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";bounds="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 855
    :cond_36
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->-$$Nest$fgetmLock(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 856
    :try_start_3d
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    invoke-static {v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->-$$Nest$fgetmWindowMagnifiers(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    .line 857
    .local v1, "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    if-nez v1, :cond_52

    .line 858
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    invoke-static {v2, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->-$$Nest$mcreateWindowMagnifier(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;I)Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;

    move-result-object v2

    move-object v1, v2

    .line 864
    :cond_52
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->setMagnifierLocation(Landroid/graphics/Rect;)V

    .line 865
    .end local v1    # "magnifier":Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
    monitor-exit v0

    .line 866
    return-void

    .line 865
    :catchall_57
    move-exception v1

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_3d .. :try_end_59} :catchall_57

    throw v1
.end method
