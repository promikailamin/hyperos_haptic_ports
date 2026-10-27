.class public interface abstract Lcom/xiaomi/mirror/MiuiMirrorStub;
.super Ljava/lang/Object;
.source "MiuiMirrorStub.java"


# static fields
.field public static final blacklist TAG:Ljava/lang/String; = "MiuiMirrorStub"

.field public static final blacklist sInstance:Lcom/xiaomi/mirror/MiuiMirrorStub;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    const-class v0, Lcom/xiaomi/mirror/MiuiMirrorStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mirror/MiuiMirrorStub;

    sput-object v0, Lcom/xiaomi/mirror/MiuiMirrorStub;->sInstance:Lcom/xiaomi/mirror/MiuiMirrorStub;

    return-void
.end method

.method public static blacklist getInstance()Lcom/xiaomi/mirror/MiuiMirrorStub;
    .registers 1

    .line 25
    sget-object v0, Lcom/xiaomi/mirror/MiuiMirrorStub;->sInstance:Lcom/xiaomi/mirror/MiuiMirrorStub;

    return-object v0
.end method


# virtual methods
.method public blacklist cancelDragAndDrop(Ljava/lang/Object;)V
    .registers 2
    .param p1, "attachInfo"    # Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public blacklist cleanDragToken(Ljava/lang/Object;)V
    .registers 2
    .param p1, "attachInfo"    # Ljava/lang/Object;

    .line 64
    return-void
.end method

.method public blacklist delegateMirrorDrag(Ljava/lang/Object;Landroid/view/ViewRootImpl;IILandroid/view/View$DragShadowBuilder;Landroid/graphics/Point;Landroid/content/ClipData;Ljava/lang/Object;)Z
    .registers 10
    .param p1, "attachInfo"    # Ljava/lang/Object;
    .param p2, "root"    # Landroid/view/ViewRootImpl;
    .param p3, "lastTouchDeviceId"    # I
    .param p4, "flags"    # I
    .param p5, "shadowBuilder"    # Landroid/view/View$DragShadowBuilder;
    .param p6, "shadowSize"    # Landroid/graphics/Point;
    .param p7, "data"    # Landroid/content/ClipData;
    .param p8, "myLocalState"    # Ljava/lang/Object;

    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dispatchPointerEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isEnabled()Z
    .registers 2

    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isModelSupport()Z
    .registers 2

    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist notifyInputTypeAndPos(III)V
    .registers 4
    .param p1, "inputType"    # I
    .param p2, "posX"    # I
    .param p3, "posY"    # I

    .line 74
    return-void
.end method

.method public blacklist notifyMoveTaskToBack(Landroid/os/IBinder;Z)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "nonRoot"    # Z

    .line 67
    return-void
.end method

.method public blacklist performMirrorMenuQuery(Landroid/view/View;Landroid/view/MotionEvent;ZZI)Z
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .param p3, "inContextButtonPress"    # Z
    .param p4, "hasPerformedLongPress"    # Z
    .param p5, "actionButton"    # I

    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist reportDragResult(ILandroid/view/IWindow;Z)V
    .registers 4
    .param p1, "what"    # I
    .param p2, "window"    # Landroid/view/IWindow;
    .param p3, "result"    # Z

    .line 41
    return-void
.end method

.method public blacklist tryToTriggerSend(Landroid/content/Context;Landroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist updateShadow(Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;)V
    .registers 3
    .param p1, "shadowBuilder"    # Landroid/view/View$DragShadowBuilder;
    .param p2, "attachInfo"    # Ljava/lang/Object;

    .line 61
    return-void
.end method
