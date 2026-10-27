.class public final Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
.super Ljava/lang/Object;
.source "AccessibilityWindowManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

.field public final mPackageName:Ljava/lang/String;

.field public final mUid:I

.field public final mUserId:I

.field public final mWindowId:I

.field public final synthetic this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityWindowManager;ILandroid/view/accessibility/IAccessibilityInteractionConnection;Ljava/lang/String;II)V
    .registers 7

    .line 1110
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1111
    iput p2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mWindowId:I

    .line 1112
    iput-object p4, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mPackageName:Ljava/lang/String;

    .line 1113
    iput p5, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mUid:I

    .line 1114
    iput p6, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mUserId:I

    .line 1115
    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 1140
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->unlinkToDeath()V

    .line 1141
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmLock(Lcom/android/server/accessibility/AccessibilityWindowManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1142
    :try_start_a
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mWindowId:I

    iget p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mUserId:I

    invoke-static {v1, v2, p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$mremoveAccessibilityInteractionConnectionLocked(Lcom/android/server/accessibility/AccessibilityWindowManager;II)V

    .line 1143
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_15

    throw p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 1123
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .registers 1

    .line 1127
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    return-object p0
.end method

.method public getUid()I
    .registers 1

    .line 1119
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mUid:I

    return p0
.end method

.method public linkToDeath()V
    .registers 3

    .line 1131
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    invoke-interface {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    return-void
.end method

.method public unlinkToDeath()V
    .registers 3

    .line 1135
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    invoke-interface {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method
