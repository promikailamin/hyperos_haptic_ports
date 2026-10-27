.class public Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;
.super Landroid/os/Handler;
.source "AccessibilityController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;Landroid/os/Looper;)V
    .registers 3

    .line 1025
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 1026
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 1031
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4b

    const/4 v2, 0x3

    if-eq v0, v2, :cond_41

    const/4 v2, 0x4

    if-eq v0, v2, :cond_37

    const/4 v2, 0x5

    if-eq v0, v2, :cond_27

    const/4 v1, 0x6

    if-eq v0, v1, :cond_12

    return-void

    .line 1053
    :cond_12
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 1054
    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Region;

    .line 1055
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {p0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-$$Nest$fgetmCallbacks(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;->onImeRegionChanged(Landroid/graphics/Region;)V

    .line 1056
    invoke-virtual {p1}, Landroid/graphics/Region;->recycle()V

    return-void

    .line 1048
    :cond_27
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v1, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v1, 0x0

    .line 1049
    :goto_2d
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {p0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-$$Nest$fgetmCallbacks(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;->onImeWindowVisibilityChanged(Z)V

    return-void

    .line 1044
    :cond_37
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {p0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-$$Nest$fgetmCallbacks(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;->onDisplaySizeChanged()V

    return-void

    .line 1040
    :cond_41
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {p0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-$$Nest$fgetmCallbacks(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;->onUserContextChanged()V

    return-void

    .line 1033
    :cond_4b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 1034
    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Region;

    .line 1035
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {p0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-$$Nest$fgetmCallbacks(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;->onMagnificationRegionChanged(Landroid/graphics/Region;)V

    .line 1036
    invoke-virtual {p1}, Landroid/graphics/Region;->recycle()V

    return-void
.end method
