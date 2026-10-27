.class public Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
.super Ljava/lang/Object;
.source "EmbeddedWindowController.java"

# interfaces
.implements Lcom/android/server/wm/InputTarget;


# instance fields
.field public final mClient:Landroid/os/IBinder;

.field public final mDisplayId:I

.field public mGestureToEmbedded:Z

.field public mHostActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public mHostWindowState:Lcom/android/server/wm/WindowState;

.field public mInputChannel:Landroid/view/InputChannel;

.field public final mInputHandleName:Ljava/lang/String;

.field public final mInputTransferToken:Landroid/window/InputTransferToken;

.field public mIsFocusable:Z

.field public mName:Ljava/lang/String;

.field public final mOwnerPid:I

.field public final mOwnerUid:I

.field public mRequestedVisibleTypes:I

.field public mSession:Lcom/android/server/wm/Session;

.field public final mWindowType:I

.field public final mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;Lcom/android/server/wm/WindowState;IIIILandroid/window/InputTransferToken;Ljava/lang/String;Z)V
    .registers 13

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 267
    iput v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mRequestedVisibleTypes:I

    .line 270
    iput-boolean v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mGestureToEmbedded:Z

    .line 288
    iput-object p1, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mSession:Lcom/android/server/wm/Session;

    .line 289
    iput-object p2, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 290
    iput-object p3, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mClient:Landroid/os/IBinder;

    .line 291
    iput p5, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerUid:I

    .line 292
    iput p6, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerPid:I

    .line 293
    iput p7, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mWindowType:I

    .line 294
    iput p8, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mDisplayId:I

    .line 295
    iput-object p9, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputTransferToken:Landroid/window/InputTransferToken;

    .line 296
    iput-boolean p11, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mIsFocusable:Z

    .line 297
    iput-object p10, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputHandleName:Ljava/lang/String;

    .line 298
    invoke-virtual {p0, p4}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->updateHost(Lcom/android/server/wm/WindowState;)V

    return-void
.end method


# virtual methods
.method public canScreenshotIme()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public getActivityRecord()Lcom/android/server/wm/ActivityRecord;
    .registers 1

    .line 470
    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostActivityRecord:Lcom/android/server/wm/ActivityRecord;

    return-object p0
.end method

.method public getApplicationHandle()Landroid/view/InputApplicationHandle;
    .registers 2

    .line 307
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1b

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandleWrapper;

    .line 308
    invoke-virtual {v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->getInputApplicationHandle()Landroid/view/InputApplicationHandle;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_1b

    .line 311
    :cond_d
    new-instance v0, Landroid/view/InputApplicationHandle;

    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostWindowState:Lcom/android/server/wm/WindowState;

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandleWrapper;

    .line 312
    invoke-virtual {p0}, Lcom/android/server/wm/InputWindowHandleWrapper;->getInputApplicationHandle()Landroid/view/InputApplicationHandle;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/view/InputApplicationHandle;-><init>(Landroid/view/InputApplicationHandle;)V

    return-object v0

    :cond_1b
    :goto_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDisplayContent()Lcom/android/server/wm/DisplayContent;
    .registers 2

    .line 348
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->getDisplayId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayId()I
    .registers 1

    .line 343
    iget p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mDisplayId:I

    return p0
.end method

.method public getInputChannelToken()Landroid/os/IBinder;
    .registers 1

    .line 395
    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputChannel:Landroid/view/InputChannel;

    if-eqz p0, :cond_9

    .line 396
    invoke-virtual {p0}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getInputTransferToken()Landroid/window/InputTransferToken;
    .registers 1

    .line 391
    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputTransferToken:Landroid/window/InputTransferToken;

    return-object p0
.end method

.method public getPid()I
    .registers 1

    .line 382
    iget p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerPid:I

    return p0
.end method

.method public getRequestedVisibleTypes()I
    .registers 1

    .line 362
    iget p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mRequestedVisibleTypes:I

    return p0
.end method

.method public getWindowState()Lcom/android/server/wm/WindowState;
    .registers 1

    .line 338
    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostWindowState:Lcom/android/server/wm/WindowState;

    return-object p0
.end method

.method public getWindowToken()Landroid/os/IBinder;
    .registers 1

    .line 352
    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mClient:Landroid/os/IBinder;

    return-object p0
.end method

.method public final handleTap(Z)V
    .registers 6

    .line 415
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_23

    .line 416
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1a

    .line 419
    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget-object v2, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputTransferToken:Landroid/window/InputTransferToken;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0, v2, p1}, Lcom/android/server/wm/WindowManagerService;->grantEmbeddedWindowFocus(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/window/InputTransferToken;Z)V

    if-eqz p1, :cond_23

    .line 425
    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->handleTapOutsideFocusInsideSelf()V

    return-void

    .line 428
    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mSession:Lcom/android/server/wm/Session;

    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputTransferToken:Landroid/window/InputTransferToken;

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/server/wm/WindowManagerService;->grantEmbeddedWindowFocus(Lcom/android/server/wm/Session;Landroid/window/InputTransferToken;Z)V

    :cond_23
    return-void
.end method

.method public handleTapOutsideFocusInsideSelf()V
    .registers 2

    const/4 v0, 0x1

    .line 440
    invoke-virtual {p0, v0}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->handleTap(Z)V

    return-void
.end method

.method public handleTapOutsideFocusOutsideSelf()V
    .registers 2

    const/4 v0, 0x0

    .line 435
    invoke-virtual {p0, v0}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->handleTap(Z)V

    return-void
.end method

.method public isInputMethodClientFocus(II)Z
    .registers 4

    .line 465
    iget v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerUid:I

    if-ne p1, v0, :cond_a

    iget p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerPid:I

    if-ne p2, p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public isRequestedVisible(I)Z
    .registers 2

    .line 357
    iget p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mRequestedVisibleTypes:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public onRemoved()V
    .registers 4

    .line 322
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_17

    .line 323
    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/input/InputManagerService;->removeInputChannel(Landroid/os/IBinder;)V

    .line 324
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    const/4 v0, 0x0

    .line 325
    iput-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputChannel:Landroid/view/InputChannel;

    .line 327
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_2e

    .line 328
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v1, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerPid:I

    iget v2, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerUid:I

    .line 329
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 331
    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowProcessController;->removeHostActivity(Lcom/android/server/wm/ActivityRecord;)V

    :cond_2e
    return-void
.end method

.method public openInputChannel(Landroid/view/InputChannel;)V
    .registers 4

    .line 316
    invoke-virtual {p0}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->toString()Ljava/lang/String;

    move-result-object v0

    .line 317
    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/input/InputManagerService;->createInputChannel(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputChannel:Landroid/view/InputChannel;

    .line 318
    invoke-virtual {v0, p1}, Landroid/view/InputChannel;->copyTo(Landroid/view/InputChannel;)V

    return-void
.end method

.method public receiveFocusFromTapOutside()Z
    .registers 1

    .line 411
    iget-boolean p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mIsFocusable:Z

    return p0
.end method

.method public setIsFocusable(Z)V
    .registers 2

    .line 402
    iput-boolean p1, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mIsFocusable:Z

    return-void
.end method

.method public setRequestedVisibleTypes(I)I
    .registers 3

    .line 372
    iget v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mRequestedVisibleTypes:I

    if-eq v0, p1, :cond_8

    xor-int/2addr v0, p1

    .line 374
    iput p1, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mRequestedVisibleTypes:I

    return v0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public shouldControlIme()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 303
    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public updateHost(Lcom/android/server/wm/WindowState;)V
    .registers 7

    .line 486
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostWindowState:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mName:Ljava/lang/String;

    if-eqz v0, :cond_9

    return-void

    .line 490
    :cond_9
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_EMBEDDED_WINDOWS_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_2d

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostWindowState:Lcom/android/server/wm/WindowState;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_EMBEDDED_WINDOWS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v4, 0x0

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v1, -0x51363c21b425ca95L    # -2.652547824843855E-83

    invoke-static {v3, v1, v2, v4, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 492
    :cond_2d
    iput-object p1, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostWindowState:Lcom/android/server/wm/WindowState;

    if-eqz p1, :cond_34

    .line 493
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    goto :goto_35

    :cond_34
    const/4 v0, 0x0

    .line 494
    :goto_35
    iput-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p1, :cond_55

    .line 496
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_57

    .line 497
    :cond_55
    const-string p1, ""

    .line 498
    :goto_57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Embedded{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputHandleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mName:Ljava/lang/String;

    return-void
.end method
