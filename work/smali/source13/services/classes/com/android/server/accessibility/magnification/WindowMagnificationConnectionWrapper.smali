.class Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;
.super Ljava/lang/Object;
.source "WindowMagnificationConnectionWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper$RemoteAnimationCallback;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "WindowMagnificationConnectionWrapper"


# instance fields
.field private final mConnection:Landroid/view/accessibility/IWindowMagnificationConnection;

.field private final mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;


# direct methods
.method constructor <init>(Landroid/view/accessibility/IWindowMagnificationConnection;Lcom/android/server/accessibility/AccessibilityTraceManager;)V
    .registers 3
    .param p1, "connection"    # Landroid/view/accessibility/IWindowMagnificationConnection;
    .param p2, "trace"    # Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->mConnection:Landroid/view/accessibility/IWindowMagnificationConnection;

    .line 49
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 50
    return-void
.end method

.method private static transformToRemoteCallback(Landroid/view/accessibility/MagnificationAnimationCallback;Lcom/android/server/accessibility/AccessibilityTraceManager;)Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;
    .registers 3
    .param p0, "callback"    # Landroid/view/accessibility/MagnificationAnimationCallback;
    .param p1, "trace"    # Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 211
    if-nez p0, :cond_4

    .line 212
    const/4 v0, 0x0

    return-object v0

    .line 214
    :cond_4
    new-instance v0, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper$RemoteAnimationCallback;

    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper$RemoteAnimationCallback;-><init>(Landroid/view/accessibility/MagnificationAnimationCallback;Lcom/android/server/accessibility/AccessibilityTraceManager;)V

    return-object v0
.end method


# virtual methods
.method disableWindowMagnification(ILandroid/view/accessibility/MagnificationAnimationCallback;)Z
    .registers 8
    .param p1, "displayId"    # I
    .param p2, "callback"    # Landroid/view/accessibility/MagnificationAnimationCallback;

    .line 103
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x80

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 104
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";callback="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WindowMagnificationConnectionWrapper.disableWindowMagnification"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 109
    :cond_2e
    :try_start_2e
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->mConnection:Landroid/view/accessibility/IWindowMagnificationConnection;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 110
    invoke-static {p2, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->transformToRemoteCallback(Landroid/view/accessibility/MagnificationAnimationCallback;Lcom/android/server/accessibility/AccessibilityTraceManager;)Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;

    move-result-object v1

    .line 109
    invoke-interface {v0, p1, v1}, Landroid/view/accessibility/IWindowMagnificationConnection;->disableWindowMagnification(ILandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_39} :catch_3c

    .line 116
    nop

    .line 117
    const/4 v0, 0x1

    return v0

    .line 111
    :catch_3c
    move-exception v0

    .line 115
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method enableWindowMagnification(IFFFFFLandroid/view/accessibility/MagnificationAnimationCallback;)Z
    .registers 24
    .param p1, "displayId"    # I
    .param p2, "scale"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F
    .param p5, "magnificationFrameOffsetRatioX"    # F
    .param p6, "magnificationFrameOffsetRatioY"    # F
    .param p7, "callback"    # Landroid/view/accessibility/MagnificationAnimationCallback;

    .line 64
    move-object/from16 v1, p0

    move-object/from16 v2, p7

    iget-object v0, v1, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v3, 0x80

    invoke-virtual {v0, v3, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 65
    iget-object v0, v1, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "displayId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v14, p1

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";scale="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v15, p2

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";centerX="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v13, p3

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";centerY="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v12, p4

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";magnificationFrameOffsetRatioX="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v11, p5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";magnificationFrameOffsetRatioY="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v10, p6

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";callback="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "WindowMagnificationConnectionWrapper.enableWindowMagnification"

    invoke-virtual {v0, v6, v3, v4, v5}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_7d

    .line 64
    :cond_71
    move/from16 v14, p1

    move/from16 v15, p2

    move/from16 v13, p3

    move/from16 v12, p4

    move/from16 v11, p5

    move/from16 v10, p6

    .line 73
    :goto_7d
    :try_start_7d
    iget-object v6, v1, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->mConnection:Landroid/view/accessibility/IWindowMagnificationConnection;

    iget-object v0, v1, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 75
    invoke-static {v2, v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->transformToRemoteCallback(Landroid/view/accessibility/MagnificationAnimationCallback;Lcom/android/server/accessibility/AccessibilityTraceManager;)Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;

    move-result-object v0

    .line 73
    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move-object v13, v0

    invoke-interface/range {v6 .. v13}, Landroid/view/accessibility/IWindowMagnificationConnection;->enableWindowMagnification(IFFFFFLandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V
    :try_end_95
    .catch Landroid/os/RemoteException; {:try_start_7d .. :try_end_95} :catch_98

    .line 81
    nop

    .line 82
    const/4 v0, 0x1

    return v0

    .line 76
    :catch_98
    move-exception v0

    .line 80
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    return v3
.end method

.method linkToDeath(Landroid/os/IBinder$DeathRecipient;)V
    .registers 4
    .param p1, "deathRecipient"    # Landroid/os/IBinder$DeathRecipient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->mConnection:Landroid/view/accessibility/IWindowMagnificationConnection;

    invoke-interface {v0}, Landroid/view/accessibility/IWindowMagnificationConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 59
    return-void
.end method

.method moveWindowMagnifier(IFF)Z
    .registers 9
    .param p1, "displayId"    # I
    .param p2, "offsetX"    # F
    .param p3, "offsetY"    # F

    .line 121
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x80

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 122
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";offsetX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";offsetY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WindowMagnificationConnectionWrapper.moveWindowMagnifier"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 126
    :cond_38
    :try_start_38
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->mConnection:Landroid/view/accessibility/IWindowMagnificationConnection;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/accessibility/IWindowMagnificationConnection;->moveWindowMagnifier(IFF)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_3d} :catch_40

    .line 132
    nop

    .line 133
    const/4 v0, 0x1

    return v0

    .line 127
    :catch_40
    move-exception v0

    .line 131
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method moveWindowMagnifierToPosition(IFFLandroid/view/accessibility/MagnificationAnimationCallback;)Z
    .registers 10
    .param p1, "displayId"    # I
    .param p2, "positionX"    # F
    .param p3, "positionY"    # F
    .param p4, "callback"    # Landroid/view/accessibility/MagnificationAnimationCallback;

    .line 138
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x80

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 139
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";positionX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";positionY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WindowMagnificationConnectionWrapper.moveWindowMagnifierToPosition"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 144
    :cond_38
    :try_start_38
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->mConnection:Landroid/view/accessibility/IWindowMagnificationConnection;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 145
    invoke-static {p4, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->transformToRemoteCallback(Landroid/view/accessibility/MagnificationAnimationCallback;Lcom/android/server/accessibility/AccessibilityTraceManager;)Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;

    move-result-object v1

    .line 144
    invoke-interface {v0, p1, p2, p3, v1}, Landroid/view/accessibility/IWindowMagnificationConnection;->moveWindowMagnifierToPosition(IFFLandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_43} :catch_46

    .line 151
    nop

    .line 152
    const/4 v0, 0x1

    return v0

    .line 146
    :catch_46
    move-exception v0

    .line 150
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method removeMagnificationButton(I)Z
    .registers 7
    .param p1, "displayId"    # I

    .line 173
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x80

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 174
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WindowMagnificationConnectionWrapper.removeMagnificationButton"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 178
    :cond_24
    :try_start_24
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->mConnection:Landroid/view/accessibility/IWindowMagnificationConnection;

    invoke-interface {v0, p1}, Landroid/view/accessibility/IWindowMagnificationConnection;->removeMagnificationButton(I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_29} :catch_2c

    .line 184
    nop

    .line 185
    const/4 v0, 0x1

    return v0

    .line 179
    :catch_2c
    move-exception v0

    .line 183
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method setConnectionCallback(Landroid/view/accessibility/IWindowMagnificationConnectionCallback;)Z
    .registers 7
    .param p1, "connectionCallback"    # Landroid/view/accessibility/IWindowMagnificationConnectionCallback;

    .line 189
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x180

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 192
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callback="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WindowMagnificationConnectionWrapper.setConnectionCallback"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 198
    :cond_24
    :try_start_24
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->mConnection:Landroid/view/accessibility/IWindowMagnificationConnection;

    invoke-interface {v0, p1}, Landroid/view/accessibility/IWindowMagnificationConnection;->setConnectionCallback(Landroid/view/accessibility/IWindowMagnificationConnectionCallback;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_29} :catch_2c

    .line 204
    nop

    .line 205
    const/4 v0, 0x1

    return v0

    .line 199
    :catch_2c
    move-exception v0

    .line 203
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method setScale(IF)Z
    .registers 8
    .param p1, "displayId"    # I
    .param p2, "scale"    # F

    .line 86
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x80

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 87
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

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

    const-string v4, "WindowMagnificationConnectionWrapper.setScale"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 91
    :cond_2e
    :try_start_2e
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->mConnection:Landroid/view/accessibility/IWindowMagnificationConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/accessibility/IWindowMagnificationConnection;->setScale(IF)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_33} :catch_36

    .line 97
    nop

    .line 98
    const/4 v0, 0x1

    return v0

    .line 92
    :catch_36
    move-exception v0

    .line 96
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method showMagnificationButton(II)Z
    .registers 8
    .param p1, "displayId"    # I
    .param p2, "magnificationMode"    # I

    .line 156
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x80

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 157
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

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

    const-string v4, "WindowMagnificationConnectionWrapper.showMagnificationButton"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 162
    :cond_2e
    :try_start_2e
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->mConnection:Landroid/view/accessibility/IWindowMagnificationConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/accessibility/IWindowMagnificationConnection;->showMagnificationButton(II)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_33} :catch_36

    .line 168
    nop

    .line 169
    const/4 v0, 0x1

    return v0

    .line 163
    :catch_36
    move-exception v0

    .line 167
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)V
    .registers 4
    .param p1, "deathRecipient"    # Landroid/os/IBinder$DeathRecipient;

    .line 54
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->mConnection:Landroid/view/accessibility/IWindowMagnificationConnection;

    invoke-interface {v0}, Landroid/view/accessibility/IWindowMagnificationConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 55
    return-void
.end method
