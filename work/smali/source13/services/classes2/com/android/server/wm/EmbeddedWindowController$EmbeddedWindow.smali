.class Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
.super Ljava/lang/Object;
.source "EmbeddedWindowController.java"

# interfaces
.implements Lcom/android/server/wm/InputTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/EmbeddedWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EmbeddedWindow"
.end annotation


# instance fields
.field final mClient:Landroid/view/IWindow;

.field final mDisplayId:I

.field private mFocusGrantToken:Landroid/os/IBinder;

.field final mHostActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field final mHostWindowState:Lcom/android/server/wm/WindowState;

.field mInputChannel:Landroid/view/InputChannel;

.field mIsOverlay:Z

.field final mName:Ljava/lang/String;

.field final mOwnerPid:I

.field final mOwnerUid:I

.field public mSession:Lcom/android/server/wm/Session;

.field final mWindowType:I

.field final mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowManagerService;Landroid/view/IWindow;Lcom/android/server/wm/WindowState;IIIILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 14
    .param p1, "session"    # Lcom/android/server/wm/Session;
    .param p2, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p3, "clientToken"    # Landroid/view/IWindow;
    .param p4, "hostWindowState"    # Lcom/android/server/wm/WindowState;
    .param p5, "ownerUid"    # I
    .param p6, "ownerPid"    # I
    .param p7, "windowType"    # I
    .param p8, "displayId"    # I
    .param p9, "focusGrantToken"    # Landroid/os/IBinder;
    .param p10, "inputHandleName"    # Ljava/lang/String;

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mIsOverlay:Z

    .line 204
    iput-object p1, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mSession:Lcom/android/server/wm/Session;

    .line 205
    iput-object p2, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 206
    iput-object p3, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mClient:Landroid/view/IWindow;

    .line 207
    iput-object p4, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostWindowState:Lcom/android/server/wm/WindowState;

    .line 208
    if-eqz p4, :cond_13

    iget-object v0, p4, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    goto :goto_14

    .line 209
    :cond_13
    const/4 v0, 0x0

    :goto_14
    iput-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 210
    iput p5, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerUid:I

    .line 211
    iput p6, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerPid:I

    .line 212
    iput p7, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mWindowType:I

    .line 213
    iput p8, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mDisplayId:I

    .line 214
    iput-object p9, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mFocusGrantToken:Landroid/os/IBinder;

    .line 216
    if-eqz p4, :cond_3e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_40

    .line 217
    :cond_3e
    const-string v0, ""

    :goto_40
    nop

    .line 218
    .local v0, "hostWindowName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Embedded{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mName:Ljava/lang/String;

    .line 219
    return-void
.end method

.method private handleTap(Z)V
    .registers 5
    .param p1, "grantFocus"    # Z

    .line 313
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_d

    .line 314
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mSession:Lcom/android/server/wm/Session;

    iget-object v2, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mFocusGrantToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/WindowManagerService;->grantEmbeddedWindowFocus(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)V

    .line 316
    :cond_d
    return-void
.end method


# virtual methods
.method public canScreenshotIme()Z
    .registers 2

    .line 335
    const/4 v0, 0x1

    return v0
.end method

.method public dumpProto(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 12
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "logLevel"    # I

    .line 360
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 362
    .local v0, "token":J
    const-wide v2, 0x10b00000006L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 363
    .local v2, "token2":J
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    const-wide v5, 0x10500000001L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 364
    const-wide v4, 0x10900000003L

    const-string v6, "EmbeddedWindow"

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 365
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 366
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 367
    return-void
.end method

.method public getActivityRecord()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 354
    const/4 v0, 0x0

    return-object v0
.end method

.method getApplicationHandle()Landroid/view/InputApplicationHandle;
    .registers 3

    .line 227
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1b

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandleWrapper;

    .line 228
    invoke-virtual {v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->getInputApplicationHandle()Landroid/view/InputApplicationHandle;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_1b

    .line 231
    :cond_d
    new-instance v0, Landroid/view/InputApplicationHandle;

    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostWindowState:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandleWrapper;

    .line 232
    invoke-virtual {v1}, Lcom/android/server/wm/InputWindowHandleWrapper;->getInputApplicationHandle()Landroid/view/InputApplicationHandle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/InputApplicationHandle;-><init>(Landroid/view/InputApplicationHandle;)V

    .line 231
    return-object v0

    .line 229
    :cond_1b
    :goto_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayContent()Lcom/android/server/wm/DisplayContent;
    .registers 3

    .line 261
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayId()I
    .registers 2

    .line 256
    iget v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mDisplayId:I

    return v0
.end method

.method getFocusGrantToken()Landroid/os/IBinder;
    .registers 2

    .line 291
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mFocusGrantToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public getIWindow()Landroid/view/IWindow;
    .registers 2

    .line 266
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mClient:Landroid/view/IWindow;

    return-object v0
.end method

.method public getImeControlTarget()Lcom/android/server/wm/InsetsControlTarget;
    .registers 2

    .line 344
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    return-object v0
.end method

.method getInputChannelToken()Landroid/os/IBinder;
    .registers 2

    .line 295
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_9

    .line 296
    invoke-virtual {v0}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    .line 298
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method getIsOverlay()Z
    .registers 2

    .line 287
    iget-boolean v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mIsOverlay:Z

    return v0
.end method

.method public getPid()I
    .registers 2

    .line 275
    iget v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerPid:I

    return v0
.end method

.method public getUid()I
    .registers 2

    .line 280
    iget v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerUid:I

    return v0
.end method

.method public getWindowState()Lcom/android/server/wm/WindowState;
    .registers 2

    .line 251
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostWindowState:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method public getWindowToken()Landroid/os/IBinder;
    .registers 2

    .line 270
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public handleTapOutsideFocusInsideSelf()V
    .registers 2

    .line 325
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->handleTap(Z)V

    .line 326
    return-void
.end method

.method public handleTapOutsideFocusOutsideSelf()V
    .registers 2

    .line 320
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->handleTap(Z)V

    .line 321
    return-void
.end method

.method public isInputMethodClientFocus(II)Z
    .registers 4
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .line 349
    iget v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerUid:I

    if-ne p1, v0, :cond_a

    iget v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerPid:I

    if-ne p2, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method onRemoved()V
    .registers 3

    .line 242
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_19

    .line 243
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->removeInputChannel(Landroid/os/IBinder;)V

    .line 244
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputChannel:Landroid/view/InputChannel;

    .line 247
    :cond_19
    return-void
.end method

.method openInputChannel()Landroid/view/InputChannel;
    .registers 3

    .line 236
    invoke-virtual {p0}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/input/InputManagerService;->createInputChannel(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputChannel:Landroid/view/InputChannel;

    .line 238
    return-object v1
.end method

.method public receiveFocusFromTapOutside()Z
    .registers 2

    .line 309
    iget-boolean v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mIsOverlay:Z

    return v0
.end method

.method setIsOverlay()V
    .registers 2

    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mIsOverlay:Z

    .line 285
    return-void
.end method

.method public shouldControlIme()Z
    .registers 2

    .line 330
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 223
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public unfreezeInsetsAfterStartInput()V
    .registers 1

    .line 340
    return-void
.end method
