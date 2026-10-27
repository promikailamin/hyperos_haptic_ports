.class final Lcom/android/server/translation/TranslationManagerServiceImpl;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "TranslationManagerServiceImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;,
        Lcom/android/server/translation/TranslationManagerServiceImpl$TranslationServiceRemoteCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/infra/AbstractPerUserSystemService<",
        "Lcom/android/server/translation/TranslationManagerServiceImpl;",
        "Lcom/android/server/translation/TranslationManagerService;",
        ">;",
        "Landroid/os/IBinder$DeathRecipient;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "TranslationManagerServiceImpl"


# instance fields
.field private final mActiveTranslations:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/os/IRemoteCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mLastActivityTokens:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoteServiceCallback:Lcom/android/server/translation/TranslationManagerServiceImpl$TranslationServiceRemoteCallback;

.field private mRemoteTranslationService:Lcom/android/server/translation/RemoteTranslationService;

.field private mRemoteTranslationServiceInfo:Landroid/content/pm/ServiceInfo;

.field private final mTranslationCapabilityCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/os/IRemoteCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mTranslationServiceInfo:Landroid/service/translation/TranslationServiceInfo;

.field private final mWaitingFinishedCallbackActivities:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mnotifyClientsTranslationCapability(Lcom/android/server/translation/TranslationManagerServiceImpl;Landroid/view/translation/TranslationCapability;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/translation/TranslationManagerServiceImpl;->notifyClientsTranslationCapability(Landroid/view/translation/TranslationCapability;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 79
    const-string v0, "TranslationManagerServiceImpl"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/translation/TranslationManagerServiceImpl;->DEBUG:Z

    return-void
.end method

.method protected constructor <init>(Lcom/android/server/translation/TranslationManagerService;Ljava/lang/Object;IZ)V
    .registers 7
    .param p1, "master"    # Lcom/android/server/translation/TranslationManagerService;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "userId"    # I
    .param p4, "disabled"    # Z

    .line 112
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    .line 97
    new-instance v0, Lcom/android/server/translation/TranslationManagerServiceImpl$TranslationServiceRemoteCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/translation/TranslationManagerServiceImpl$TranslationServiceRemoteCallback;-><init>(Lcom/android/server/translation/TranslationManagerServiceImpl;Lcom/android/server/translation/TranslationManagerServiceImpl$TranslationServiceRemoteCallback-IA;)V

    iput-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mRemoteServiceCallback:Lcom/android/server/translation/TranslationManagerServiceImpl$TranslationServiceRemoteCallback;

    .line 99
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mTranslationCapabilityCallbacks:Landroid/os/RemoteCallbackList;

    .line 101
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mWaitingFinishedCallbackActivities:Landroid/util/ArraySet;

    .line 106
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActiveTranslations:Landroid/util/ArrayMap;

    .line 561
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 113
    invoke-direct {p0}, Lcom/android/server/translation/TranslationManagerServiceImpl;->updateRemoteServiceLocked()V

    .line 114
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 115
    return-void
.end method

.method private createResultForCallback(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 8
    .param p1, "state"    # I
    .param p2, "sourceSpec"    # Landroid/view/translation/TranslationSpec;
    .param p3, "targetSpec"    # Landroid/view/translation/TranslationSpec;
    .param p4, "packageName"    # Ljava/lang/String;

    .line 477
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 478
    .local v0, "result":Landroid/os/Bundle;
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 480
    if-eqz p2, :cond_21

    .line 481
    invoke-virtual {p2}, Landroid/view/translation/TranslationSpec;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v1

    const-string/jumbo v2, "source_locale"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 482
    invoke-virtual {p3}, Landroid/view/translation/TranslationSpec;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v1

    const-string/jumbo v2, "target_locale"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 484
    :cond_21
    const-string/jumbo v1, "package_name"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    return-object v0
.end method

.method private ensureRemoteServiceLocked()Lcom/android/server/translation/RemoteTranslationService;
    .registers 10

    .line 150
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mRemoteTranslationService:Lcom/android/server/translation/RemoteTranslationService;

    if-nez v0, :cond_31

    .line 151
    invoke-virtual {p0}, Lcom/android/server/translation/TranslationManagerServiceImpl;->getComponentNameLocked()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "serviceName":Ljava/lang/String;
    if-nez v0, :cond_1b

    .line 153
    iget-object v1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/translation/TranslationManagerService;

    iget-boolean v1, v1, Lcom/android/server/translation/TranslationManagerService;->verbose:Z

    if-eqz v1, :cond_19

    .line 154
    const-string v1, "TranslationManagerServiceImpl"

    const-string v2, "ensureRemoteServiceLocked(): no service component name."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_19
    const/4 v1, 0x0

    return-object v1

    .line 158
    :cond_1b
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 159
    .local v1, "serviceComponent":Landroid/content/ComponentName;
    new-instance v8, Lcom/android/server/translation/RemoteTranslationService;

    invoke-virtual {p0}, Lcom/android/server/translation/TranslationManagerServiceImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v5, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mUserId:I

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mRemoteServiceCallback:Lcom/android/server/translation/TranslationManagerServiceImpl$TranslationServiceRemoteCallback;

    move-object v2, v8

    move-object v4, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/translation/RemoteTranslationService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;IZLandroid/os/IBinder;)V

    iput-object v8, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mRemoteTranslationService:Lcom/android/server/translation/RemoteTranslationService;

    .line 162
    .end local v0    # "serviceName":Ljava/lang/String;
    .end local v1    # "serviceComponent":Landroid/content/ComponentName;
    :cond_31
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mRemoteTranslationService:Lcom/android/server/translation/RemoteTranslationService;

    return-object v0
.end method

.method private getAppUidByComponentName(Landroid/content/Context;Landroid/content/ComponentName;I)I
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I

    .line 195
    const/4 v0, -0x1

    .line 197
    .local v0, "translatedAppUid":I
    if-eqz p2, :cond_2e

    .line 198
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 199
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 198
    invoke-virtual {v1, v2, v3, p3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_12} :catch_14

    move v0, v1

    goto :goto_2e

    .line 201
    :catch_14
    move-exception v1

    .line 202
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find packageManager for"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TranslationManagerServiceImpl"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 203
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2e
    :goto_2e
    nop

    .line 204
    :goto_2f
    return v0
.end method

.method private getEnabledInputMethods()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 471
    const-class v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    iget v1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mUserId:I

    .line 472
    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->getEnabledInputMethodListAsUser(I)Ljava/util/List;

    move-result-object v0

    .line 471
    return-object v0
.end method

.method private invokeCallback(IILandroid/os/IRemoteCallback;Landroid/os/Bundle;Ljava/util/List;)V
    .registers 12
    .param p1, "callbackSourceUid"    # I
    .param p2, "translatedAppUid"    # I
    .param p3, "callback"    # Landroid/os/IRemoteCallback;
    .param p4, "result"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/os/IRemoteCallback;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)V"
        }
    .end annotation

    .line 491
    .local p5, "enabledInputMethods":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const-string v0, "Failed to invoke UiTranslationStateCallback: "

    const-string v1, "TranslationManagerServiceImpl"

    if-ne p1, p2, :cond_20

    .line 494
    :try_start_6
    invoke-interface {p3, p4}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 497
    goto :goto_1f

    .line 495
    :catch_a
    move-exception v2

    .line 496
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1f
    return-void

    .line 503
    :cond_20
    const/4 v2, 0x0

    .line 504
    .local v2, "isIme":Z
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .line 505
    .local v4, "inputMethod":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne p1, v5, :cond_3d

    .line 506
    const/4 v2, 0x1

    .line 507
    goto :goto_3e

    .line 509
    .end local v4    # "inputMethod":Landroid/view/inputmethod/InputMethodInfo;
    :cond_3d
    goto :goto_25

    .line 511
    :cond_3e
    :goto_3e
    if-nez v2, :cond_41

    .line 512
    return-void

    .line 515
    :cond_41
    :try_start_41
    invoke-interface {p3, p4}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_44} :catch_45

    .line 518
    goto :goto_5a

    .line 516
    :catch_45
    move-exception v3

    .line 517
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_5a
    return-void
.end method

.method private invokeCallbacks(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;I)V
    .registers 10
    .param p1, "state"    # I
    .param p2, "sourceSpec"    # Landroid/view/translation/TranslationSpec;
    .param p3, "targetSpec"    # Landroid/view/translation/TranslationSpec;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "translatedAppUid"    # I

    .line 460
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/translation/TranslationManagerServiceImpl;->createResultForCallback(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 461
    .local v0, "result":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    if-nez v1, :cond_d

    .line 462
    return-void

    .line 464
    :cond_d
    invoke-direct {p0}, Lcom/android/server/translation/TranslationManagerServiceImpl;->getEnabledInputMethods()Ljava/util/List;

    move-result-object v1

    .line 465
    .local v1, "enabledInputMethods":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    iget-object v2, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v3, Lcom/android/server/translation/TranslationManagerServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p5, v0, v1}, Lcom/android/server/translation/TranslationManagerServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/translation/TranslationManagerServiceImpl;ILandroid/os/Bundle;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/BiConsumer;)V

    .line 468
    return-void
.end method

.method private invokeCallbacksIfNecessaryLocked(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;Landroid/os/IBinder;I)V
    .registers 21
    .param p1, "state"    # I
    .param p2, "sourceSpec"    # Landroid/view/translation/TranslationSpec;
    .param p3, "targetSpec"    # Landroid/view/translation/TranslationSpec;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "activityToken"    # Landroid/os/IBinder;
    .param p6, "translatedAppUid"    # I

    .line 337
    move v0, p1

    move-object/from16 v7, p4

    move/from16 v8, p6

    const/4 v1, 0x1

    .line 338
    .local v1, "shouldInvokeCallbacks":Z
    move v2, p1

    .line 340
    .local v2, "stateForCallbackInvocation":I
    move-object v9, p0

    iget-object v3, v9, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActiveTranslations:Landroid/util/ArrayMap;

    move-object/from16 v10, p5

    invoke-virtual {v3, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;

    .line 341
    .local v11, "activeTranslation":Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;
    const-string v3, " packageName="

    const-string v4, " for app with uid="

    const-string v5, "TranslationManagerServiceImpl"

    if-nez v11, :cond_4d

    .line 342
    if-eqz v0, :cond_96

    .line 343
    const/4 v1, 0x0

    .line 344
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Updating to translation state="

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, " but no active translation was found for it"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v12, v1

    move v13, v2

    goto :goto_98

    .line 350
    :cond_4d
    packed-switch v0, :pswitch_data_de

    goto :goto_96

    .line 400
    :pswitch_51
    const/4 v1, 0x0

    move v12, v1

    move v13, v2

    goto :goto_98

    .line 385
    :pswitch_55
    iget-boolean v6, v11, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->isPaused:Z

    if-nez v6, :cond_96

    .line 390
    const/4 v1, 0x0

    move v12, v1

    move v13, v2

    goto :goto_98

    .line 377
    :pswitch_5d
    iget-boolean v6, v11, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->isPaused:Z

    if-eqz v6, :cond_96

    .line 379
    const/4 v1, 0x0

    move v12, v1

    move v13, v2

    goto :goto_98

    .line 352
    :pswitch_65
    iget-object v6, v11, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->sourceSpec:Landroid/view/translation/TranslationSpec;

    invoke-virtual {v6}, Landroid/view/translation/TranslationSpec;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v6

    .line 353
    invoke-virtual/range {p2 .. p2}, Landroid/view/translation/TranslationSpec;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v12

    .line 352
    invoke-virtual {v6, v12}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_87

    iget-object v6, v11, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->targetSpec:Landroid/view/translation/TranslationSpec;

    .line 354
    invoke-virtual {v6}, Landroid/view/translation/TranslationSpec;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v6

    .line 355
    invoke-virtual/range {p3 .. p3}, Landroid/view/translation/TranslationSpec;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v12

    .line 354
    invoke-virtual {v6, v12}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_87

    const/4 v6, 0x1

    goto :goto_88

    :cond_87
    const/4 v6, 0x0

    .line 356
    .local v6, "specsAreIdentical":Z
    :goto_88
    if-eqz v6, :cond_96

    .line 357
    iget-boolean v12, v11, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->isPaused:Z

    if-eqz v12, :cond_92

    .line 364
    const/4 v2, 0x2

    move v12, v1

    move v13, v2

    goto :goto_98

    .line 370
    :cond_92
    const/4 v1, 0x0

    move v12, v1

    move v13, v2

    goto :goto_98

    .line 406
    .end local v6    # "specsAreIdentical":Z
    :cond_96
    :goto_96
    move v12, v1

    move v13, v2

    .end local v1    # "shouldInvokeCallbacks":Z
    .end local v2    # "stateForCallbackInvocation":I
    .local v12, "shouldInvokeCallbacks":Z
    .local v13, "stateForCallbackInvocation":I
    :goto_98
    sget-boolean v1, Lcom/android/server/translation/TranslationManagerServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_cd

    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 408
    if-eqz v12, :cond_a6

    const-string v2, ""

    goto :goto_a8

    :cond_a6
    const-string v2, "NOT "

    :goto_a8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Invoking callbacks for translation state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 407
    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_cd
    if-eqz v12, :cond_dc

    .line 415
    move-object v1, p0

    move v2, v13

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/android/server/translation/TranslationManagerServiceImpl;->invokeCallbacks(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;I)V

    .line 418
    :cond_dc
    return-void

    nop

    :pswitch_data_de
    .packed-switch 0x0
        :pswitch_65
        :pswitch_5d
        :pswitch_55
        :pswitch_51
    .end packed-switch
.end method

.method static synthetic lambda$notifyClientsTranslationCapability$1(Landroid/os/Bundle;Landroid/os/IRemoteCallback;Ljava/lang/Object;)V
    .registers 6
    .param p0, "res"    # Landroid/os/Bundle;
    .param p1, "callback"    # Landroid/os/IRemoteCallback;
    .param p2, "uid"    # Ljava/lang/Object;

    .line 580
    :try_start_0
    invoke-interface {p1, p0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 583
    goto :goto_1d

    .line 581
    :catch_4
    move-exception v0

    .line 582
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to invoke UiTranslationStateCallback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TranslationManagerServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1d
    return-void
.end method

.method private notifyClientsTranslationCapability(Landroid/view/translation/TranslationCapability;)V
    .registers 5
    .param p1, "capability"    # Landroid/view/translation/TranslationCapability;

    .line 576
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 577
    .local v0, "res":Landroid/os/Bundle;
    const-string/jumbo v1, "translation_capabilities"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 578
    iget-object v1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mTranslationCapabilityCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v2, Lcom/android/server/translation/TranslationManagerServiceImpl$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/android/server/translation/TranslationManagerServiceImpl$$ExternalSyntheticLambda1;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/BiConsumer;)V

    .line 585
    return-void
.end method

.method private updateActiveTranslationsLocked(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;Landroid/os/IBinder;I)V
    .registers 21
    .param p1, "state"    # I
    .param p2, "sourceSpec"    # Landroid/view/translation/TranslationSpec;
    .param p3, "targetSpec"    # Landroid/view/translation/TranslationSpec;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "activityToken"    # Landroid/os/IBinder;
    .param p6, "translatedAppUid"    # I

    .line 281
    move-object v7, p0

    move v8, p1

    move-object/from16 v9, p5

    move/from16 v10, p6

    iget-object v0, v7, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActiveTranslations:Landroid/util/ArrayMap;

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;

    .line 282
    .local v11, "activeTranslation":Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;
    const/4 v0, 0x0

    const-string v12, "TranslationManagerServiceImpl"

    packed-switch v8, :pswitch_data_a6

    goto :goto_71

    .line 319
    :pswitch_16
    if-eqz v11, :cond_71

    .line 320
    iget-object v0, v7, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActiveTranslations:Landroid/util/ArrayMap;

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_71

    .line 312
    :pswitch_1e
    if-eqz v11, :cond_71

    .line 313
    iput-boolean v0, v11, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->isPaused:Z

    goto :goto_71

    .line 305
    :pswitch_23
    if-eqz v11, :cond_71

    .line 306
    const/4 v0, 0x1

    iput-boolean v0, v11, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->isPaused:Z

    goto :goto_71

    .line 284
    :pswitch_29
    if-nez v11, :cond_71

    .line 286
    :try_start_2b
    invoke-interface {v9, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2e} :catch_44

    .line 296
    nop

    .line 297
    iget-object v0, v7, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActiveTranslations:Landroid/util/ArrayMap;

    new-instance v13, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;

    const/4 v6, 0x0

    move-object v1, v13

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p6

    move-object/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;-><init>(Landroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;ILjava/lang/String;Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation-IA;)V

    invoke-virtual {v0, v9, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_71

    .line 287
    :catch_44
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 288
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to call linkToDeath for translated app with uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; activity is already dead"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 293
    const/4 v2, 0x3

    move-object v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/android/server/translation/TranslationManagerServiceImpl;->invokeCallbacks(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;I)V

    .line 295
    return-void

    .line 326
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_71
    :goto_71
    sget-boolean v0, Lcom/android/server/translation/TranslationManagerServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_a2

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating to translation state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for app with uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a4

    .line 326
    :cond_a2
    move-object/from16 v1, p4

    .line 331
    :goto_a4
    return-void

    nop

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_29
        :pswitch_23
        :pswitch_1e
        :pswitch_16
    .end packed-switch
.end method

.method private updateRemoteServiceLocked()V
    .registers 3

    .line 140
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mRemoteTranslationService:Lcom/android/server/translation/RemoteTranslationService;

    if-eqz v0, :cond_1c

    .line 141
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/translation/TranslationManagerService;

    iget-boolean v0, v0, Lcom/android/server/translation/TranslationManagerService;->debug:Z

    if-eqz v0, :cond_14

    const-string v0, "TranslationManagerServiceImpl"

    const-string/jumbo v1, "updateRemoteService(): destroying old remote service"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_14
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mRemoteTranslationService:Lcom/android/server/translation/RemoteTranslationService;

    invoke-virtual {v0}, Lcom/android/server/translation/RemoteTranslationService;->unbind()V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mRemoteTranslationService:Lcom/android/server/translation/RemoteTranslationService;

    .line 145
    :cond_1c
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 1

    .line 619
    return-void
.end method

.method public binderDied(Landroid/os/IBinder;)V
    .registers 10
    .param p1, "who"    # Landroid/os/IBinder;

    .line 623
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 624
    :try_start_3
    iget-object v1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mWaitingFinishedCallbackActivities:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 625
    iget-object v1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActiveTranslations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;

    .line 626
    .local v1, "activeTranslation":Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;
    if-eqz v1, :cond_1f

    .line 628
    const/4 v3, 0x3

    iget-object v4, v1, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->sourceSpec:Landroid/view/translation/TranslationSpec;

    iget-object v5, v1, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->targetSpec:Landroid/view/translation/TranslationSpec;

    iget-object v6, v1, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->packageName:Ljava/lang/String;

    iget v7, v1, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->translatedAppUid:I

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/translation/TranslationManagerServiceImpl;->invokeCallbacks(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;I)V

    .line 632
    .end local v1    # "activeTranslation":Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;
    :cond_1f
    monitor-exit v0

    .line 633
    return-void

    .line 632
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public dumpLocked(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .registers 11
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "pw"    # Ljava/io/PrintWriter;

    .line 422
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mLastActivityTokens:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_6f

    .line 423
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;

    .line 424
    .local v0, "activityTokens":Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;
    if-nez v0, :cond_d

    .line 425
    return-void

    .line 427
    :cond_d
    :try_start_d
    new-instance v1, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v1}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_52
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_3a

    .line 428
    .local v1, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_12
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->getApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 429
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->getActivityToken()Landroid/os/IBinder;

    move-result-object v4

    const-string v5, "--dump-dumpable"

    const-string v6, "UiTranslationController"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    .line 428
    invoke-interface {v2, v3, v4, p1, v5}, Landroid/app/IApplicationThread;->dumpActivity(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    .line 434
    invoke-virtual {v1, p2}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;)V
    :try_end_2c
    .catchall {:try_start_12 .. :try_end_2c} :catchall_30

    .line 435
    :try_start_2c
    invoke-virtual {v1}, Lcom/android/internal/os/TransferPipe;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_52
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_2f} :catch_3a

    goto :goto_6d

    .line 427
    :catchall_30
    move-exception v2

    :try_start_31
    invoke-virtual {v1}, Lcom/android/internal/os/TransferPipe;->close()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_39

    :catchall_35
    move-exception v3

    :try_start_36
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "activityTokens":Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;
    .end local p0    # "this":Lcom/android/server/translation/TranslationManagerServiceImpl;
    .end local p1    # "prefix":Ljava/lang/String;
    .end local p2    # "fd":Ljava/io/FileDescriptor;
    .end local p3    # "pw":Ljava/io/PrintWriter;
    :goto_39
    throw v2
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3a} :catch_52
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3a} :catch_3a

    .line 437
    .end local v1    # "tp":Lcom/android/internal/os/TransferPipe;
    .restart local v0    # "activityTokens":Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;
    .restart local p0    # "this":Lcom/android/server/translation/TranslationManagerServiceImpl;
    .restart local p1    # "prefix":Ljava/lang/String;
    .restart local p2    # "fd":Ljava/io/FileDescriptor;
    .restart local p3    # "pw":Ljava/io/PrintWriter;
    :catch_3a
    move-exception v1

    .line 438
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Got a RemoteException while dumping the activity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6e

    .line 435
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_52
    move-exception v1

    .line 436
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Failure while dumping the activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 439
    .end local v1    # "e":Ljava/io/IOException;
    :goto_6d
    nop

    .line 440
    .end local v0    # "activityTokens":Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;
    :goto_6e
    goto :goto_77

    .line 441
    :cond_6f
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 442
    const-string v0, "No requested UiTranslation Activity."

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 444
    :goto_77
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mWaitingFinishedCallbackActivities:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 445
    .local v0, "waitingFinishCallbackSize":I
    if-lez v0, :cond_a9

    .line 446
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 447
    const-string/jumbo v1, "number waiting finish callback activities: "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 448
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 449
    iget-object v1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mWaitingFinishedCallbackActivities:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_91
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 450
    .local v2, "activityToken":Landroid/os/IBinder;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 451
    const-string v3, "activityToken: "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 452
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 453
    .end local v2    # "activityToken":Landroid/os/IBinder;
    goto :goto_91

    .line 455
    :cond_a9
    return-void
.end method

.method public getServiceSettingsActivityLocked()Landroid/content/ComponentName;
    .registers 4

    .line 564
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mTranslationServiceInfo:Landroid/service/translation/TranslationServiceInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 565
    return-object v1

    .line 567
    :cond_6
    invoke-virtual {v0}, Landroid/service/translation/TranslationServiceInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v0

    .line 568
    .local v0, "activityName":Ljava/lang/String;
    if-nez v0, :cond_d

    .line 569
    return-object v1

    .line 571
    :cond_d
    iget-object v1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mTranslationServiceInfo:Landroid/service/translation/TranslationServiceInfo;

    invoke-virtual {v1}, Landroid/service/translation/TranslationServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 572
    .local v1, "packageName":Ljava/lang/String;
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method synthetic lambda$invokeCallbacks$0$com-android-server-translation-TranslationManagerServiceImpl(ILandroid/os/Bundle;Ljava/util/List;Landroid/os/IRemoteCallback;Ljava/lang/Object;)V
    .registers 13
    .param p1, "translatedAppUid"    # I
    .param p2, "result"    # Landroid/os/Bundle;
    .param p3, "enabledInputMethods"    # Ljava/util/List;
    .param p4, "callback"    # Landroid/os/IRemoteCallback;
    .param p5, "uid"    # Ljava/lang/Object;

    .line 466
    move-object v0, p5

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object v1, p0

    move v3, p1

    move-object v4, p4

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/translation/TranslationManagerServiceImpl;->invokeCallback(IILandroid/os/IRemoteCallback;Landroid/os/Bundle;Ljava/util/List;)V

    .line 467
    return-void
.end method

.method protected newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .registers 6
    .param p1, "serviceComponent"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 121
    new-instance v0, Landroid/service/translation/TranslationServiceInfo;

    invoke-virtual {p0}, Lcom/android/server/translation/TranslationManagerServiceImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 122
    invoke-virtual {p0}, Lcom/android/server/translation/TranslationManagerServiceImpl;->isTemporaryServiceSetLocked()Z

    move-result v2

    iget v3, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mUserId:I

    invoke-direct {v0, v1, p1, v2, v3}, Landroid/service/translation/TranslationServiceInfo;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ZI)V

    iput-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mTranslationServiceInfo:Landroid/service/translation/TranslationServiceInfo;

    .line 123
    invoke-virtual {v0}, Landroid/service/translation/TranslationServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mRemoteTranslationServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 124
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mTranslationServiceInfo:Landroid/service/translation/TranslationServiceInfo;

    invoke-virtual {v0}, Landroid/service/translation/TranslationServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method onSessionCreatedLocked(Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;)V
    .registers 5
    .param p1, "translationContext"    # Landroid/view/translation/TranslationContext;
    .param p2, "sessionId"    # I
    .param p3, "resultReceiver"    # Lcom/android/internal/os/IResultReceiver;

    .line 188
    invoke-direct {p0}, Lcom/android/server/translation/TranslationManagerServiceImpl;->ensureRemoteServiceLocked()Lcom/android/server/translation/RemoteTranslationService;

    move-result-object v0

    .line 189
    .local v0, "remoteService":Lcom/android/server/translation/RemoteTranslationService;
    if-eqz v0, :cond_9

    .line 190
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/translation/RemoteTranslationService;->onSessionCreated(Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;)V

    .line 192
    :cond_9
    return-void
.end method

.method onTranslationCapabilitiesRequestLocked(IILandroid/os/ResultReceiver;)V
    .registers 5
    .param p1, "sourceFormat"    # I
    .param p2, "destFormat"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 169
    invoke-direct {p0}, Lcom/android/server/translation/TranslationManagerServiceImpl;->ensureRemoteServiceLocked()Lcom/android/server/translation/RemoteTranslationService;

    move-result-object v0

    .line 170
    .local v0, "remoteService":Lcom/android/server/translation/RemoteTranslationService;
    if-eqz v0, :cond_9

    .line 171
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/translation/RemoteTranslationService;->onTranslationCapabilitiesRequest(IILandroid/os/ResultReceiver;)V

    .line 174
    :cond_9
    return-void
.end method

.method public onTranslationFinishedLocked(ZLandroid/os/IBinder;Landroid/content/ComponentName;)V
    .registers 12
    .param p1, "activityDestroyed"    # Z
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "componentName"    # Landroid/content/ComponentName;

    .line 210
    nop

    .line 211
    invoke-virtual {p0}, Lcom/android/server/translation/TranslationManagerServiceImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/translation/TranslationManagerServiceImpl;->getUserId()I

    move-result v1

    invoke-direct {p0, v0, p3, v1}, Lcom/android/server/translation/TranslationManagerServiceImpl;->getAppUidByComponentName(Landroid/content/Context;Landroid/content/ComponentName;I)I

    move-result v0

    .line 212
    .local v0, "translatedAppUid":I
    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "packageName":Ljava/lang/String;
    if-eqz p1, :cond_22

    .line 217
    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move-object v6, v1

    move v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/translation/TranslationManagerServiceImpl;->invokeCallbacks(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;I)V

    .line 220
    iget-object v2, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mWaitingFinishedCallbackActivities:Landroid/util/ArraySet;

    invoke-virtual {v2, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_38

    .line 222
    :cond_22
    iget-object v2, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mWaitingFinishedCallbackActivities:Landroid/util/ArraySet;

    invoke-virtual {v2, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 223
    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move-object v6, v1

    move v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/translation/TranslationManagerServiceImpl;->invokeCallbacks(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;I)V

    .line 226
    iget-object v2, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mWaitingFinishedCallbackActivities:Landroid/util/ArraySet;

    invoke-virtual {v2, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 229
    :cond_38
    :goto_38
    return-void
.end method

.method public registerTranslationCapabilityCallback(Landroid/os/IRemoteCallback;I)V
    .registers 5
    .param p1, "callback"    # Landroid/os/IRemoteCallback;
    .param p2, "sourceUid"    # I

    .line 177
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mTranslationCapabilityCallbacks:Landroid/os/RemoteCallbackList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 178
    invoke-direct {p0}, Lcom/android/server/translation/TranslationManagerServiceImpl;->ensureRemoteServiceLocked()Lcom/android/server/translation/RemoteTranslationService;

    .line 179
    return-void
.end method

.method public registerUiTranslationStateCallbackLocked(Landroid/os/IRemoteCallback;I)V
    .registers 16
    .param p1, "callback"    # Landroid/os/IRemoteCallback;
    .param p2, "sourceUid"    # I

    .line 523
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 525
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActiveTranslations:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_12

    .line 526
    return-void

    .line 530
    :cond_12
    invoke-direct {p0}, Lcom/android/server/translation/TranslationManagerServiceImpl;->getEnabledInputMethods()Ljava/util/List;

    move-result-object v0

    .line 531
    .local v0, "enabledInputMethods":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v1, 0x0

    move v7, v1

    .local v7, "i":I
    :goto_18
    iget-object v1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActiveTranslations:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v7, v1, :cond_95

    .line 532
    iget-object v1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActiveTranslations:Landroid/util/ArrayMap;

    invoke-virtual {v1, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;

    .line 533
    .local v8, "activeTranslation":Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;
    iget v9, v8, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->translatedAppUid:I

    .line 534
    .local v9, "translatedAppUid":I
    iget-object v10, v8, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->packageName:Ljava/lang/String;

    .line 535
    .local v10, "packageName":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/translation/TranslationManagerServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_6a

    .line 536
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Triggering callback for sourceUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for translated app with uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isPaused="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v8, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->isPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TranslationManagerServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_6a
    const/4 v1, 0x0

    iget-object v2, v8, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->sourceSpec:Landroid/view/translation/TranslationSpec;

    iget-object v3, v8, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->targetSpec:Landroid/view/translation/TranslationSpec;

    invoke-direct {p0, v1, v2, v3, v10}, Lcom/android/server/translation/TranslationManagerServiceImpl;->createResultForCallback(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    .line 544
    .local v11, "startedResult":Landroid/os/Bundle;
    move-object v1, p0

    move v2, p2

    move v3, v9

    move-object v4, p1

    move-object v5, v11

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/translation/TranslationManagerServiceImpl;->invokeCallback(IILandroid/os/IRemoteCallback;Landroid/os/Bundle;Ljava/util/List;)V

    .line 546
    iget-boolean v1, v8, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->isPaused:Z

    if-eqz v1, :cond_92

    .line 548
    iget-object v1, v8, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->sourceSpec:Landroid/view/translation/TranslationSpec;

    iget-object v2, v8, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->targetSpec:Landroid/view/translation/TranslationSpec;

    const/4 v3, 0x1

    invoke-direct {p0, v3, v1, v2, v10}, Lcom/android/server/translation/TranslationManagerServiceImpl;->createResultForCallback(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    .line 551
    .local v12, "pausedResult":Landroid/os/Bundle;
    move-object v1, p0

    move v2, p2

    move v3, v9

    move-object v4, p1

    move-object v5, v12

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/translation/TranslationManagerServiceImpl;->invokeCallback(IILandroid/os/IRemoteCallback;Landroid/os/Bundle;Ljava/util/List;)V

    .line 531
    .end local v8    # "activeTranslation":Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;
    .end local v9    # "translatedAppUid":I
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v11    # "startedResult":Landroid/os/Bundle;
    .end local v12    # "pausedResult":Landroid/os/Bundle;
    :cond_92
    add-int/lit8 v7, v7, 0x1

    goto :goto_18

    .line 555
    .end local v7    # "i":I
    :cond_95
    return-void
.end method

.method public unregisterTranslationCapabilityCallback(Landroid/os/IRemoteCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/os/IRemoteCallback;

    .line 182
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mTranslationCapabilityCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 183
    return-void
.end method

.method public unregisterUiTranslationStateCallback(Landroid/os/IRemoteCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/os/IRemoteCallback;

    .line 558
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 559
    return-void
.end method

.method protected updateLocked(Z)Z
    .registers 3
    .param p1, "disabled"    # Z

    .line 130
    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateLocked(Z)Z

    move-result v0

    .line 131
    .local v0, "enabledChanged":Z
    invoke-direct {p0}, Lcom/android/server/translation/TranslationManagerServiceImpl;->updateRemoteServiceLocked()V

    .line 132
    return v0
.end method

.method public updateUiTranslationStateLocked(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/os/IBinder;ILandroid/view/translation/UiTranslationSpec;)V
    .registers 24
    .param p1, "state"    # I
    .param p2, "sourceSpec"    # Landroid/view/translation/TranslationSpec;
    .param p3, "targetSpec"    # Landroid/view/translation/TranslationSpec;
    .param p5, "token"    # Landroid/os/IBinder;
    .param p6, "taskId"    # I
    .param p7, "uiTranslationSpec"    # Landroid/view/translation/UiTranslationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/translation/TranslationSpec;",
            "Landroid/view/translation/TranslationSpec;",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Landroid/os/IBinder;",
            "I",
            "Landroid/view/translation/UiTranslationSpec;",
            ")V"
        }
    .end annotation

    .line 240
    .local p4, "viewIds":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p5

    move/from16 v11, p6

    iget-object v0, v8, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 241
    invoke-virtual {v0, v11, v10}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getAttachedNonFinishingActivityForTask(ILandroid/os/IBinder;)Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;

    move-result-object v12

    .line 242
    .local v12, "candidateActivityTokens":Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;
    const-string v13, "TranslationManagerServiceImpl"

    if-nez v12, :cond_3d

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown activity or it was finished to query for update translation state for token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for state= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    return-void

    .line 248
    :cond_3d
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v12}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, v8, Lcom/android/server/translation/TranslationManagerServiceImpl;->mLastActivityTokens:Ljava/lang/ref/WeakReference;

    .line 249
    const/4 v0, 0x3

    if-ne v9, v0, :cond_4c

    .line 250
    iget-object v0, v8, Lcom/android/server/translation/TranslationManagerServiceImpl;->mWaitingFinishedCallbackActivities:Landroid/util/ArraySet;

    invoke-virtual {v0, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 252
    :cond_4c
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->getActivityToken()Landroid/os/IBinder;

    move-result-object v14

    .line 254
    .local v14, "activityToken":Landroid/os/IBinder;
    :try_start_50
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->getApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v1

    move-object v2, v14

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p7

    invoke-interface/range {v1 .. v7}, Landroid/app/IApplicationThread;->updateUiTranslationState(Landroid/os/IBinder;ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/view/translation/UiTranslationSpec;)V
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_62} :catch_63

    .line 259
    goto :goto_7a

    .line 257
    :catch_63
    move-exception v0

    .line 258
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update UiTranslationState fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_7a
    iget-object v0, v8, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, v14}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getActivityName(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v0

    .line 262
    .local v0, "componentName":Landroid/content/ComponentName;
    nop

    .line 263
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/translation/TranslationManagerServiceImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/translation/TranslationManagerServiceImpl;->getUserId()I

    move-result v2

    invoke-direct {v8, v1, v0, v2}, Lcom/android/server/translation/TranslationManagerServiceImpl;->getAppUidByComponentName(Landroid/content/Context;Landroid/content/ComponentName;I)I

    move-result v13

    .line 264
    .local v13, "translatedAppUid":I
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 266
    .local v15, "packageName":Ljava/lang/String;
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v15

    move-object v6, v14

    move v7, v13

    invoke-direct/range {v1 .. v7}, Lcom/android/server/translation/TranslationManagerServiceImpl;->invokeCallbacksIfNecessaryLocked(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;Landroid/os/IBinder;I)V

    .line 268
    invoke-direct/range {v1 .. v7}, Lcom/android/server/translation/TranslationManagerServiceImpl;->updateActiveTranslationsLocked(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;Landroid/os/IBinder;I)V

    .line 270
    return-void
.end method
