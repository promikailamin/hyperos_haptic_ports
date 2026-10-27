.class final Lcom/android/server/input/InputManagerService$LocalService;
.super Landroid/hardware/input/InputManagerInternal;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .registers 2

    .line 3818
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Landroid/hardware/input/InputManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService$LocalService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService$LocalService;-><init>(Lcom/android/server/input/InputManagerService;)V

    return-void
.end method


# virtual methods
.method public createInputChannel(Ljava/lang/String;)Landroid/view/InputChannel;
    .registers 3
    .param p1, "inputChannelName"    # Ljava/lang/String;

    .line 3915
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/input/InputManagerService;->createInputChannel(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v0

    return-object v0
.end method

.method public getCursorPosition()Landroid/graphics/PointF;
    .registers 2

    .line 3885
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmWindowManagerCallbacks(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->getCursorPosition()Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public getVirtualMousePointerDisplayId()I
    .registers 2

    .line 3880
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-$$Nest$mgetVirtualMousePointerDisplayId(Lcom/android/server/input/InputManagerService;)I

    move-result v0

    return v0
.end method

.method public pilferPointers(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 3920
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmNative(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/NativeInputManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/input/NativeInputManagerService;->pilferPointers(Landroid/os/IBinder;)V

    .line 3921
    return-void
.end method

.method public registerLidSwitchCallback(Landroid/hardware/input/InputManagerInternal$LidSwitchCallback;)V
    .registers 3
    .param p1, "callbacks"    # Landroid/hardware/input/InputManagerInternal$LidSwitchCallback;

    .line 3905
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/input/InputManagerService;->registerLidSwitchCallbackInternal(Landroid/hardware/input/InputManagerInternal$LidSwitchCallback;)V

    .line 3906
    return-void
.end method

.method public setDisplayEligibilityForPointerCapture(IZ)V
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "isEligible"    # Z

    .line 3895
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/input/InputManagerService;->-$$Nest$msetDisplayEligibilityForPointerCapture(Lcom/android/server/input/InputManagerService;IZ)V

    .line 3896
    return-void
.end method

.method public setDisplayViewports(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/display/DisplayViewport;",
            ">;)V"
        }
    .end annotation

    .line 3821
    .local p1, "viewports":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/DisplayViewport;>;"
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0, p1}, Lcom/android/server/input/InputManagerService;->-$$Nest$msetDisplayViewportsInternal(Lcom/android/server/input/InputManagerService;Ljava/util/List;)V

    .line 3822
    return-void
.end method

.method public setInputMethodStatus(Z)V
    .registers 3
    .param p1, "shown"    # Z

    .line 3867
    invoke-static {}, Lcom/android/server/input/InputManagerServiceStub;->getInstance()Lcom/android/server/input/InputManagerServiceStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/input/InputManagerServiceStub;->isPad()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3868
    invoke-static {}, Lcom/android/server/input/InputManagerServiceStub;->getInstance()Lcom/android/server/input/InputManagerServiceStub;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/input/InputManagerServiceStub;->setInputMethodStatus(Z)V

    .line 3870
    :cond_11
    return-void
.end method

.method public setInteractive(Z)V
    .registers 4
    .param p1, "interactive"    # Z

    .line 3828
    if-nez p1, :cond_a

    .line 3829
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->getInstance()Lcom/android/server/inputmethod/InputMethodManagerServiceStub;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->setScreenOff(Z)V

    .line 3831
    :cond_a
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->getInstance()Lcom/android/server/inputmethod/InputMethodManagerServiceStub;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->setScreenStatus(Z)V

    .line 3833
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmNative(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/NativeInputManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/input/NativeInputManagerService;->setInteractive(Z)V

    .line 3834
    return-void
.end method

.method public setPointerAcceleration(FI)V
    .registers 4
    .param p1, "acceleration"    # F
    .param p2, "displayId"    # I

    .line 3890
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/input/InputManagerService;->-$$Nest$msetPointerAcceleration(Lcom/android/server/input/InputManagerService;FI)V

    .line 3891
    return-void
.end method

.method public setPointerIconVisible(ZI)V
    .registers 4
    .param p1, "visible"    # Z
    .param p2, "displayId"    # I

    .line 3900
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/input/InputManagerService;->-$$Nest$msetPointerIconVisible(Lcom/android/server/input/InputManagerService;ZI)V

    .line 3901
    return-void
.end method

.method public setPointerVisibility(Z)V
    .registers 3
    .param p1, "visibility"    # Z

    .line 3926
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmNative(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/NativeInputManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/input/NativeInputManagerService;->setPointerVisibility(Z)V

    .line 3927
    return-void
.end method

.method public setPulseGestureEnabled(Z)V
    .registers 6
    .param p1, "enabled"    # Z

    .line 3846
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmDoubleTouchGestureEnableFile(Lcom/android/server/input/InputManagerService;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 3847
    const/4 v0, 0x0

    .line 3849
    .local v0, "writer":Ljava/io/FileWriter;
    :try_start_9
    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v2}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmDoubleTouchGestureEnableFile(Lcom/android/server/input/InputManagerService;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    move-object v0, v1

    .line 3850
    if-eqz p1, :cond_1a

    const-string v1, "1"

    goto :goto_1c

    :cond_1a
    const-string v1, "0"

    :goto_1c
    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1f} :catch_22
    .catchall {:try_start_9 .. :try_end_1f} :catchall_20

    .line 3854
    goto :goto_2b

    :catchall_20
    move-exception v1

    goto :goto_2f

    .line 3851
    :catch_22
    move-exception v1

    .line 3852
    .local v1, "e":Ljava/io/IOException;
    :try_start_23
    const-string v2, "InputManager"

    const-string v3, "Unable to setPulseGestureEnabled"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_20

    .line 3854
    nop

    .end local v1    # "e":Ljava/io/IOException;
    :goto_2b
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3855
    goto :goto_33

    .line 3854
    :goto_2f
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3855
    throw v1

    .line 3857
    .end local v0    # "writer":Ljava/io/FileWriter;
    :cond_33
    :goto_33
    return-void
.end method

.method public setVirtualMousePointerDisplayId(I)Z
    .registers 3
    .param p1, "pointerDisplayId"    # I

    .line 3874
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    .line 3875
    invoke-static {v0, p1}, Lcom/android/server/input/InputManagerService;->-$$Nest$msetVirtualMousePointerDisplayIdBlocking(Lcom/android/server/input/InputManagerService;I)Z

    move-result v0

    .line 3874
    return v0
.end method

.method public toggleCapsLock(I)V
    .registers 3
    .param p1, "deviceId"    # I

    .line 3838
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmNative(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/NativeInputManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/input/NativeInputManagerService;->toggleCapsLock(I)V

    .line 3840
    invoke-static {}, Lcom/android/server/input/InputManagerServiceStub;->getInstance()Lcom/android/server/input/InputManagerServiceStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/input/InputManagerServiceStub;->toggleCapsLock()V

    .line 3842
    return-void
.end method

.method public transferTouchFocus(Landroid/os/IBinder;Landroid/os/IBinder;)Z
    .registers 4
    .param p1, "fromChannelToken"    # Landroid/os/IBinder;
    .param p2, "toChannelToken"    # Landroid/os/IBinder;

    .line 3862
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/input/InputManagerService;->transferTouchFocus(Landroid/os/IBinder;Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public unregisterLidSwitchCallback(Landroid/hardware/input/InputManagerInternal$LidSwitchCallback;)V
    .registers 3
    .param p1, "callbacks"    # Landroid/hardware/input/InputManagerInternal$LidSwitchCallback;

    .line 3910
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/input/InputManagerService;->unregisterLidSwitchCallbackInternal(Landroid/hardware/input/InputManagerInternal$LidSwitchCallback;)V

    .line 3911
    return-void
.end method
