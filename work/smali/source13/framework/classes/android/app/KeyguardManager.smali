.class public Landroid/app/KeyguardManager;
.super Ljava/lang/Object;
.source "KeyguardManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/KeyguardManager$KeyguardLockedStateListener;,
        Landroid/app/KeyguardManager$WeakEscrowTokenRemovedListener;,
        Landroid/app/KeyguardManager$WeakEscrowTokenActivatedListener;,
        Landroid/app/KeyguardManager$KeyguardDismissCallback;,
        Landroid/app/KeyguardManager$OnKeyguardExitResult;,
        Landroid/app/KeyguardManager$KeyguardLock;,
        Landroid/app/KeyguardManager$LockTypes;
    }
.end annotation


# static fields
.field public static final greylist-max-o ACTION_CONFIRM_DEVICE_CREDENTIAL:Ljava/lang/String; = "android.app.action.CONFIRM_DEVICE_CREDENTIAL"

.field public static final greylist-max-o ACTION_CONFIRM_DEVICE_CREDENTIAL_WITH_USER:Ljava/lang/String; = "android.app.action.CONFIRM_DEVICE_CREDENTIAL_WITH_USER"

.field public static final greylist-max-o ACTION_CONFIRM_FRP_CREDENTIAL:Ljava/lang/String; = "android.app.action.CONFIRM_FRP_CREDENTIAL"

.field public static final greylist-max-o EXTRA_ALTERNATE_BUTTON_LABEL:Ljava/lang/String; = "android.app.extra.ALTERNATE_BUTTON_LABEL"

.field public static final greylist-max-o EXTRA_DESCRIPTION:Ljava/lang/String; = "android.app.extra.DESCRIPTION"

.field public static final blacklist EXTRA_DISALLOW_BIOMETRICS_IF_POLICY_EXISTS:Ljava/lang/String; = "check_dpm"

.field public static final greylist-max-o EXTRA_TITLE:Ljava/lang/String; = "android.app.extra.TITLE"

.field public static final whitelist PASSWORD:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PATTERN:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PIN:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o RESULT_ALTERNATE:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "KeyguardManager"


# instance fields
.field private final greylist-max-o mAm:Landroid/app/IActivityManager;

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final blacklist mIKeyguardLockedStateListener:Lcom/android/internal/policy/IKeyguardLockedStateListener;

.field private final blacklist mKeyguardLockedStateListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/KeyguardManager$KeyguardLockedStateListener;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/KeyguardManager$WeakEscrowTokenRemovedListener;",
            "Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final blacklist mNotificationManager:Landroid/app/INotificationManager;

.field private final greylist-max-o mTrustManager:Landroid/app/trust/ITrustManager;

.field private final greylist-max-o mWM:Landroid/view/IWindowManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/app/KeyguardManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/app/KeyguardManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKeyguardLockedStateListeners(Landroid/app/KeyguardManager;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Landroid/app/KeyguardManager;->mKeyguardLockedStateListeners:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWM(Landroid/app/KeyguardManager;)Landroid/view/IWindowManager;
    .registers 1

    iget-object p0, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    return-object p0
.end method

.method constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/KeyguardManager;->mListeners:Landroid/util/ArrayMap;

    .line 187
    new-instance v0, Landroid/app/KeyguardManager$1;

    invoke-direct {v0, p0}, Landroid/app/KeyguardManager$1;-><init>(Landroid/app/KeyguardManager;)V

    iput-object v0, p0, Landroid/app/KeyguardManager;->mIKeyguardLockedStateListener:Lcom/android/internal/policy/IKeyguardLockedStateListener;

    .line 197
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/KeyguardManager;->mKeyguardLockedStateListeners:Landroid/util/ArrayMap;

    .line 519
    iput-object p1, p0, Landroid/app/KeyguardManager;->mContext:Landroid/content/Context;

    .line 520
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/KeyguardManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 521
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    .line 522
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/KeyguardManager;->mAm:Landroid/app/IActivityManager;

    .line 523
    nop

    .line 524
    const-string/jumbo v0, "trust"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 523
    invoke-static {v0}, Landroid/app/trust/ITrustManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/ITrustManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/KeyguardManager;->mTrustManager:Landroid/app/trust/ITrustManager;

    .line 525
    nop

    .line 526
    const-string/jumbo v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 525
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/KeyguardManager;->mNotificationManager:Landroid/app/INotificationManager;

    .line 527
    return-void
.end method

.method private blacklist checkInitialLockMethodUsage()Z
    .registers 3

    .line 762
    const-string v0, "android.permission.SET_INITIAL_LOCK"

    invoke-direct {p0, v0}, Landroid/app/KeyguardManager;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 765
    const/4 v0, 0x1

    return v0

    .line 763
    :cond_a
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_INITIAL_LOCK permission."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist createLockscreenCredential(I[B)Lcom/android/internal/widget/LockscreenCredential;
    .registers 6
    .param p1, "lockType"    # I
    .param p2, "password"    # [B

    .line 1077
    if-nez p2, :cond_7

    .line 1078
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    return-object v0

    .line 1080
    :cond_7
    packed-switch p1, :pswitch_data_48

    .line 1092
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown lock type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1088
    :pswitch_23
    nop

    .line 1089
    invoke-static {p2}, Lcom/android/internal/widget/LockPatternUtils;->byteArrayToPattern([B)Ljava/util/List;

    move-result-object v0

    .line 1090
    .local v0, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-static {v0}, Lcom/android/internal/widget/LockscreenCredential;->createPattern(Ljava/util/List;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    return-object v1

    .line 1085
    .end local v0    # "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    :pswitch_2d
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    .line 1086
    .local v0, "pinStr":Ljava/lang/CharSequence;
    invoke-static {v0}, Lcom/android/internal/widget/LockscreenCredential;->createPin(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    return-object v1

    .line 1082
    .end local v0    # "pinStr":Ljava/lang/CharSequence;
    :pswitch_37
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1083
    .local v0, "passwordStr":Ljava/lang/CharSequence;
    invoke-static {v0}, Lcom/android/internal/widget/LockscreenCredential;->createPassword(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_37
        :pswitch_2d
        :pswitch_23
    .end packed-switch
.end method

.method private greylist-max-o getSettingsPackageForIntent(Landroid/content/Intent;)Ljava/lang/String;
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 375
    iget-object v0, p0, Landroid/app/KeyguardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 376
    const/high16 v1, 0x100000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 377
    .local v0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 378
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object v2

    .line 381
    .end local v1    # "i":I
    :cond_1e
    const-string v1, "com.android.settings"

    return-object v1
.end method

.method private blacklist hasPermission(Ljava/lang/String;)Z
    .registers 3
    .param p1, "permission"    # Ljava/lang/String;

    .line 769
    iget-object v0, p0, Landroid/app/KeyguardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method


# virtual methods
.method public whitelist addKeyguardLockedStateListener(Ljava/util/concurrent/Executor;Landroid/app/KeyguardManager$KeyguardLockedStateListener;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/app/KeyguardManager$KeyguardLockedStateListener;

    .line 1118
    iget-object v0, p0, Landroid/app/KeyguardManager;->mKeyguardLockedStateListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1119
    :try_start_3
    iget-object v1, p0, Landroid/app/KeyguardManager;->mKeyguardLockedStateListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    iget-object v1, p0, Landroid/app/KeyguardManager;->mKeyguardLockedStateListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_13

    .line 1121
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_23

    return-void

    .line 1124
    :cond_13
    :try_start_13
    iget-object v1, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    iget-object v2, p0, Landroid/app/KeyguardManager;->mIKeyguardLockedStateListener:Lcom/android/internal/policy/IKeyguardLockedStateListener;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->addKeyguardLockedStateListener(Lcom/android/internal/policy/IKeyguardLockedStateListener;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1a} :catch_1d
    .catchall {:try_start_13 .. :try_end_1a} :catchall_23

    .line 1127
    nop

    .line 1128
    :try_start_1b
    monitor-exit v0

    .line 1129
    return-void

    .line 1125
    :catch_1d
    move-exception v1

    .line 1126
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/app/KeyguardManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "listener":Landroid/app/KeyguardManager$KeyguardLockedStateListener;
    throw v2

    .line 1128
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/KeyguardManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "listener":Landroid/app/KeyguardManager$KeyguardLockedStateListener;
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_23

    throw v1
.end method

.method public whitelist addWeakEscrowToken([BLandroid/os/UserHandle;Ljava/util/concurrent/Executor;Landroid/app/KeyguardManager$WeakEscrowTokenActivatedListener;)J
    .registers 9
    .param p1, "token"    # [B
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "listener"    # Landroid/app/KeyguardManager$WeakEscrowTokenActivatedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 897
    const-string v0, "Token cannot be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 898
    const-string v0, "User cannot be null."

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 899
    const-string v0, "Executor cannot be null."

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 900
    const-string v0, "Listener cannot be null."

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 901
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 902
    .local v0, "userId":I
    new-instance v1, Landroid/app/KeyguardManager$4;

    invoke-direct {v1, p0, p3, p4}, Landroid/app/KeyguardManager$4;-><init>(Landroid/app/KeyguardManager;Ljava/util/concurrent/Executor;Landroid/app/KeyguardManager$WeakEscrowTokenActivatedListener;)V

    .line 916
    .local v1, "internalListener":Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener;
    iget-object v2, p0, Landroid/app/KeyguardManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->addWeakEscrowToken([BILcom/android/internal/widget/IWeakEscrowTokenActivatedListener;)J

    move-result-wide v2

    return-wide v2
.end method

.method public blacklist checkLock(I[B)Z
    .registers 7
    .param p1, "lockType"    # I
    .param p2, "password"    # [B

    .line 1065
    invoke-direct {p0, p1, p2}, Landroid/app/KeyguardManager;->createLockscreenCredential(I[B)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    .line 1067
    .local v0, "credential":Lcom/android/internal/widget/LockscreenCredential;
    iget-object v1, p0, Landroid/app/KeyguardManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Landroid/app/KeyguardManager;->mContext:Landroid/content/Context;

    .line 1068
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 1067
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->verifyCredential(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    .line 1069
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    if-nez v1, :cond_14

    .line 1070
    return v3

    .line 1072
    :cond_14
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    if-nez v2, :cond_1b

    const/4 v3, 0x1

    :cond_1b
    return v3
.end method

.method public whitelist createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .registers 5
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "description"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 213
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 214
    :cond_8
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.CONFIRM_DEVICE_CREDENTIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 215
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.app.extra.TITLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 216
    const-string v1, "android.app.extra.DESCRIPTION"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 219
    invoke-direct {p0, v0}, Landroid/app/KeyguardManager;->getSettingsPackageForIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    return-object v0
.end method

.method public greylist-max-o createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;
    .registers 6
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "description"    # Ljava/lang/CharSequence;
    .param p3, "userId"    # I

    .line 235
    invoke-virtual {p0, p3}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 236
    :cond_8
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.CONFIRM_DEVICE_CREDENTIAL_WITH_USER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 237
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.app.extra.TITLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 238
    const-string v1, "android.app.extra.DESCRIPTION"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 239
    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 242
    invoke-direct {p0, v0}, Landroid/app/KeyguardManager;->getSettingsPackageForIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    return-object v0
.end method

.method public blacklist createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)Landroid/content/Intent;
    .registers 7
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "description"    # Ljava/lang/CharSequence;
    .param p3, "userId"    # I
    .param p4, "disallowBiometricsIfPolicyExists"    # Z

    .line 263
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v0

    .line 264
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_b

    .line 265
    const-string v1, "check_dpm"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 268
    :cond_b
    return-object v0
.end method

.method public whitelist createConfirmFactoryResetCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .registers 9
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "description"    # Ljava/lang/CharSequence;
    .param p3, "alternateButtonLabel"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 292
    iget-object v0, p0, Landroid/app/KeyguardManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->frpCredentialEnabled(Landroid/content/Context;)Z

    move-result v0

    const-string/jumbo v1, "not supported on this device"

    const-string v2, "KeyguardManager"

    if-eqz v0, :cond_74

    .line 298
    iget-object v0, p0, Landroid/app/KeyguardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const-string v4, "device_provisioned"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_66

    .line 306
    :try_start_1c
    const-string/jumbo v0, "persistent_data_block"

    .line 307
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 306
    invoke-static {v0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/persistentdata/IPersistentDataBlockService;

    move-result-object v0

    .line 308
    .local v0, "pdb":Landroid/service/persistentdata/IPersistentDataBlockService;
    if-eqz v0, :cond_55

    .line 314
    invoke-interface {v0}, Landroid/service/persistentdata/IPersistentDataBlockService;->hasFrpCredentialHandle()Z

    move-result v1

    if-nez v1, :cond_36

    .line 315
    const-string v1, "The persistent data block does not have a factory reset credential."

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_34} :catch_60

    .line 316
    const/4 v1, 0x0

    return-object v1

    .line 320
    .end local v0    # "pdb":Landroid/service/persistentdata/IPersistentDataBlockService;
    :cond_36
    nop

    .line 322
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.CONFIRM_FRP_CREDENTIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 323
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.app.extra.TITLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 324
    const-string v1, "android.app.extra.DESCRIPTION"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 325
    const-string v1, "android.app.extra.ALTERNATE_BUTTON_LABEL"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 328
    invoke-direct {p0, v0}, Landroid/app/KeyguardManager;->getSettingsPackageForIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    return-object v0

    .line 309
    .local v0, "pdb":Landroid/service/persistentdata/IPersistentDataBlockService;
    :cond_55
    :try_start_55
    const-string v3, "No persistent data block service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/KeyguardManager;
    .end local p1    # "title":Ljava/lang/CharSequence;
    .end local p2    # "description":Ljava/lang/CharSequence;
    .end local p3    # "alternateButtonLabel":Ljava/lang/CharSequence;
    throw v2
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_60} :catch_60

    .line 318
    .end local v0    # "pdb":Landroid/service/persistentdata/IPersistentDataBlockService;
    .restart local p0    # "this":Landroid/app/KeyguardManager;
    .restart local p1    # "title":Ljava/lang/CharSequence;
    .restart local p2    # "description":Ljava/lang/CharSequence;
    .restart local p3    # "alternateButtonLabel":Ljava/lang/CharSequence;
    :catch_60
    move-exception v0

    .line 319
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 300
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_66
    const-string v0, "Factory reset credential cannot be verified after provisioning."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "must not be provisioned yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_74
    const-string v0, "Factory reset credentials not supported."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist exitKeyguardSecurely(Landroid/app/KeyguardManager$OnKeyguardExitResult;)V
    .registers 4
    .param p1, "callback"    # Landroid/app/KeyguardManager$OnKeyguardExitResult;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 749
    :try_start_0
    iget-object v0, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    new-instance v1, Landroid/app/KeyguardManager$3;

    invoke-direct {v1, p0, p1}, Landroid/app/KeyguardManager$3;-><init>(Landroid/app/KeyguardManager;Landroid/app/KeyguardManager$OnKeyguardExitResult;)V

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 758
    goto :goto_c

    .line 756
    :catch_b
    move-exception v0

    .line 759
    :goto_c
    return-void
.end method

.method public whitelist getMinLockLength(ZI)I
    .registers 7
    .param p1, "isPin"    # Z
    .param p2, "complexity"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 816
    invoke-direct {p0}, Landroid/app/KeyguardManager;->checkInitialLockMethodUsage()Z

    move-result v0

    if-nez v0, :cond_8

    .line 817
    const/4 v0, -0x1

    return v0

    .line 819
    :cond_8
    invoke-static {p2}, Landroid/app/admin/PasswordMetrics;->sanitizeComplexityLevel(I)I

    move-result p2

    .line 821
    iget-object v0, p0, Landroid/app/KeyguardManager;->mContext:Landroid/content/Context;

    .line 822
    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 823
    .local v0, "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    iget-object v1, p0, Landroid/app/KeyguardManager;->mContext:Landroid/content/Context;

    .line 824
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumMetrics(I)Landroid/app/admin/PasswordMetrics;

    move-result-object v1

    .line 825
    .local v1, "adminMetrics":Landroid/app/admin/PasswordMetrics;
    nop

    .line 826
    invoke-static {v1, p1, p2}, Landroid/app/admin/PasswordMetrics;->applyComplexity(Landroid/app/admin/PasswordMetrics;ZI)Landroid/app/admin/PasswordMetrics;

    move-result-object v2

    .line 827
    .local v2, "minMetrics":Landroid/app/admin/PasswordMetrics;
    iget v3, v2, Landroid/app/admin/PasswordMetrics;->length:I

    return v3
.end method

.method public whitelist getPrivateNotificationsAllowed()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 368
    :try_start_0
    iget-object v0, p0, Landroid/app/KeyguardManager;->mNotificationManager:Landroid/app/INotificationManager;

    invoke-interface {v0}, Landroid/app/INotificationManager;->getPrivateNotificationsAllowed()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 369
    :catch_7
    move-exception v0

    .line 370
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist inKeyguardRestrictedInputMode()Z
    .registers 2

    .line 588
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    return v0
.end method

.method public whitelist isDeviceLocked()Z
    .registers 2

    .line 599
    iget-object v0, p0, Landroid/app/KeyguardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-p isDeviceLocked(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 610
    :try_start_0
    iget-object v0, p0, Landroid/app/KeyguardManager;->mTrustManager:Landroid/app/trust/ITrustManager;

    iget-object v1, p0, Landroid/app/KeyguardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssociatedDisplayId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/trust/ITrustManager;->isDeviceLocked(II)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 611
    :catch_d
    move-exception v0

    .line 612
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isDeviceSecure()Z
    .registers 2

    .line 625
    iget-object v0, p0, Landroid/app/KeyguardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-r isDeviceSecure(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 636
    :try_start_0
    iget-object v0, p0, Landroid/app/KeyguardManager;->mTrustManager:Landroid/app/trust/ITrustManager;

    iget-object v1, p0, Landroid/app/KeyguardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssociatedDisplayId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/trust/ITrustManager;->isDeviceSecure(II)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 637
    :catch_d
    move-exception v0

    .line 638
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isKeyguardLocked()Z
    .registers 3

    .line 557
    :try_start_0
    iget-object v0, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->isKeyguardLocked()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 558
    :catch_7
    move-exception v0

    .line 559
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isKeyguardSecure()Z
    .registers 3

    .line 573
    :try_start_0
    iget-object v0, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    iget-object v1, p0, Landroid/app/KeyguardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->isKeyguardSecure(I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 574
    :catch_d
    move-exception v0

    .line 575
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isValidLockPasswordComplexity(I[BI)Z
    .registers 10
    .param p1, "lockType"    # I
    .param p2, "password"    # [B
    .param p3, "complexity"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 788
    invoke-direct {p0}, Landroid/app/KeyguardManager;->checkInitialLockMethodUsage()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 789
    return v1

    .line 791
    :cond_8
    invoke-static {p3}, Landroid/app/admin/PasswordMetrics;->sanitizeComplexityLevel(I)I

    move-result p3

    .line 793
    iget-object v0, p0, Landroid/app/KeyguardManager;->mContext:Landroid/content/Context;

    .line 794
    const-string v2, "device_policy"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 795
    .local v0, "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    iget-object v2, p0, Landroid/app/KeyguardManager;->mContext:Landroid/content/Context;

    .line 796
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumMetrics(I)Landroid/app/admin/PasswordMetrics;

    move-result-object v2

    .line 798
    .local v2, "adminMetrics":Landroid/app/admin/PasswordMetrics;
    const/4 v3, 0x1

    if-eqz p1, :cond_25

    move v4, v3

    goto :goto_26

    :cond_25
    move v4, v1

    .line 800
    .local v4, "isPinOrPattern":Z
    :goto_26
    invoke-static {v2, p3, v4, p2}, Landroid/app/admin/PasswordMetrics;->validatePassword(Landroid/app/admin/PasswordMetrics;IZ[B)Ljava/util/List;

    move-result-object v5

    .line 801
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_31

    move v1, v3

    .line 800
    :cond_31
    return v1
.end method

.method public whitelist isWeakEscrowTokenActive(JLandroid/os/UserHandle;)Z
    .registers 6
    .param p1, "handle"    # J
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 942
    const-string v0, "User cannot be null."

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 943
    iget-object v0, p0, Landroid/app/KeyguardManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/widget/LockPatternUtils;->isWeakEscrowTokenActive(JI)Z

    move-result v0

    return v0
.end method

.method public whitelist isWeakEscrowTokenValid(J[BLandroid/os/UserHandle;)Z
    .registers 7
    .param p1, "handle"    # J
    .param p3, "token"    # [B
    .param p4, "user"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 955
    const-string v0, "Token cannot be null."

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 956
    const-string v0, "User cannot be null."

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 957
    iget-object v0, p0, Landroid/app/KeyguardManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/internal/widget/LockPatternUtils;->isWeakEscrowTokenValid(J[BI)Z

    move-result v0

    return v0
.end method

.method public whitelist newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 547
    new-instance v0, Landroid/app/KeyguardManager$KeyguardLock;

    invoke-direct {v0, p0, p1}, Landroid/app/KeyguardManager$KeyguardLock;-><init>(Landroid/app/KeyguardManager;Ljava/lang/String;)V

    return-object v0
.end method

.method public whitelist registerWeakEscrowTokenRemovedListener(Ljava/util/concurrent/Executor;Landroid/app/KeyguardManager$WeakEscrowTokenRemovedListener;)Z
    .registers 8
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/app/KeyguardManager$WeakEscrowTokenRemovedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 972
    const-string v0, "Listener cannot be null."

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 973
    const-string v0, "Executor cannot be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 974
    iget-object v0, p0, Landroid/app/KeyguardManager;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const-string v4, "Listener already registered: %s"

    invoke-static {v0, v4, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 976
    new-instance v0, Landroid/app/KeyguardManager$5;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/KeyguardManager$5;-><init>(Landroid/app/KeyguardManager;Ljava/util/concurrent/Executor;Landroid/app/KeyguardManager$WeakEscrowTokenRemovedListener;)V

    .line 989
    .local v0, "internalListener":Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;
    iget-object v2, p0, Landroid/app/KeyguardManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/LockPatternUtils;->registerWeakEscrowTokenRemovedListener(Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 990
    iget-object v2, p0, Landroid/app/KeyguardManager;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    return v1

    .line 993
    :cond_2f
    const-string v1, "KeyguardManager"

    const-string v2, "Listener failed to register"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    return v3
.end method

.method public whitelist removeKeyguardLockedStateListener(Landroid/app/KeyguardManager$KeyguardLockedStateListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/app/KeyguardManager$KeyguardLockedStateListener;

    .line 1141
    iget-object v0, p0, Landroid/app/KeyguardManager;->mKeyguardLockedStateListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1142
    :try_start_3
    iget-object v1, p0, Landroid/app/KeyguardManager;->mKeyguardLockedStateListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    iget-object v1, p0, Landroid/app/KeyguardManager;->mKeyguardLockedStateListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    .line 1144
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_22

    return-void

    .line 1147
    :cond_12
    :try_start_12
    iget-object v1, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    iget-object v2, p0, Landroid/app/KeyguardManager;->mIKeyguardLockedStateListener:Lcom/android/internal/policy/IKeyguardLockedStateListener;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->removeKeyguardLockedStateListener(Lcom/android/internal/policy/IKeyguardLockedStateListener;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_19} :catch_1c
    .catchall {:try_start_12 .. :try_end_19} :catchall_22

    .line 1150
    nop

    .line 1151
    :try_start_1a
    monitor-exit v0

    .line 1152
    return-void

    .line 1148
    :catch_1c
    move-exception v1

    .line 1149
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/app/KeyguardManager;
    .end local p1    # "listener":Landroid/app/KeyguardManager$KeyguardLockedStateListener;
    throw v2

    .line 1151
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/KeyguardManager;
    .restart local p1    # "listener":Landroid/app/KeyguardManager$KeyguardLockedStateListener;
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_22

    throw v1
.end method

.method public whitelist removeWeakEscrowToken(JLandroid/os/UserHandle;)Z
    .registers 6
    .param p1, "handle"    # J
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 930
    const-string v0, "User cannot be null."

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 931
    iget-object v0, p0, Landroid/app/KeyguardManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/widget/LockPatternUtils;->removeWeakEscrowToken(JI)Z

    move-result v0

    return v0
.end method

.method public whitelist requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Landroid/app/KeyguardManager$KeyguardDismissCallback;

    .line 667
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Ljava/lang/CharSequence;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    .line 668
    return-void
.end method

.method public whitelist requestDismissKeyguard(Landroid/app/Activity;Ljava/lang/CharSequence;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "callback"    # Landroid/app/KeyguardManager$KeyguardDismissCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 700
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    .line 701
    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Landroid/app/KeyguardManager$2;

    invoke-direct {v2, p0, p3, p1}, Landroid/app/KeyguardManager$2;-><init>(Landroid/app/KeyguardManager;Landroid/app/KeyguardManager$KeyguardDismissCallback;Landroid/app/Activity;)V

    .line 700
    invoke-virtual {v0, v1, v2, p2}, Landroid/app/ActivityClient;->dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 723
    return-void
.end method

.method public whitelist setLock(I[BI)Z
    .registers 10
    .param p1, "lockType"    # I
    .param p2, "password"    # [B
    .param p3, "complexity"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 847
    invoke-direct {p0}, Landroid/app/KeyguardManager;->checkInitialLockMethodUsage()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 848
    return v1

    .line 851
    :cond_8
    iget-object v0, p0, Landroid/app/KeyguardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    .line 852
    .local v0, "userId":I
    invoke-virtual {p0, v0}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v2

    const-string v3, "KeyguardManager"

    if-eqz v2, :cond_1c

    .line 853
    const-string v2, "Password already set, rejecting call to setLock"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    return v1

    .line 856
    :cond_1c
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/KeyguardManager;->isValidLockPasswordComplexity(I[BI)Z

    move-result v2

    if-nez v2, :cond_28

    .line 857
    const-string v2, "Password is not valid, rejecting call to setLock"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    return v1

    .line 862
    :cond_28
    :try_start_28
    invoke-direct {p0, p1, p2}, Landroid/app/KeyguardManager;->createLockscreenCredential(I[B)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v2

    .line 864
    .local v2, "credential":Lcom/android/internal/widget/LockscreenCredential;
    iget-object v4, p0, Landroid/app/KeyguardManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 866
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v5

    .line 864
    invoke-virtual {v4, v2, v5, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z

    move-result v3
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_36} :catch_3d
    .catchall {:try_start_28 .. :try_end_36} :catchall_3b

    move v2, v3

    .line 872
    .local v2, "success":Z
    :goto_37
    invoke-static {p2, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 873
    goto :goto_45

    .line 872
    .end local v2    # "success":Z
    :catchall_3b
    move-exception v2

    goto :goto_46

    .line 868
    :catch_3d
    move-exception v2

    .line 869
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3e
    const-string v4, "Save lock exception"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_43
    .catchall {:try_start_3e .. :try_end_43} :catchall_3b

    .line 870
    const/4 v2, 0x0

    .local v2, "success":Z
    goto :goto_37

    .line 874
    :goto_45
    return v2

    .line 872
    .end local v2    # "success":Z
    :goto_46
    invoke-static {p2, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 873
    throw v2
.end method

.method public blacklist setLock(I[BI[B)Z
    .registers 9
    .param p1, "newLockType"    # I
    .param p2, "newPassword"    # [B
    .param p3, "currentLockType"    # I
    .param p4, "currentPassword"    # [B

    .line 1041
    iget-object v0, p0, Landroid/app/KeyguardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    .line 1042
    .local v0, "userId":I
    invoke-direct {p0, p3, p4}, Landroid/app/KeyguardManager;->createLockscreenCredential(I[B)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    .line 1044
    .local v1, "currentCredential":Lcom/android/internal/widget/LockscreenCredential;
    invoke-direct {p0, p1, p2}, Landroid/app/KeyguardManager;->createLockscreenCredential(I[B)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v2

    .line 1046
    .local v2, "newCredential":Lcom/android/internal/widget/LockscreenCredential;
    iget-object v3, p0, Landroid/app/KeyguardManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v2, v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z

    move-result v3

    return v3
.end method

.method public whitelist setPrivateNotificationsAllowed(Z)V
    .registers 4
    .param p1, "allow"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 349
    :try_start_0
    iget-object v0, p0, Landroid/app/KeyguardManager;->mNotificationManager:Landroid/app/INotificationManager;

    invoke-interface {v0, p1}, Landroid/app/INotificationManager;->setPrivateNotificationsAllowed(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 352
    nop

    .line 353
    return-void

    .line 350
    :catch_7
    move-exception v0

    .line 351
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist unregisterWeakEscrowTokenRemovedListener(Landroid/app/KeyguardManager$WeakEscrowTokenRemovedListener;)Z
    .registers 7
    .param p1, "listener"    # Landroid/app/KeyguardManager$WeakEscrowTokenRemovedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1009
    const-string v0, "Listener cannot be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1010
    iget-object v0, p0, Landroid/app/KeyguardManager;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;

    .line 1011
    .local v0, "internalListener":Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    move v3, v1

    goto :goto_14

    :cond_13
    move v3, v2

    :goto_14
    const-string v4, "Listener was not registered"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1012
    iget-object v3, p0, Landroid/app/KeyguardManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->unregisterWeakEscrowTokenRemovedListener(Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 1013
    iget-object v2, p0, Landroid/app/KeyguardManager;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    return v1

    .line 1016
    :cond_27
    const-string v1, "KeyguardManager"

    const-string v3, "Listener failed to unregister."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    return v2
.end method
