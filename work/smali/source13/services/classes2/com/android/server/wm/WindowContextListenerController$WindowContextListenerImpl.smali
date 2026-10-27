.class Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;
.super Ljava/lang/Object;
.source "WindowContextListenerController.java"

# interfaces
.implements Lcom/android/server/wm/WindowContainerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowContextListenerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WindowContextListenerImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;
    }
.end annotation


# instance fields
.field private final mClientToken:Landroid/app/IWindowToken;

.field private mContainer:Lcom/android/server/wm/WindowContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wm/WindowContainer<",
            "*>;"
        }
    .end annotation
.end field

.field private mDeathRecipient:Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;

.field private mHasPendingConfiguration:Z

.field private mLastReportedConfig:Landroid/content/res/Configuration;

.field private mLastReportedDisplay:I

.field private final mOptions:Landroid/os/Bundle;

.field private final mOwnerUid:I

.field private final mType:I

.field final synthetic this$0:Lcom/android/server/wm/WindowContextListenerController;


# direct methods
.method static bridge synthetic -$$Nest$fgetmClientToken(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)Landroid/app/IWindowToken;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mClientToken:Landroid/app/IWindowToken;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContainer(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)Lcom/android/server/wm/WindowContainer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mContainer:Lcom/android/server/wm/WindowContainer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeathRecipient(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mDeathRecipient:Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHasPendingConfiguration(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mHasPendingConfiguration:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOptions(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mOptions:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOwnerUid(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)I
    .registers 1

    iget p0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mOwnerUid:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmType(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)I
    .registers 1

    iget p0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmDeathRecipient(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mDeathRecipient:Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;

    return-void
.end method

.method static bridge synthetic -$$Nest$mregister(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->register(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreportConfigToWindowTokenClient(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->reportConfigToWindowTokenClient()V

    return-void
.end method

.method static bridge synthetic -$$Nest$munregister(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->unregister()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateContainer(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;Lcom/android/server/wm/WindowContainer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->updateContainer(Lcom/android/server/wm/WindowContainer;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/wm/WindowContextListenerController;Landroid/os/IBinder;Lcom/android/server/wm/WindowContainer;IILandroid/os/Bundle;)V
    .registers 16
    .param p1, "this$0"    # Lcom/android/server/wm/WindowContextListenerController;
    .param p2, "clientToken"    # Landroid/os/IBinder;
    .param p4, "ownerUid"    # I
    .param p5, "type"    # I
    .param p6, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;II",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 211
    .local p3, "container":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    iput-object p1, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->this$0:Lcom/android/server/wm/WindowContextListenerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mLastReportedDisplay:I

    .line 212
    invoke-static {p2}, Landroid/app/IWindowToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWindowToken;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mClientToken:Landroid/app/IWindowToken;

    .line 213
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    iput-object v0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 214
    iput p4, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mOwnerUid:I

    .line 215
    iput p5, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mType:I

    .line 216
    iput-object p6, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mOptions:Landroid/os/Bundle;

    .line 218
    new-instance v0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;-><init>(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient-IA;)V

    .line 220
    .local v0, "deathRecipient":Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;
    :try_start_22
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;->linkToDeath()V

    .line 221
    iput-object v0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mDeathRecipient:Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_27} :catch_28

    .line 225
    goto :goto_4a

    .line 222
    :catch_28
    move-exception v1

    .line 223
    .local v1, "e":Landroid/os/RemoteException;
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_ERROR_enabled:Z

    if-eqz v2, :cond_4a

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam0":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam1":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_ERROR:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0x780dafbb

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v8, 0x1

    aput-object v3, v6, v8

    const-string v8, "Could not register window container listener token=%s, container=%s"

    invoke-static {v4, v5, v7, v8, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 226
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "protoLogParam0":Ljava/lang/String;
    .end local v3    # "protoLogParam1":Ljava/lang/String;
    :cond_4a
    :goto_4a
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/WindowContextListenerController;Landroid/os/IBinder;Lcom/android/server/wm/WindowContainer;IILandroid/os/Bundle;Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;-><init>(Lcom/android/server/wm/WindowContextListenerController;Landroid/os/IBinder;Lcom/android/server/wm/WindowContainer;IILandroid/os/Bundle;)V

    return-void
.end method

.method private clear()V
    .registers 2

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mLastReportedConfig:Landroid/content/res/Configuration;

    .line 266
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mLastReportedDisplay:I

    .line 267
    return-void
.end method

.method private register()V
    .registers 2

    .line 247
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->register(Z)V

    .line 248
    return-void
.end method

.method private register(Z)V
    .registers 6
    .param p1, "shouldDispatchConfig"    # Z

    .line 251
    iget-object v0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mClientToken:Landroid/app/IWindowToken;

    invoke-interface {v0}, Landroid/app/IWindowToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 252
    .local v0, "token":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mDeathRecipient:Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;

    if-eqz v1, :cond_17

    .line 255
    iget-object v1, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->this$0:Lcom/android/server/wm/WindowContextListenerController;

    iget-object v1, v1, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0, p0}, Landroid/util/ArrayMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v1, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p0, p1}, Lcom/android/server/wm/WindowContainer;->registerWindowContainerListener(Lcom/android/server/wm/WindowContainerListener;Z)V

    .line 257
    return-void

    .line 253
    :cond_17
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid client token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private reportConfigToWindowTokenClient()V
    .registers 10

    .line 280
    iget-object v0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mDeathRecipient:Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;

    if-eqz v0, :cond_6f

    .line 283
    iget-object v0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 284
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isReady()Z

    move-result v1

    if-nez v1, :cond_11

    .line 287
    return-void

    .line 293
    :cond_11
    iget-object v1, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mOptions:Landroid/os/Bundle;

    invoke-static {v1}, Landroid/window/WindowProviderService;->isWindowProviderService(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_29

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    iget v1, v1, Landroid/view/DisplayInfo;->state:I

    invoke-static {v1}, Landroid/view/Display;->isSuspendedState(I)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 294
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mHasPendingConfiguration:Z

    .line 295
    return-void

    .line 297
    :cond_29
    iget-object v1, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 298
    .local v1, "config":Landroid/content/res/Configuration;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    .line 299
    .local v2, "displayId":I
    iget-object v3, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mLastReportedConfig:Landroid/content/res/Configuration;

    if-nez v3, :cond_3e

    .line 300
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mLastReportedConfig:Landroid/content/res/Configuration;

    .line 302
    :cond_3e
    iget-object v3, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mLastReportedConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v3}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v3

    if-eqz v3, :cond_4b

    iget v3, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mLastReportedDisplay:I

    if-ne v2, v3, :cond_4b

    .line 304
    return-void

    .line 307
    :cond_4b
    iget-object v3, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mLastReportedConfig:Landroid/content/res/Configuration;

    invoke-virtual {v3, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 308
    iput v2, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mLastReportedDisplay:I

    .line 311
    const/4 v3, 0x0

    :try_start_53
    iget-object v4, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mClientToken:Landroid/app/IWindowToken;

    invoke-interface {v4, v1, v2}, Landroid/app/IWindowToken;->onConfigurationChanged(Landroid/content/res/Configuration;I)V
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_58} :catch_59

    .line 314
    goto :goto_6c

    .line 312
    :catch_59
    move-exception v4

    .line 313
    .local v4, "e":Landroid/os/RemoteException;
    sget-boolean v5, Lcom/android/server/wm/ProtoLogCache;->WM_ERROR_enabled:Z

    if-eqz v5, :cond_6c

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_ERROR:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, 0x74237fce

    const/4 v7, 0x0

    move-object v8, v7

    check-cast v8, [Ljava/lang/Object;

    const-string v8, "Could not report config changes to the window token client."

    invoke-static {v5, v6, v3, v8, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 315
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_6c
    :goto_6c
    iput-boolean v3, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mHasPendingConfiguration:Z

    .line 316
    return-void

    .line 281
    .end local v0    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v1    # "config":Landroid/content/res/Configuration;
    .end local v2    # "displayId":I
    :cond_6f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid client token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mClientToken:Landroid/app/IWindowToken;

    invoke-interface {v2}, Landroid/app/IWindowToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private unregister()V
    .registers 3

    .line 260
    iget-object v0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowContainer;->unregisterWindowContainerListener(Lcom/android/server/wm/WindowContainerListener;)V

    .line 261
    iget-object v0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->this$0:Lcom/android/server/wm/WindowContextListenerController;

    iget-object v0, v0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mClientToken:Landroid/app/IWindowToken;

    invoke-interface {v1}, Landroid/app/IWindowToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    return-void
.end method

.method private updateContainer(Lcom/android/server/wm/WindowContainer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;)V"
        }
    .end annotation

    .line 235
    .local p1, "newContainer":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 238
    return-void

    .line 240
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowContainer;->unregisterWindowContainerListener(Lcom/android/server/wm/WindowContainerListener;)V

    .line 241
    iput-object p1, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 242
    invoke-direct {p0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->clear()V

    .line 243
    invoke-direct {p0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->register()V

    .line 244
    return-void
.end method


# virtual methods
.method getWindowContainer()Lcom/android/server/wm/WindowContainer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;"
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mContainer:Lcom/android/server/wm/WindowContainer;

    return-object v0
.end method

.method public onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .registers 2
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 276
    invoke-direct {p0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->reportConfigToWindowTokenClient()V

    .line 277
    return-void
.end method

.method public onMergedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "mergedOverrideConfig"    # Landroid/content/res/Configuration;

    .line 271
    invoke-direct {p0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->reportConfigToWindowTokenClient()V

    .line 272
    return-void
.end method

.method public onRemoved()V
    .registers 8

    .line 320
    iget-object v0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mDeathRecipient:Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;

    if-eqz v0, :cond_49

    .line 323
    iget-object v0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asWindowToken()Lcom/android/server/wm/WindowToken;

    move-result-object v0

    .line 324
    .local v0, "windowToken":Lcom/android/server/wm/WindowToken;
    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->isFromClient()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 328
    iget-object v1, v0, Lcom/android/server/wm/WindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget v2, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mLastReportedDisplay:I

    .line 329
    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 332
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_26

    .line 333
    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent;->findAreaForToken(Lcom/android/server/wm/WindowToken;)Lcom/android/server/wm/DisplayArea;

    move-result-object v2

    .line 334
    .local v2, "da":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<*>;"
    invoke-direct {p0, v2}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->updateContainer(Lcom/android/server/wm/WindowContainer;)V

    .line 335
    return-void

    .line 338
    .end local v1    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "da":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<*>;"
    :cond_26
    iget-object v1, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mDeathRecipient:Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;->unlinkToDeath()V

    .line 340
    :try_start_2b
    iget-object v1, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mClientToken:Landroid/app/IWindowToken;

    invoke-interface {v1}, Landroid/app/IWindowToken;->onWindowTokenRemoved()V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_30} :catch_31

    .line 343
    goto :goto_45

    .line 341
    :catch_31
    move-exception v1

    .line 342
    .local v1, "e":Landroid/os/RemoteException;
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_ERROR_enabled:Z

    if-eqz v2, :cond_45

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_ERROR:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x568f326

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v5

    check-cast v6, [Ljava/lang/Object;

    const-string v6, "Could not report token removal to the window token client."

    invoke-static {v2, v3, v4, v6, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 344
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_45
    :goto_45
    invoke-direct {p0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->unregister()V

    .line 345
    return-void

    .line 321
    .end local v0    # "windowToken":Lcom/android/server/wm/WindowToken;
    :cond_49
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid client token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mClientToken:Landroid/app/IWindowToken;

    invoke-interface {v2}, Landroid/app/IWindowToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowContextListenerImpl{clientToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mClientToken:Landroid/app/IWindowToken;

    invoke-interface {v1}, Landroid/app/IWindowToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
