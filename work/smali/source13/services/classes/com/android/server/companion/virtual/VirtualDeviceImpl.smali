.class final Lcom/android/server/companion/virtual/VirtualDeviceImpl;
.super Landroid/companion/virtual/IVirtualDevice$Stub;
.source "VirtualDeviceImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Lcom/android/server/companion/virtual/GenericWindowPolicyController$RunningAppsChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;,
        Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;,
        Lcom/android/server/companion/virtual/VirtualDeviceImpl$OnDeviceCloseListener;
    }
.end annotation


# static fields
.field private static final PENDING_TRAMPOLINE_TIMEOUT_MS:J = 0x1388L

.field private static final TAG:Ljava/lang/String; = "VirtualDeviceImpl"


# instance fields
.field private final mActivityListener:Landroid/companion/virtual/IVirtualDeviceActivityListener;

.field private final mAppToken:Landroid/os/IBinder;

.field private final mAssociationInfo:Landroid/companion/AssociationInfo;

.field private final mContext:Landroid/content/Context;

.field private mDefaultShowPointerIcon:Z

.field private final mInputController:Lcom/android/server/companion/virtual/InputController;

.field private final mListener:Lcom/android/server/companion/virtual/VirtualDeviceImpl$OnDeviceCloseListener;

.field private final mOwnerUid:I

.field private final mParams:Landroid/companion/virtual/VirtualDeviceParams;

.field private final mPendingTrampolineCallback:Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;

.field private final mPerDisplayWakelocks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/os/PowerManager$WakeLock;",
            ">;"
        }
    .end annotation
.end field

.field private mRunningAppsChangedCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

.field private final mVirtualDeviceLock:Ljava/lang/Object;

.field final mVirtualDisplayIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowPolicyControllers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/companion/virtual/GenericWindowPolicyController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$1TXMkh6NQMEvS4Y3R_QuVKDLOJ8(Lcom/android/server/companion/virtual/VirtualDeviceImpl;ILandroid/content/pm/ActivityInfo;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->onActivityBlocked(ILandroid/content/pm/ActivityInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmActivityListener(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)Landroid/companion/virtual/IVirtualDeviceActivityListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityListener:Landroid/companion/virtual/IVirtualDeviceActivityListener;

    return-object p0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/companion/AssociationInfo;Landroid/os/IBinder;ILcom/android/server/companion/virtual/InputController;Lcom/android/server/companion/virtual/VirtualDeviceImpl$OnDeviceCloseListener;Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;Landroid/companion/virtual/IVirtualDeviceActivityListener;Ljava/util/function/Consumer;Landroid/companion/virtual/VirtualDeviceParams;)V
    .registers 27
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "associationInfo"    # Landroid/companion/AssociationInfo;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "ownerUid"    # I
    .param p5, "inputController"    # Lcom/android/server/companion/virtual/InputController;
    .param p6, "listener"    # Lcom/android/server/companion/virtual/VirtualDeviceImpl$OnDeviceCloseListener;
    .param p7, "pendingTrampolineCallback"    # Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;
    .param p8, "activityListener"    # Landroid/companion/virtual/IVirtualDeviceActivityListener;
    .param p10, "params"    # Landroid/companion/virtual/VirtualDeviceParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/companion/AssociationInfo;",
            "Landroid/os/IBinder;",
            "I",
            "Lcom/android/server/companion/virtual/InputController;",
            "Lcom/android/server/companion/virtual/VirtualDeviceImpl$OnDeviceCloseListener;",
            "Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;",
            "Landroid/companion/virtual/IVirtualDeviceActivityListener;",
            "Ljava/util/function/Consumer<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Landroid/companion/virtual/VirtualDeviceParams;",
            ")V"
        }
    .end annotation

    .line 158
    .local p9, "runningAppsChangedCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/util/ArraySet<Ljava/lang/Integer;>;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    invoke-direct/range {p0 .. p0}, Landroid/companion/virtual/IVirtualDevice$Stub;-><init>()V

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    .line 99
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    iput-object v5, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplayIds:Ljava/util/Set;

    .line 104
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    iput-object v5, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPerDisplayWakelocks:Ljava/util/Map;

    .line 109
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDefaultShowPointerIcon:Z

    .line 139
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mWindowPolicyControllers:Landroid/util/SparseArray;

    .line 159
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v5

    .line 160
    .local v5, "ownerUserHandle":Landroid/os/UserHandle;
    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v7

    iput-object v7, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    .line 161
    move-object/from16 v7, p2

    iput-object v7, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAssociationInfo:Landroid/companion/AssociationInfo;

    .line 162
    move-object/from16 v8, p7

    iput-object v8, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPendingTrampolineCallback:Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;

    .line 163
    move-object/from16 v9, p8

    iput-object v9, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityListener:Landroid/companion/virtual/IVirtualDeviceActivityListener;

    .line 164
    move-object/from16 v10, p9

    iput-object v10, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mRunningAppsChangedCallback:Ljava/util/function/Consumer;

    .line 165
    move/from16 v11, p4

    iput v11, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mOwnerUid:I

    .line 166
    iput-object v3, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAppToken:Landroid/os/IBinder;

    .line 167
    move-object/from16 v12, p10

    iput-object v12, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    .line 168
    if-nez v4, :cond_65

    .line 169
    new-instance v13, Lcom/android/server/companion/virtual/InputController;

    .line 171
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v14

    const-class v15, Landroid/view/WindowManager;

    .line 172
    invoke-virtual {v2, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/WindowManager;

    invoke-direct {v13, v0, v14, v15}, Lcom/android/server/companion/virtual/InputController;-><init>(Ljava/lang/Object;Landroid/os/Handler;Landroid/view/WindowManager;)V

    iput-object v13, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    goto :goto_67

    .line 174
    :cond_65
    iput-object v4, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    .line 176
    :goto_67
    move-object/from16 v13, p6

    iput-object v13, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mListener:Lcom/android/server/companion/virtual/VirtualDeviceImpl$OnDeviceCloseListener;

    .line 178
    :try_start_6b
    invoke-interface {v3, v1, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_6e} :catch_70

    .line 181
    nop

    .line 182
    return-void

    .line 179
    :catch_70
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 180
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6
.end method

.method constructor <init>(Landroid/content/Context;Landroid/companion/AssociationInfo;Landroid/os/IBinder;ILcom/android/server/companion/virtual/VirtualDeviceImpl$OnDeviceCloseListener;Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;Landroid/companion/virtual/IVirtualDeviceActivityListener;Ljava/util/function/Consumer;Landroid/companion/virtual/VirtualDeviceParams;)V
    .registers 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "associationInfo"    # Landroid/companion/AssociationInfo;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "ownerUid"    # I
    .param p5, "listener"    # Lcom/android/server/companion/virtual/VirtualDeviceImpl$OnDeviceCloseListener;
    .param p6, "pendingTrampolineCallback"    # Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;
    .param p7, "activityListener"    # Landroid/companion/virtual/IVirtualDeviceActivityListener;
    .param p9, "params"    # Landroid/companion/virtual/VirtualDeviceParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/companion/AssociationInfo;",
            "Landroid/os/IBinder;",
            "I",
            "Lcom/android/server/companion/virtual/VirtualDeviceImpl$OnDeviceCloseListener;",
            "Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;",
            "Landroid/companion/virtual/IVirtualDeviceActivityListener;",
            "Ljava/util/function/Consumer<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Landroid/companion/virtual/VirtualDeviceParams;",
            ")V"
        }
    .end annotation

    .line 148
    .local p8, "runningAppsChangedCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/util/ArraySet<Ljava/lang/Integer;>;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;-><init>(Landroid/content/Context;Landroid/companion/AssociationInfo;Landroid/os/IBinder;ILcom/android/server/companion/virtual/InputController;Lcom/android/server/companion/virtual/VirtualDeviceImpl$OnDeviceCloseListener;Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;Landroid/companion/virtual/IVirtualDeviceActivityListener;Ljava/util/function/Consumer;Landroid/companion/virtual/VirtualDeviceParams;)V

    .line 150
    return-void
.end method

.method private createListenerAdapter()Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;
    .registers 2

    .line 113
    new-instance v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$1;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)V

    return-object v0
.end method

.method private getAllowedUserHandles()Landroid/util/ArraySet;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 595
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 596
    .local v0, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/os/UserHandle;>;"
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 597
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/UserManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 598
    .local v2, "userManager":Landroid/os/UserManager;
    invoke-virtual {v2}, Landroid/os/UserManager;->getAllProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_52

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    .line 599
    .local v4, "profile":Landroid/os/UserHandle;
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/app/admin/DevicePolicyManager;->getNearbyAppStreamingPolicy(I)I

    move-result v5

    .line 600
    .local v5, "nearbyAppStreamingPolicy":I
    const/4 v6, 0x2

    if-eq v5, v6, :cond_4e

    if-nez v5, :cond_3b

    goto :goto_4e

    .line 603
    :cond_3b
    const/4 v6, 0x3

    if-ne v5, v6, :cond_51

    .line 604
    iget-object v6, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    invoke-virtual {v6}, Landroid/companion/virtual/VirtualDeviceParams;->getUsersWithMatchingAccounts()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_51

    .line 605
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_51

    .line 602
    :cond_4e
    :goto_4e
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 608
    .end local v4    # "profile":Landroid/os/UserHandle;
    .end local v5    # "nearbyAppStreamingPolicy":I
    :cond_51
    :goto_51
    goto :goto_21

    .line 609
    :cond_52
    return-object v0
.end method

.method private onActivityBlocked(ILandroid/content/pm/ActivityInfo;)V
    .registers 8
    .param p1, "displayId"    # I
    .param p2, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .line 586
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAssociationInfo:Landroid/companion/AssociationInfo;

    .line 587
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 586
    invoke-static {p2, v0}, Lcom/android/internal/app/BlockedAppStreamingActivity;->createIntent(Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 588
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    .line 589
    const v2, 0x10008000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 590
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    .line 591
    invoke-virtual {v4}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    .line 588
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 592
    return-void
.end method

.method private sendPendingIntent(ILandroid/app/PendingIntent;)V
    .registers 13
    .param p1, "displayId"    # I
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .line 244
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 245
    .local v0, "options":Landroid/app/ActivityOptions;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 246
    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityLaunchAllowedByPermission(Z)V

    .line 247
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    .line 254
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v9

    .line 247
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p2

    invoke-virtual/range {v2 .. v9}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 255
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 1

    .line 290
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->close()V

    .line 291
    return-void
.end method

.method public close()V
    .registers 4

    .line 259
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CREATE_VIRTUAL_DEVICE"

    const-string v2, "Permission required to close the virtual device"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 264
    :try_start_c
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPerDisplayWakelocks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_23

    .line 265
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPerDisplayWakelocks:Ljava/util/Map;

    new-instance v2, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 270
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPerDisplayWakelocks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 272
    :cond_23
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    if-eqz v1, :cond_2d

    .line 273
    invoke-virtual {v1}, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->stopListening()V

    .line 274
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    .line 276
    :cond_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_52

    .line 277
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mListener:Lcom/android/server/companion/virtual/VirtualDeviceImpl$OnDeviceCloseListener;

    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAssociationInfo:Landroid/companion/AssociationInfo;

    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$OnDeviceCloseListener;->onClose(I)V

    .line 278
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAppToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 280
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 282
    .local v0, "token":J
    :try_start_43
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {v2}, Lcom/android/server/companion/virtual/InputController;->close()V
    :try_end_48
    .catchall {:try_start_43 .. :try_end_48} :catchall_4d

    .line 284
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 285
    nop

    .line 286
    return-void

    .line 284
    :catchall_4d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 285
    throw v2

    .line 276
    .end local v0    # "token":J
    :catchall_52
    move-exception v1

    :try_start_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw v1
.end method

.method public createVirtualKeyboard(ILjava/lang/String;IILandroid/os/IBinder;)V
    .registers 14
    .param p1, "displayId"    # I
    .param p2, "deviceName"    # Ljava/lang/String;
    .param p3, "vendorId"    # I
    .param p4, "productId"    # I
    .param p5, "deviceToken"    # Landroid/os/IBinder;

    .line 353
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CREATE_VIRTUAL_DEVICE"

    const-string v2, "Permission required to create a virtual keyboard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 357
    :try_start_c
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplayIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 362
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_39

    .line 363
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 365
    .local v0, "token":J
    :try_start_1d
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/companion/virtual/InputController;->createKeyboard(Ljava/lang/String;IILandroid/os/IBinder;I)V
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_2c

    .line 368
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 369
    nop

    .line 370
    return-void

    .line 368
    :catchall_2c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 369
    throw v2

    .line 358
    .end local v0    # "token":J
    :cond_31
    :try_start_31
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Cannot create a virtual keyboard for a display not associated with this virtual device"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/companion/virtual/VirtualDeviceImpl;
    .end local p1    # "displayId":I
    .end local p2    # "deviceName":Ljava/lang/String;
    .end local p3    # "vendorId":I
    .end local p4    # "productId":I
    .end local p5    # "deviceToken":Landroid/os/IBinder;
    throw v1

    .line 362
    .restart local p0    # "this":Lcom/android/server/companion/virtual/VirtualDeviceImpl;
    .restart local p1    # "displayId":I
    .restart local p2    # "deviceName":Ljava/lang/String;
    .restart local p3    # "vendorId":I
    .restart local p4    # "productId":I
    .restart local p5    # "deviceToken":Landroid/os/IBinder;
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_31 .. :try_end_3b} :catchall_39

    throw v1
.end method

.method public createVirtualMouse(ILjava/lang/String;IILandroid/os/IBinder;)V
    .registers 14
    .param p1, "displayId"    # I
    .param p2, "deviceName"    # Ljava/lang/String;
    .param p3, "vendorId"    # I
    .param p4, "productId"    # I
    .param p5, "deviceToken"    # Landroid/os/IBinder;

    .line 379
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CREATE_VIRTUAL_DEVICE"

    const-string v2, "Permission required to create a virtual mouse"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 383
    :try_start_c
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplayIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 388
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_39

    .line 389
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 391
    .local v0, "token":J
    :try_start_1d
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/companion/virtual/InputController;->createMouse(Ljava/lang/String;IILandroid/os/IBinder;I)V
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_2c

    .line 393
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 394
    nop

    .line 395
    return-void

    .line 393
    :catchall_2c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 394
    throw v2

    .line 384
    .end local v0    # "token":J
    :cond_31
    :try_start_31
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Cannot create a virtual mouse for a display not associated with this virtual device"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/companion/virtual/VirtualDeviceImpl;
    .end local p1    # "displayId":I
    .end local p2    # "deviceName":Ljava/lang/String;
    .end local p3    # "vendorId":I
    .end local p4    # "productId":I
    .end local p5    # "deviceToken":Landroid/os/IBinder;
    throw v1

    .line 388
    .restart local p0    # "this":Lcom/android/server/companion/virtual/VirtualDeviceImpl;
    .restart local p1    # "displayId":I
    .restart local p2    # "deviceName":Ljava/lang/String;
    .restart local p3    # "vendorId":I
    .restart local p4    # "productId":I
    .restart local p5    # "deviceToken":Landroid/os/IBinder;
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_31 .. :try_end_3b} :catchall_39

    throw v1
.end method

.method public createVirtualTouchscreen(ILjava/lang/String;IILandroid/os/IBinder;Landroid/graphics/Point;)V
    .registers 16
    .param p1, "displayId"    # I
    .param p2, "deviceName"    # Ljava/lang/String;
    .param p3, "vendorId"    # I
    .param p4, "productId"    # I
    .param p5, "deviceToken"    # Landroid/os/IBinder;
    .param p6, "screenSize"    # Landroid/graphics/Point;

    .line 405
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CREATE_VIRTUAL_DEVICE"

    const-string v2, "Permission required to create a virtual touchscreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 409
    :try_start_c
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplayIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 414
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_3a

    .line 415
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 417
    .local v0, "token":J
    :try_start_1d
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p1

    move-object v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/companion/virtual/InputController;->createTouchscreen(Ljava/lang/String;IILandroid/os/IBinder;ILandroid/graphics/Point;)V
    :try_end_28
    .catchall {:try_start_1d .. :try_end_28} :catchall_2d

    .line 420
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 421
    nop

    .line 422
    return-void

    .line 420
    :catchall_2d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 421
    throw v2

    .line 410
    .end local v0    # "token":J
    :cond_32
    :try_start_32
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Cannot create a virtual touchscreen for a display not associated with this virtual device"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/companion/virtual/VirtualDeviceImpl;
    .end local p1    # "displayId":I
    .end local p2    # "deviceName":Ljava/lang/String;
    .end local p3    # "vendorId":I
    .end local p4    # "productId":I
    .end local p5    # "deviceToken":Landroid/os/IBinder;
    .end local p6    # "screenSize":Landroid/graphics/Point;
    throw v1

    .line 414
    .restart local p0    # "this":Lcom/android/server/companion/virtual/VirtualDeviceImpl;
    .restart local p1    # "displayId":I
    .restart local p2    # "deviceName":Ljava/lang/String;
    .restart local p3    # "vendorId":I
    .restart local p4    # "productId":I
    .restart local p5    # "deviceToken":Landroid/os/IBinder;
    .restart local p6    # "screenSize":Landroid/graphics/Point;
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method createWindowPolicyController()Lcom/android/server/companion/virtual/GenericWindowPolicyController;
    .registers 15

    .line 533
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 534
    :try_start_3
    new-instance v13, Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    const/16 v2, 0x2000

    const/high16 v3, 0x80000

    .line 537
    invoke-direct {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getAllowedUserHandles()Landroid/util/ArraySet;

    move-result-object v4

    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    .line 538
    invoke-virtual {v1}, Landroid/companion/virtual/VirtualDeviceParams;->getAllowedCrossTaskNavigations()Ljava/util/Set;

    move-result-object v5

    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    .line 539
    invoke-virtual {v1}, Landroid/companion/virtual/VirtualDeviceParams;->getBlockedCrossTaskNavigations()Ljava/util/Set;

    move-result-object v6

    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    .line 540
    invoke-virtual {v1}, Landroid/companion/virtual/VirtualDeviceParams;->getAllowedActivities()Ljava/util/Set;

    move-result-object v7

    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    .line 541
    invoke-virtual {v1}, Landroid/companion/virtual/VirtualDeviceParams;->getBlockedActivities()Ljava/util/Set;

    move-result-object v8

    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    .line 542
    invoke-virtual {v1}, Landroid/companion/virtual/VirtualDeviceParams;->getDefaultActivityPolicy()I

    move-result v9

    .line 543
    invoke-direct {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->createListenerAdapter()Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;

    move-result-object v10

    new-instance v11, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda1;

    invoke-direct {v11, p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)V

    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAssociationInfo:Landroid/companion/AssociationInfo;

    .line 545
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    move-result-object v12

    move-object v1, v13

    invoke-direct/range {v1 .. v12}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;-><init>(IILandroid/util/ArraySet;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ILandroid/companion/virtual/VirtualDeviceManager$ActivityListener;Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityBlockedCallback;Ljava/lang/String;)V

    move-object v1, v13

    .line 546
    .local v1, "gwpc":Lcom/android/server/companion/virtual/GenericWindowPolicyController;
    invoke-virtual {v1, p0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->registerRunningAppsChangedListener(Lcom/android/server/companion/virtual/GenericWindowPolicyController$RunningAppsChangedListener;)V

    .line 547
    monitor-exit v0

    return-object v1

    .line 548
    .end local v1    # "gwpc":Lcom/android/server/companion/virtual/GenericWindowPolicyController;
    :catchall_44
    move-exception v1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_44

    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 519
    const-string v0, "  VirtualDevice: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mAssociationId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAssociationInfo:Landroid/companion/AssociationInfo;

    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mParams: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 522
    const-string v0, "    mVirtualDisplayIds: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 523
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 524
    :try_start_41
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplayIds:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_47
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 525
    .local v2, "id":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "      "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 526
    .end local v2    # "id":I
    goto :goto_47

    .line 527
    :cond_6e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mDefaultShowPointerIcon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDefaultShowPointerIcon:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 528
    monitor-exit v0
    :try_end_87
    .catchall {:try_start_41 .. :try_end_87} :catchall_8d

    .line 529
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {v0, p2}, Lcom/android/server/companion/virtual/InputController;->dump(Ljava/io/PrintWriter;)V

    .line 530
    return-void

    .line 528
    :catchall_8d
    move-exception v1

    :try_start_8e
    monitor-exit v0
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    throw v1
.end method

.method public getAssociationId()I
    .registers 2

    .line 203
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAssociationInfo:Landroid/companion/AssociationInfo;

    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getId()I

    move-result v0

    return v0
.end method

.method getBaseVirtualDisplayFlags()I
    .registers 4

    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, "flags":I
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    invoke-virtual {v1}, Landroid/companion/virtual/VirtualDeviceParams;->getLockState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    .line 191
    or-int/lit16 v0, v0, 0x1000

    .line 193
    :cond_c
    return v0
.end method

.method public getCursorPosition(Landroid/os/IBinder;)Landroid/graphics/PointF;
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;

    .line 490
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 492
    .local v0, "binderToken":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {v2, p1}, Lcom/android/server/companion/virtual/InputController;->getCursorPosition(Landroid/os/IBinder;)Landroid/graphics/PointF;

    move-result-object v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 494
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 492
    return-object v2

    .line 494
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 495
    throw v2
.end method

.method getDisplayName()Ljava/lang/CharSequence;
    .registers 2

    .line 198
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAssociationInfo:Landroid/companion/AssociationInfo;

    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method getOwnerUid()I
    .registers 2

    .line 633
    iget v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mOwnerUid:I

    return v0
.end method

.method getVirtualAudioControllerForTesting()Lcom/android/server/companion/virtual/audio/VirtualAudioController;
    .registers 2

    .line 300
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    return-object v0
.end method

.method getWindowPolicyControllersForTesting()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/companion/virtual/GenericWindowPolicyController;",
            ">;"
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mWindowPolicyControllers:Landroid/util/SparseArray;

    return-object v0
.end method

.method isAppRunningOnVirtualDevice(I)Z
    .registers 5
    .param p1, "uid"    # I

    .line 641
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mWindowPolicyControllers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 642
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1c

    .line 643
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mWindowPolicyControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    invoke-virtual {v2, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->containsUid(I)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 644
    const/4 v2, 0x1

    return v2

    .line 642
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 647
    .end local v1    # "i":I
    :cond_1c
    const/4 v1, 0x0

    return v1
.end method

.method isDisplayOwnedByVirtualDevice(I)Z
    .registers 4
    .param p1, "displayId"    # I

    .line 678
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplayIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$close$1$com-android-server-companion-virtual-VirtualDeviceImpl(Ljava/lang/Integer;Landroid/os/PowerManager$WakeLock;)V
    .registers 5
    .param p1, "displayId"    # Ljava/lang/Integer;
    .param p2, "wakeLock"    # Landroid/os/PowerManager$WakeLock;

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VirtualDisplay "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " owned by UID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mOwnerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was not properly released"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VirtualDeviceImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-virtual {p2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 269
    return-void
.end method

.method synthetic lambda$launchPendingIntent$0$com-android-server-companion-virtual-VirtualDeviceImpl(Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;)V
    .registers 5
    .param p1, "pendingTrampoline"    # Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;

    .line 227
    iget-object v0, p1, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;->mResultReceiver:Landroid/os/ResultReceiver;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 229
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPendingTrampolineCallback:Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;

    invoke-interface {v0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;->stopWaitingForPendingTrampoline(Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;)V

    .line 230
    return-void
.end method

.method public launchPendingIntent(ILandroid/app/PendingIntent;Landroid/os/ResultReceiver;)V
    .registers 13
    .param p1, "displayId"    # I
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 209
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplayIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 213
    invoke-virtual {p2}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "Pending intent canceled"

    const-string v3, "VirtualDeviceImpl"

    const/4 v4, 0x0

    if-eqz v0, :cond_28

    .line 215
    :try_start_18
    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->sendPendingIntent(ILandroid/app/PendingIntent;)V

    .line 216
    const/4 v0, 0x0

    invoke-virtual {p3, v0, v4}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_1f
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_18 .. :try_end_1f} :catch_20

    goto :goto_27

    .line 217
    :catch_20
    move-exception v0

    .line 218
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    invoke-static {v3, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 219
    invoke-virtual {p3, v1, v4}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 221
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :goto_27
    goto :goto_52

    .line 223
    :cond_28
    new-instance v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;

    invoke-direct {v0, p2, p3, p1, v4}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;-><init>(Landroid/app/PendingIntent;Landroid/os/ResultReceiver;ILcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline-IA;)V

    .line 225
    .local v0, "pendingTrampoline":Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;
    iget-object v5, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPendingTrampolineCallback:Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;

    invoke-interface {v5, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;->startWaitingForPendingTrampoline(Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;)V

    .line 226
    iget-object v5, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceImpl;Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;)V

    const-wide/16 v7, 0x1388

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 232
    :try_start_42
    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->sendPendingIntent(ILandroid/app/PendingIntent;)V
    :try_end_45
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_42 .. :try_end_45} :catch_46

    .line 238
    goto :goto_52

    .line 233
    :catch_46
    move-exception v5

    .line 234
    .local v5, "e":Landroid/app/PendingIntent$CanceledException;
    invoke-static {v3, v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    invoke-virtual {p3, v1, v4}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 237
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPendingTrampolineCallback:Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;

    invoke-interface {v1, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;->stopWaitingForPendingTrampoline(Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;)V

    .line 240
    .end local v0    # "pendingTrampoline":Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;
    .end local v5    # "e":Landroid/app/PendingIntent$CanceledException;
    :goto_52
    return-void

    .line 210
    :cond_53
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found for this virtual device"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onAudioSessionEnded()V
    .registers 4

    .line 335
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CREATE_VIRTUAL_DEVICE"

    const-string v2, "Permission required to stop audio session"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 339
    :try_start_c
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    if-eqz v1, :cond_16

    .line 340
    invoke-virtual {v1}, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->stopListening()V

    .line 341
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    .line 343
    :cond_16
    monitor-exit v0

    .line 344
    return-void

    .line 343
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public onAudioSessionStarting(ILandroid/companion/virtual/audio/IAudioRoutingCallback;Landroid/companion/virtual/audio/IAudioConfigChangedCallback;)V
    .registers 7
    .param p1, "displayId"    # I
    .param p2, "routingCallback"    # Landroid/companion/virtual/audio/IAudioRoutingCallback;
    .param p3, "configChangedCallback"    # Landroid/companion/virtual/audio/IAudioConfigChangedCallback;

    .line 313
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CREATE_VIRTUAL_DEVICE"

    const-string v2, "Permission required to start audio session"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 317
    :try_start_c
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplayIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 323
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    if-nez v1, :cond_32

    .line 324
    new-instance v1, Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/companion/virtual/audio/VirtualAudioController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    .line 325
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mWindowPolicyControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    .line 326
    .local v1, "gwpc":Lcom/android/server/companion/virtual/GenericWindowPolicyController;
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    invoke-virtual {v2, v1, p2, p3}, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->startListening(Lcom/android/server/companion/virtual/GenericWindowPolicyController;Landroid/companion/virtual/audio/IAudioRoutingCallback;Landroid/companion/virtual/audio/IAudioConfigChangedCallback;)V

    .line 329
    .end local v1    # "gwpc":Lcom/android/server/companion/virtual/GenericWindowPolicyController;
    :cond_32
    monitor-exit v0

    .line 330
    return-void

    .line 318
    :cond_34
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Cannot start audio session for a display not associated with this virtual device"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/companion/virtual/VirtualDeviceImpl;
    .end local p1    # "displayId":I
    .end local p2    # "routingCallback":Landroid/companion/virtual/audio/IAudioRoutingCallback;
    .end local p3    # "configChangedCallback":Landroid/companion/virtual/audio/IAudioConfigChangedCallback;
    throw v1

    .line 329
    .restart local p0    # "this":Lcom/android/server/companion/virtual/VirtualDeviceImpl;
    .restart local p1    # "displayId":I
    .restart local p2    # "routingCallback":Landroid/companion/virtual/audio/IAudioRoutingCallback;
    .restart local p3    # "configChangedCallback":Landroid/companion/virtual/audio/IAudioConfigChangedCallback;
    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_c .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method public onRunningAppsChanged(Landroid/util/ArraySet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 295
    .local p1, "runningUids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mRunningAppsChangedCallback:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 296
    return-void
.end method

.method onVirtualDisplayCreatedLocked(Lcom/android/server/companion/virtual/GenericWindowPolicyController;I)V
    .registers 8
    .param p1, "gwpc"    # Lcom/android/server/companion/virtual/GenericWindowPolicyController;
    .param p2, "displayId"    # I

    .line 552
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 553
    const/4 v1, -0x1

    if-ne p2, v1, :cond_8

    .line 554
    :try_start_6
    monitor-exit v0

    return-void

    .line 556
    :cond_8
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplayIds:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_95

    .line 560
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplayIds:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 562
    invoke-virtual {p1, p2}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->setDisplayId(I)V

    .line 563
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mWindowPolicyControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 565
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    iget-boolean v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDefaultShowPointerIcon:Z

    invoke-virtual {v1, v2, p2}, Lcom/android/server/companion/virtual/InputController;->setShowPointerIcon(ZI)V

    .line 566
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, p2}, Lcom/android/server/companion/virtual/InputController;->setPointerAcceleration(FI)V

    .line 567
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2}, Lcom/android/server/companion/virtual/InputController;->setDisplayEligibilityForPointerCapture(ZI)V

    .line 569
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {v1, p2}, Lcom/android/server/companion/virtual/InputController;->setLocalIme(I)V

    .line 572
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPerDisplayWakelocks:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 573
    const-string v1, "VirtualDeviceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not creating wakelock for displayId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    monitor-exit v0

    return-void

    .line 576
    :cond_64
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 577
    .local v1, "powerManager":Landroid/os/PowerManager;
    const/16 v2, 0xa

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VirtualDeviceImpl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;I)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 580
    .local v2, "wakeLock":Landroid/os/PowerManager$WakeLock;
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPerDisplayWakelocks:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 582
    .end local v1    # "powerManager":Landroid/os/PowerManager;
    .end local v2    # "wakeLock":Landroid/os/PowerManager$WakeLock;
    monitor-exit v0

    .line 583
    return-void

    .line 557
    :cond_95
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Virtual device already has a virtual display with ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/companion/virtual/VirtualDeviceImpl;
    .end local p1    # "gwpc":Lcom/android/server/companion/virtual/GenericWindowPolicyController;
    .end local p2    # "displayId":I
    throw v1

    .line 582
    .restart local p0    # "this":Lcom/android/server/companion/virtual/VirtualDeviceImpl;
    .restart local p1    # "gwpc":Lcom/android/server/companion/virtual/GenericWindowPolicyController;
    .restart local p2    # "displayId":I
    :catchall_ae
    move-exception v1

    monitor-exit v0
    :try_end_b0
    .catchall {:try_start_6 .. :try_end_b0} :catchall_ae

    throw v1
.end method

.method onVirtualDisplayRemovedLocked(I)V
    .registers 7
    .param p1, "displayId"    # I

    .line 613
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 614
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplayIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 618
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPerDisplayWakelocks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager$WakeLock;

    .line 619
    .local v1, "wakeLock":Landroid/os/PowerManager$WakeLock;
    if-eqz v1, :cond_29

    .line 620
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 621
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPerDisplayWakelocks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    :cond_29
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mWindowPolicyControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    .line 624
    .local v2, "gwpc":Lcom/android/server/companion/virtual/GenericWindowPolicyController;
    if-eqz v2, :cond_36

    .line 625
    invoke-virtual {v2, p0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->unregisterRunningAppsChangedListener(Lcom/android/server/companion/virtual/GenericWindowPolicyController$RunningAppsChangedListener;)V

    .line 627
    :cond_36
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplayIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 628
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mWindowPolicyControllers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 629
    .end local v1    # "wakeLock":Landroid/os/PowerManager$WakeLock;
    .end local v2    # "gwpc":Lcom/android/server/companion/virtual/GenericWindowPolicyController;
    monitor-exit v0

    .line 630
    return-void

    .line 615
    :cond_46
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Virtual device doesn\'t have a virtual display with ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/companion/virtual/VirtualDeviceImpl;
    .end local p1    # "displayId":I
    throw v1

    .line 629
    .restart local p0    # "this":Lcom/android/server/companion/virtual/VirtualDeviceImpl;
    .restart local p1    # "displayId":I
    :catchall_5f
    move-exception v1

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_3 .. :try_end_61} :catchall_5f

    throw v1
.end method

.method public sendButtonEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseButtonEvent;)Z
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "event"    # Landroid/hardware/input/VirtualMouseButtonEvent;

    .line 450
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 452
    .local v0, "binderToken":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/companion/virtual/InputController;->sendButtonEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseButtonEvent;)Z

    move-result v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 454
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 452
    return v2

    .line 454
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 455
    throw v2
.end method

.method public sendKeyEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyEvent;)Z
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "event"    # Landroid/hardware/input/VirtualKeyEvent;

    .line 440
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 442
    .local v0, "binderToken":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/companion/virtual/InputController;->sendKeyEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyEvent;)Z

    move-result v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 444
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 442
    return v2

    .line 444
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 445
    throw v2
.end method

.method public sendRelativeEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseRelativeEvent;)Z
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "event"    # Landroid/hardware/input/VirtualMouseRelativeEvent;

    .line 470
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 472
    .local v0, "binderToken":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/companion/virtual/InputController;->sendRelativeEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseRelativeEvent;)Z

    move-result v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 474
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 472
    return v2

    .line 474
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 475
    throw v2
.end method

.method public sendScrollEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseScrollEvent;)Z
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "event"    # Landroid/hardware/input/VirtualMouseScrollEvent;

    .line 480
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 482
    .local v0, "binderToken":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/companion/virtual/InputController;->sendScrollEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseScrollEvent;)Z

    move-result v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 484
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 482
    return v2

    .line 484
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 485
    throw v2
.end method

.method public sendTouchEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualTouchEvent;)Z
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "event"    # Landroid/hardware/input/VirtualTouchEvent;

    .line 460
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 462
    .local v0, "binderToken":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/companion/virtual/InputController;->sendTouchEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualTouchEvent;)Z

    move-result v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 464
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 462
    return v2

    .line 464
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 465
    throw v2
.end method

.method public setShowPointerIcon(Z)V
    .registers 9
    .param p1, "showPointerIcon"    # Z

    .line 500
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CREATE_VIRTUAL_DEVICE"

    const-string v2, "Permission required to unregister this input device"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 506
    .local v0, "binderToken":J
    :try_start_d
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_39

    .line 507
    :try_start_10
    iput-boolean p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDefaultShowPointerIcon:Z

    .line 508
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplayIds:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 509
    .local v4, "displayId":I
    iget-object v5, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    iget-boolean v6, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDefaultShowPointerIcon:Z

    invoke-virtual {v5, v6, v4}, Lcom/android/server/companion/virtual/InputController;->setShowPointerIcon(ZI)V

    .line 510
    .end local v4    # "displayId":I
    goto :goto_18

    .line 511
    :cond_30
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_10 .. :try_end_31} :catchall_36

    .line 513
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 514
    nop

    .line 515
    return-void

    .line 511
    :catchall_36
    move-exception v3

    :try_start_37
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    .end local v0    # "binderToken":J
    .end local p0    # "this":Lcom/android/server/companion/virtual/VirtualDeviceImpl;
    .end local p1    # "showPointerIcon":Z
    :try_start_38
    throw v3
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_39

    .line 513
    .restart local v0    # "binderToken":J
    .restart local p0    # "this":Lcom/android/server/companion/virtual/VirtualDeviceImpl;
    .restart local p1    # "showPointerIcon":Z
    :catchall_39
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 514
    throw v2
.end method

.method showToastWhereUidIsRunning(III)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "resId"    # I
    .param p3, "duration"    # I

    .line 654
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->showToastWhereUidIsRunning(ILjava/lang/String;I)V

    .line 655
    return-void
.end method

.method showToastWhereUidIsRunning(ILjava/lang/String;I)V
    .registers 11
    .param p1, "uid"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "duration"    # I

    .line 661
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 662
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 663
    .local v1, "displayManager":Landroid/hardware/display/DisplayManager;
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mWindowPolicyControllers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 664
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    if-ge v3, v2, :cond_46

    .line 665
    iget-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mWindowPolicyControllers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    invoke-virtual {v4, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->containsUid(I)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 666
    iget-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mWindowPolicyControllers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 667
    .local v4, "displayId":I
    invoke-virtual {v1, v4}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v5

    .line 668
    .local v5, "display":Landroid/view/Display;
    if-eqz v5, :cond_43

    invoke-virtual {v5}, Landroid/view/Display;->isValid()Z

    move-result v6

    if-eqz v6, :cond_43

    .line 669
    iget-object v6, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v5}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 670
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 664
    .end local v4    # "displayId":I
    .end local v5    # "display":Landroid/view/Display;
    :cond_43
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 674
    .end local v1    # "displayManager":Landroid/hardware/display/DisplayManager;
    .end local v2    # "size":I
    .end local v3    # "i":I
    :cond_46
    monitor-exit v0

    .line 675
    return-void

    .line 674
    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method public unregisterInputDevice(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;

    .line 426
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CREATE_VIRTUAL_DEVICE"

    const-string v2, "Permission required to unregister this input device"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 432
    .local v0, "binderToken":J
    :try_start_d
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {v2, p1}, Lcom/android/server/companion/virtual/InputController;->unregisterInputDevice(Landroid/os/IBinder;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_17

    .line 434
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 435
    nop

    .line 436
    return-void

    .line 434
    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 435
    throw v2
.end method
