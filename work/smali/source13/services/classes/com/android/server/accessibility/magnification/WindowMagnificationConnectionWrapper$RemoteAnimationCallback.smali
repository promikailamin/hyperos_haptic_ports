.class Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper$RemoteAnimationCallback;
.super Landroid/view/accessibility/IRemoteMagnificationAnimationCallback$Stub;
.source "WindowMagnificationConnectionWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteAnimationCallback"
.end annotation


# instance fields
.field private final mCallback:Landroid/view/accessibility/MagnificationAnimationCallback;

.field private final mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;


# direct methods
.method constructor <init>(Landroid/view/accessibility/MagnificationAnimationCallback;Lcom/android/server/accessibility/AccessibilityTraceManager;)V
    .registers 7
    .param p1, "callback"    # Landroid/view/accessibility/MagnificationAnimationCallback;
    .param p2, "trace"    # Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 223
    invoke-direct {p0}, Landroid/view/accessibility/IRemoteMagnificationAnimationCallback$Stub;-><init>()V

    .line 224
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper$RemoteAnimationCallback;->mCallback:Landroid/view/accessibility/MagnificationAnimationCallback;

    .line 225
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper$RemoteAnimationCallback;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 226
    const-wide/16 v0, 0x40

    invoke-virtual {p2, v0, v1}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RemoteAnimationCallback.constructor"

    invoke-virtual {p2, v3, v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 231
    :cond_27
    return-void
.end method


# virtual methods
.method public onResult(Z)V
    .registers 7
    .param p1, "success"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper$RemoteAnimationCallback;->mCallback:Landroid/view/accessibility/MagnificationAnimationCallback;

    invoke-interface {v0, p1}, Landroid/view/accessibility/MagnificationAnimationCallback;->onResult(Z)V

    .line 236
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper$RemoteAnimationCallback;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x40

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 238
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper$RemoteAnimationCallback;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "success="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RemoteAnimationCallback.onResult"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 242
    :cond_2a
    return-void
.end method
