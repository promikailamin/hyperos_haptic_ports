.class public final Lcom/android/server/devicepolicy/FactoryResetter;
.super Ljava/lang/Object;
.source "FactoryResetter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicepolicy/FactoryResetter$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mForce:Z

.field private final mReason:Ljava/lang/String;

.field private final mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

.field private final mShutdown:Z

.field private final mWipeAdoptableStorage:Z

.field private final mWipeEuicc:Z

.field private final mWipeFactoryResetProtection:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmSafetyChecker(Lcom/android/server/devicepolicy/FactoryResetter;)Landroid/app/admin/DevicePolicySafetyChecker;
    .registers 1

    iget-object p0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mfactoryResetInternalUnchecked(Lcom/android/server/devicepolicy/FactoryResetter;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/devicepolicy/FactoryResetter;->factoryResetInternalUnchecked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/devicepolicy/FactoryResetter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 47
    const-class v0, Lcom/android/server/devicepolicy/FactoryResetter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/devicepolicy/FactoryResetter;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/android/server/devicepolicy/FactoryResetter$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/android/server/devicepolicy/FactoryResetter$Builder;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    invoke-static {p1}, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->-$$Nest$fgetmContext(Lcom/android/server/devicepolicy/FactoryResetter$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mContext:Landroid/content/Context;

    .line 153
    invoke-static {p1}, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->-$$Nest$fgetmSafetyChecker(Lcom/android/server/devicepolicy/FactoryResetter$Builder;)Landroid/app/admin/DevicePolicySafetyChecker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

    .line 154
    invoke-static {p1}, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->-$$Nest$fgetmReason(Lcom/android/server/devicepolicy/FactoryResetter$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mReason:Ljava/lang/String;

    .line 155
    invoke-static {p1}, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->-$$Nest$fgetmShutdown(Lcom/android/server/devicepolicy/FactoryResetter$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mShutdown:Z

    .line 156
    invoke-static {p1}, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->-$$Nest$fgetmForce(Lcom/android/server/devicepolicy/FactoryResetter$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mForce:Z

    .line 157
    invoke-static {p1}, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->-$$Nest$fgetmWipeEuicc(Lcom/android/server/devicepolicy/FactoryResetter$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mWipeEuicc:Z

    .line 158
    invoke-static {p1}, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->-$$Nest$fgetmWipeAdoptableStorage(Lcom/android/server/devicepolicy/FactoryResetter$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mWipeAdoptableStorage:Z

    .line 159
    invoke-static {p1}, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->-$$Nest$fgetmWipeFactoryResetProtection(Lcom/android/server/devicepolicy/FactoryResetter$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mWipeFactoryResetProtection:Z

    .line 160
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/devicepolicy/FactoryResetter$Builder;Lcom/android/server/devicepolicy/FactoryResetter-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/FactoryResetter;-><init>(Lcom/android/server/devicepolicy/FactoryResetter$Builder;)V

    return-void
.end method

.method private factoryResetInternalUnchecked()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    sget-object v0, Lcom/android/server/devicepolicy/FactoryResetter;->TAG:Ljava/lang/String;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mReason:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mShutdown:Z

    .line 123
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mForce:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mWipeEuicc:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mWipeAdoptableStorage:Z

    .line 124
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mWipeFactoryResetProtection:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 122
    const-string v2, "factoryReset(): reason=%s, shutdown=%b, force=%b, wipeEuicc=%b, wipeAdoptableStorage=%b, wipeFRP=%b"

    invoke-static {v0, v2, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    iget-object v1, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 127
    .local v1, "um":Landroid/os/UserManager;
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mForce:Z

    if-nez v2, :cond_5c

    const-string/jumbo v2, "no_factory_reset"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_54

    goto :goto_5c

    .line 128
    :cond_54
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Factory reset is not allowed for this user."

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_5c
    :goto_5c
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mWipeFactoryResetProtection:Z

    if-eqz v2, :cond_7a

    .line 132
    iget-object v2, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mContext:Landroid/content/Context;

    const-class v3, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 133
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 134
    .local v2, "manager":Landroid/service/persistentdata/PersistentDataBlockManager;
    if-eqz v2, :cond_75

    .line 135
    const-string v3, "Wiping factory reset protection"

    invoke-static {v0, v3}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {v2}, Landroid/service/persistentdata/PersistentDataBlockManager;->wipe()V

    goto :goto_7a

    .line 138
    :cond_75
    const-string v3, "No need to wipe factory reset protection"

    invoke-static {v0, v3}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .end local v2    # "manager":Landroid/service/persistentdata/PersistentDataBlockManager;
    :cond_7a
    :goto_7a
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mWipeAdoptableStorage:Z

    if-eqz v2, :cond_90

    .line 143
    const-string v2, "Wiping adoptable storage"

    invoke-static {v0, v2}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 145
    .local v0, "sm":Landroid/os/storage/StorageManager;
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->wipeAdoptableDisks()V

    .line 148
    .end local v0    # "sm":Landroid/os/storage/StorageManager;
    :cond_90
    iget-object v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mShutdown:Z

    iget-object v3, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mReason:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mForce:Z

    iget-boolean v5, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mWipeEuicc:Z

    invoke-static {v0, v2, v3, v4, v5}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZ)V

    .line 149
    return-void
.end method

.method public static newBuilder(Landroid/content/Context;)Lcom/android/server/devicepolicy/FactoryResetter$Builder;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 166
    new-instance v0, Lcom/android/server/devicepolicy/FactoryResetter$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/devicepolicy/FactoryResetter$Builder;-><init>(Landroid/content/Context;Lcom/android/server/devicepolicy/FactoryResetter$Builder-IA;)V

    return-object v0
.end method


# virtual methods
.method public factoryReset()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MASTER_CLEAR"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    move v0, v2

    :goto_f
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkCallAuthorization(Z)V

    .line 68
    iget-object v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/FactoryResetter;->setFactoryResetting(Landroid/content/Context;)V

    .line 70
    iget-object v0, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

    if-nez v0, :cond_1f

    .line 71
    invoke-direct {p0}, Lcom/android/server/devicepolicy/FactoryResetter;->factoryResetInternalUnchecked()V

    .line 72
    return v1

    .line 75
    :cond_1f
    new-instance v0, Lcom/android/server/devicepolicy/FactoryResetter$1;

    invoke-direct {v0, p0}, Lcom/android/server/devicepolicy/FactoryResetter$1;-><init>(Lcom/android/server/devicepolicy/FactoryResetter;)V

    .line 87
    .local v0, "receiver":Lcom/android/internal/os/IResultReceiver;
    sget-object v3, Lcom/android/server/devicepolicy/FactoryResetter;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

    aput-object v4, v1, v2

    const-string v4, "Delaying factory reset until %s confirms"

    invoke-static {v3, v4, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    iget-object v1, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

    invoke-interface {v1, v0}, Landroid/app/admin/DevicePolicySafetyChecker;->onFactoryReset(Lcom/android/internal/os/IResultReceiver;)V

    .line 89
    return v2
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FactoryResetter["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mReason:Ljava/lang/String;

    if-nez v1, :cond_12

    .line 96
    const-string/jumbo v1, "no_reason"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 98
    :cond_12
    const-string/jumbo v1, "reason=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    :goto_24
    iget-object v1, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

    if-eqz v1, :cond_2d

    .line 101
    const-string v1, ",hasSafetyChecker"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    :cond_2d
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mShutdown:Z

    if-eqz v1, :cond_36

    .line 104
    const-string v1, ",shutdown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    :cond_36
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mForce:Z

    if-eqz v1, :cond_3f

    .line 107
    const-string v1, ",force"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    :cond_3f
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mWipeEuicc:Z

    if-eqz v1, :cond_48

    .line 110
    const-string v1, ",wipeEuicc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    :cond_48
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mWipeAdoptableStorage:Z

    if-eqz v1, :cond_51

    .line 113
    const-string v1, ",wipeAdoptableStorage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :cond_51
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/FactoryResetter;->mWipeFactoryResetProtection:Z

    if-eqz v1, :cond_5a

    .line 116
    const-string v1, ",ipeFactoryResetProtection"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    :cond_5a
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
