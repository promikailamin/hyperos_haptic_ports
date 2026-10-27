.class public Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;
.super Landroid/view/accessibility/IMagnificationConnectionCallback$Stub;
.source "MagnificationConnectionManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mExpiredDeathRecipient:Z

.field public final synthetic this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;


# direct methods
.method public static bridge synthetic -$$Nest$fputmExpiredDeathRecipient(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->mExpiredDeathRecipient:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;)V
    .registers 2

    .line 980
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    invoke-direct {p0}, Landroid/view/accessibility/IMagnificationConnectionCallback$Stub;-><init>()V

    const/4 p1, 0x0

    .line 982
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->mExpiredDeathRecipient:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;Lcom/android/server/accessibility/magnification/MagnificationConnectionManager-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;-><init>(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    .line 1077
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->-$$Nest$fgetmLock(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1078
    :try_start_7
    const-string v1, "MagnificationConnectionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "binderDied DeathRecipient :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->mExpiredDeathRecipient:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    iget-boolean v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->mExpiredDeathRecipient:Z

    if-eqz v1, :cond_27

    .line 1080
    monitor-exit v0

    return-void

    :catchall_25
    move-exception p0

    goto :goto_43

    .line 1082
    :cond_27
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    iget-object v1, v1, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    .line 1083
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    .line 1084
    invoke-static {v1, v2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->-$$Nest$fputmConnectionCallback(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;)V

    .line 1085
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->-$$Nest$msetConnectionState(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;I)V

    .line 1086
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    invoke-static {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->-$$Nest$mresetWindowMagnifiers(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;)V

    .line 1087
    monitor-exit v0

    return-void

    :goto_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_7 .. :try_end_44} :catchall_25

    throw p0
.end method

.method public onAccessibilityActionPerformed(I)V
    .registers 7

    .line 1054
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->-$$Nest$fgetmTrace(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;)Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    const-wide/16 v1, 0x100

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1056
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->-$$Nest$fgetmTrace(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;)Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MagnificationConnectionManagerConnectionCallback.onAccessibilityActionPerformed"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 1060
    :cond_2a
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    invoke-static {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->-$$Nest$fgetmCallback(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;)Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$Callback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$Callback;->onAccessibilityActionPerformed(I)V

    return-void
.end method

.method public onChangeMagnificationMode(II)V
    .registers 8

    .line 1010
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->-$$Nest$fgetmTrace(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;)Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    const-wide/16 v1, 0x100

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1012
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->-$$Nest$fgetmTrace(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;)Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MagnificationConnectionManagerConnectionCallback.onChangeMagnificationMode"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 1016
    :cond_32
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    invoke-static {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->-$$Nest$fgetmCallback(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;)Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$Callback;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$Callback;->onChangeMagnificationMode(II)V

    return-void
.end method

.method public onMove(I)V
    .registers 7

    .line 1066
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->-$$Nest$fgetmTrace(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;)Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    const-wide/16 v1, 0x100

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1068
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->-$$Nest$fgetmTrace(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;)Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MagnificationConnectionManagerConnectionCallback.onMove"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 1072
    :cond_2a
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->setTrackingTypingFocusEnabled(IZ)V

    return-void
.end method

.method public onPerformScaleAction(IFZ)V
    .registers 9

    .line 1041
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->-$$Nest$fgetmTrace(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;)Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    const-wide/16 v1, 0x100

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1043
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->-$$Nest$fgetmTrace(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;)Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";scale="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ";updatePersistence="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MagnificationConnectionManagerConnectionCallback.onPerformScaleAction"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 1048
    :cond_3a
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    invoke-static {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->-$$Nest$fgetmCallback(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;)Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$Callback;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$Callback;->onPerformScaleAction(IFZ)V

    return-void
.end method

.method public onSourceBoundsChanged(ILandroid/graphics/Rect;)V
    .registers 9

    .line 1022
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->-$$Nest$fgetmTrace(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;)Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    const-wide/16 v1, 0x100

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1024
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->-$$Nest$fgetmTrace(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;)Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    const-string v3, "MagnificationConnectionManagerConnectionCallback.onSourceBoundsChanged"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "displayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ";source="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 1028
    :cond_32
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->-$$Nest$fgetmLock(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1029
    :try_start_39
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    invoke-static {v1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->-$$Nest$fgetmWindowMagnifiers(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    if-nez v1, :cond_50

    .line 1031
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    invoke-static {v1, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->-$$Nest$mcreateWindowMagnifier(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;I)Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    move-result-object v1

    goto :goto_50

    :catchall_4e
    move-exception p0

    goto :goto_5e

    .line 1033
    :cond_50
    :goto_50
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->onSourceBoundsChanged(Landroid/graphics/Rect;)V

    .line 1034
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_39 .. :try_end_54} :catchall_4e

    .line 1035
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    invoke-static {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->-$$Nest$fgetmCallback(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;)Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$Callback;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$Callback;->onSourceBoundsChanged(ILandroid/graphics/Rect;)V

    return-void

    .line 1034
    :goto_5e
    :try_start_5e
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_4e

    throw p0
.end method

.method public onWindowMagnifierBoundsChanged(ILandroid/graphics/Rect;)V
    .registers 9

    .line 987
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->-$$Nest$fgetmTrace(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;)Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    const-wide/16 v1, 0x100

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 989
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->-$$Nest$fgetmTrace(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;)Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    const-string v3, "MagnificationConnectionManagerConnectionCallback.onWindowMagnifierBoundsChanged"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "displayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ";bounds="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 993
    :cond_32
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->-$$Nest$fgetmLock(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 994
    :try_start_39
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    invoke-static {v1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->-$$Nest$fgetmWindowMagnifiers(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    if-nez v1, :cond_50

    .line 996
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    invoke-static {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->-$$Nest$mcreateWindowMagnifier(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;I)Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    move-result-object v1

    goto :goto_50

    :catchall_4e
    move-exception p0

    goto :goto_55

    .line 1002
    :cond_50
    :goto_50
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->setMagnifierLocation(Landroid/graphics/Rect;)V

    .line 1003
    monitor-exit v0

    return-void

    :goto_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_39 .. :try_end_56} :catchall_4e

    throw p0
.end method
