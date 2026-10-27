.class Lcom/android/server/rollback/Rollback;
.super Ljava/lang/Object;
.source "Rollback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/rollback/Rollback$RollbackState;
    }
.end annotation


# static fields
.field static final ROLLBACK_STATE_AVAILABLE:I = 0x1

.field static final ROLLBACK_STATE_COMMITTED:I = 0x3

.field static final ROLLBACK_STATE_DELETED:I = 0x4

.field static final ROLLBACK_STATE_ENABLING:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RollbackManager"


# instance fields
.field public final info:Landroid/content/rollback/RollbackInfo;

.field private final mBackupDir:Ljava/io/File;

.field private final mExtensionVersions:Landroid/util/SparseIntArray;

.field private final mHandler:Landroid/os/Handler;

.field private final mInstallerPackageName:Ljava/lang/String;

.field private final mOriginalSessionId:I

.field private final mPackageSessionIds:[I

.field private mRestoreUserDataInProgress:Z

.field private mState:I

.field private mStateDescription:Ljava/lang/String;

.field private mTimestamp:Ljava/time/Instant;

.field private final mUserId:I


# direct methods
.method constructor <init>(ILjava/io/File;IZILjava/lang/String;[ILandroid/util/SparseIntArray;)V
    .registers 18
    .param p1, "rollbackId"    # I
    .param p2, "backupDir"    # Ljava/io/File;
    .param p3, "originalSessionId"    # I
    .param p4, "isStaged"    # Z
    .param p5, "userId"    # I
    .param p6, "installerPackageName"    # Ljava/lang/String;
    .param p7, "packageSessionIds"    # [I
    .param p8, "extensionVersions"    # Landroid/util/SparseIntArray;

    .line 208
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    const-string v1, ""

    iput-object v1, v0, Lcom/android/server/rollback/Rollback;->mStateDescription:Ljava/lang/String;

    .line 160
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    .line 209
    new-instance v8, Landroid/content/rollback/RollbackInfo;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, -0x1

    move-object v2, v8

    move v3, p1

    move v5, p4

    invoke-direct/range {v2 .. v7}, Landroid/content/rollback/RollbackInfo;-><init>(ILjava/util/List;ZLjava/util/List;I)V

    iput-object v8, v0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 214
    move v2, p5

    iput v2, v0, Lcom/android/server/rollback/Rollback;->mUserId:I

    .line 215
    move-object v3, p6

    iput-object v3, v0, Lcom/android/server/rollback/Rollback;->mInstallerPackageName:Ljava/lang/String;

    .line 216
    move-object v4, p2

    iput-object v4, v0, Lcom/android/server/rollback/Rollback;->mBackupDir:Ljava/io/File;

    .line 217
    move v5, p3

    iput v5, v0, Lcom/android/server/rollback/Rollback;->mOriginalSessionId:I

    .line 218
    iput v1, v0, Lcom/android/server/rollback/Rollback;->mState:I

    .line 219
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/rollback/Rollback;->mTimestamp:Ljava/time/Instant;

    .line 220
    if-eqz p7, :cond_39

    move-object/from16 v1, p7

    goto :goto_3b

    :cond_39
    new-array v1, v1, [I

    :goto_3b
    iput-object v1, v0, Lcom/android/server/rollback/Rollback;->mPackageSessionIds:[I

    .line 221
    invoke-static/range {p8 .. p8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseIntArray;

    iput-object v1, v0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    .line 222
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_55

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_56

    :cond_55
    const/4 v1, 0x0

    :goto_56
    iput-object v1, v0, Lcom/android/server/rollback/Rollback;->mHandler:Landroid/os/Handler;

    .line 223
    return-void
.end method

.method constructor <init>(Landroid/content/rollback/RollbackInfo;Ljava/io/File;Ljava/time/Instant;IILjava/lang/String;ZILjava/lang/String;Landroid/util/SparseIntArray;)V
    .registers 13
    .param p1, "info"    # Landroid/content/rollback/RollbackInfo;
    .param p2, "backupDir"    # Ljava/io/File;
    .param p3, "timestamp"    # Ljava/time/Instant;
    .param p4, "originalSessionId"    # I
    .param p5, "state"    # I
    .param p6, "stateDescription"    # Ljava/lang/String;
    .param p7, "restoreUserDataInProgress"    # Z
    .param p8, "userId"    # I
    .param p9, "installerPackageName"    # Ljava/lang/String;
    .param p10, "extensionVersions"    # Landroid/util/SparseIntArray;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/rollback/Rollback;->mStateDescription:Ljava/lang/String;

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    .line 231
    iput-object p1, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 232
    iput p8, p0, Lcom/android/server/rollback/Rollback;->mUserId:I

    .line 233
    iput-object p9, p0, Lcom/android/server/rollback/Rollback;->mInstallerPackageName:Ljava/lang/String;

    .line 234
    iput-object p2, p0, Lcom/android/server/rollback/Rollback;->mBackupDir:Ljava/io/File;

    .line 235
    iput-object p3, p0, Lcom/android/server/rollback/Rollback;->mTimestamp:Ljava/time/Instant;

    .line 236
    iput p4, p0, Lcom/android/server/rollback/Rollback;->mOriginalSessionId:I

    .line 237
    iput p5, p0, Lcom/android/server/rollback/Rollback;->mState:I

    .line 238
    iput-object p6, p0, Lcom/android/server/rollback/Rollback;->mStateDescription:Ljava/lang/String;

    .line 239
    iput-boolean p7, p0, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    .line 240
    invoke-static {p10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseIntArray;

    iput-object v1, p0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    .line 245
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/rollback/Rollback;->mPackageSessionIds:[I

    .line 246
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_38

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_39

    :cond_38
    const/4 v0, 0x0

    :goto_39
    iput-object v0, p0, Lcom/android/server/rollback/Rollback;->mHandler:Landroid/os/Handler;

    .line 247
    return-void
.end method

.method private static addAll(Ljava/util/List;[I)V
    .registers 4
    .param p1, "arr"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;[I)V"
        }
    .end annotation

    .line 422
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_10

    .line 423
    aget v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 425
    .end local v0    # "i":I
    :cond_10
    return-void
.end method

.method private assertInWorkerThread()V
    .registers 2

    .line 250
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 251
    return-void
.end method

.method private containsApex()Z
    .registers 4

    .line 917
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/rollback/PackageRollbackInfo;

    .line 918
    .local v1, "pkgInfo":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->isApex()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 919
    const/4 v0, 0x1

    return v0

    .line 921
    .end local v1    # "pkgInfo":Landroid/content/rollback/PackageRollbackInfo;
    :cond_1e
    goto :goto_a

    .line 922
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method static extensionVersionReductionWouldViolateConstraint(Landroid/util/SparseIntArray;Landroid/content/pm/PackageManagerInternal;)Z
    .registers 10
    .param p0, "rollbackExtVers"    # Landroid/util/SparseIntArray;
    .param p1, "pmi"    # Landroid/content/pm/PackageManagerInternal;

    .line 880
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 881
    return v1

    .line 883
    :cond_8
    invoke-virtual {p1}, Landroid/content/pm/PackageManagerInternal;->getPackageList()Lcom/android/server/pm/PackageList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageList;->getPackageNames()Ljava/util/List;

    move-result-object v0

    .line 884
    .local v0, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_46

    .line 885
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    .line 886
    .local v3, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getMinExtensionVersions()Landroid/util/SparseIntArray;

    move-result-object v4

    .line 887
    .local v4, "minExtVers":Landroid/util/SparseIntArray;
    if-nez v4, :cond_28

    .line 888
    goto :goto_43

    .line 890
    :cond_28
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_29
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_43

    .line 891
    invoke-virtual {p0, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    const/4 v7, -0x1

    invoke-virtual {v4, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    .line 892
    .local v6, "minExt":I
    invoke-virtual {p0, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    if-ge v7, v6, :cond_40

    .line 893
    const/4 v1, 0x1

    return v1

    .line 890
    .end local v6    # "minExt":I
    :cond_40
    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    .line 884
    .end local v3    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v4    # "minExtVers":Landroid/util/SparseIntArray;
    .end local v5    # "j":I
    :cond_43
    :goto_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 897
    .end local v2    # "i":I
    :cond_46
    return v1
.end method

.method static rollbackStateFromString(Ljava/lang/String;)I
    .registers 5
    .param p0, "state"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 858
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_56

    :cond_a
    goto :goto_33

    :sswitch_b
    const-string v0, "enabling"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v3

    goto :goto_34

    :sswitch_15
    const-string v0, "deleted"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_34

    :sswitch_1f
    const-string v0, "available"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v2

    goto :goto_34

    :sswitch_29
    const-string v0, "committed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x2

    goto :goto_34

    :goto_33
    const/4 v0, -0x1

    :goto_34
    packed-switch v0, :pswitch_data_68

    .line 864
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid rollback state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 862
    :pswitch_50
    const/4 v0, 0x4

    return v0

    .line 861
    :pswitch_52
    return v1

    .line 860
    :pswitch_53
    return v2

    .line 859
    :pswitch_54
    return v3

    nop

    :sswitch_data_56
    .sparse-switch
        -0x58e10884 -> :sswitch_29
        -0x2bbe7537 -> :sswitch_1f
        0x5c6a3019 -> :sswitch_15
        0x61e1ed80 -> :sswitch_b
    .end sparse-switch

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_50
    .end packed-switch
.end method

.method static rollbackStateToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "state"    # I

    .line 846
    packed-switch p0, :pswitch_data_28

    .line 852
    :pswitch_3
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid rollback state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 850
    :pswitch_1c
    const-string v0, "deleted"

    return-object v0

    .line 849
    :pswitch_1f
    const-string v0, "committed"

    return-object v0

    .line 848
    :pswitch_22
    const-string v0, "available"

    return-object v0

    .line 847
    :pswitch_25
    const-string v0, "enabling"

    return-object v0

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_25
        :pswitch_22
        :pswitch_3
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method private wasCreatedAtLowerExtensionVersion()Z
    .registers 4

    .line 906
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 907
    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/ext/SdkExtensions;->getExtensionVersion(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    .line 908
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    if-le v1, v2, :cond_1d

    .line 909
    const/4 v1, 0x1

    return v1

    .line 906
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 912
    .end local v0    # "i":I
    :cond_20
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method allPackagesEnabled()Z
    .registers 5

    .line 834
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 835
    const/4 v0, 0x0

    .line 836
    .local v0, "packagesWithoutApkInApex":I
    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/rollback/PackageRollbackInfo;

    .line 837
    .local v2, "rollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual {v2}, Landroid/content/rollback/PackageRollbackInfo;->isApkInApex()Z

    move-result v3

    if-nez v3, :cond_22

    .line 838
    add-int/lit8 v0, v0, 0x1

    .line 840
    .end local v2    # "rollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    :cond_22
    goto :goto_e

    .line 841
    :cond_23
    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->mPackageSessionIds:[I

    array-length v1, v1

    if-ne v0, v1, :cond_2a

    const/4 v1, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v1, 0x0

    :goto_2b
    return v1
.end method

.method commit(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Landroid/content/IntentSender;)V
    .registers 38
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "callerPackageName"    # Ljava/lang/String;
    .param p4, "statusReceiver"    # Landroid/content/IntentSender;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/IntentSender;",
            ")V"
        }
    .end annotation

    .line 487
    .local p2, "causePackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    invoke-direct/range {p0 .. p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 488
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/rollback/Rollback;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_16

    .line 489
    const/4 v0, 0x2

    const-string v4, "Rollback unavailable"

    invoke-static {v2, v3, v0, v4}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V

    .line 492
    return-void

    .line 495
    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/android/server/rollback/Rollback;->containsApex()Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_39

    invoke-direct/range {p0 .. p0}, Lcom/android/server/rollback/Rollback;->wasCreatedAtLowerExtensionVersion()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 496
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 497
    .local v0, "pmi":Landroid/content/pm/PackageManagerInternal;
    iget-object v5, v1, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    invoke-static {v5, v0}, Lcom/android/server/rollback/Rollback;->extensionVersionReductionWouldViolateConstraint(Landroid/util/SparseIntArray;Landroid/content/pm/PackageManagerInternal;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 498
    const-string v5, "Rollback may violate a minExtensionVersion constraint"

    invoke-static {v2, v3, v4, v5}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V

    .line 500
    return-void

    .line 507
    .end local v0    # "pmi":Landroid/content/pm/PackageManagerInternal;
    :cond_39
    :try_start_39
    iget v0, v1, Lcom/android/server/rollback/Rollback;->mUserId:I

    .line 508
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 507
    const/4 v5, 0x0

    move-object/from16 v6, p3

    invoke-virtual {v2, v6, v5, v0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0
    :try_end_46
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_39 .. :try_end_46} :catch_226

    move-object v7, v0

    .line 513
    .local v7, "pkgContext":Landroid/content/Context;
    nop

    .line 515
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 517
    .local v8, "pm":Landroid/content/pm/PackageManager;
    :try_start_4c
    invoke-virtual {v8}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    move-object v9, v0

    .line 518
    .local v9, "packageInstaller":Landroid/content/pm/PackageInstaller;
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-direct {v0, v4}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    move-object v10, v0

    .line 520
    .local v10, "parentParams":Landroid/content/pm/PackageInstaller$SessionParams;
    invoke-virtual {v10, v4}, Landroid/content/pm/PackageInstaller$SessionParams;->setRequestDowngrade(Z)V

    .line 521
    invoke-virtual {v10}, Landroid/content/pm/PackageInstaller$SessionParams;->setMultiPackage()V

    .line 522
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/rollback/Rollback;->isStaged()Z

    move-result v0
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_61} :catch_1fe

    if-eqz v0, :cond_6e

    .line 523
    :try_start_63
    invoke-virtual {v10}, Landroid/content/pm/PackageInstaller$SessionParams;->setStaged()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_67

    goto :goto_6e

    .line 660
    .end local v9    # "packageInstaller":Landroid/content/pm/PackageInstaller;
    .end local v10    # "parentParams":Landroid/content/pm/PackageInstaller$SessionParams;
    :catch_67
    move-exception v0

    move-object/from16 v4, p2

    move-object/from16 v27, v7

    goto/16 :goto_203

    .line 525
    .restart local v9    # "packageInstaller":Landroid/content/pm/PackageInstaller;
    .restart local v10    # "parentParams":Landroid/content/pm/PackageInstaller$SessionParams;
    :cond_6e
    :goto_6e
    const/4 v11, 0x5

    :try_start_6f
    invoke-virtual {v10, v11}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallReason(I)V

    .line 527
    invoke-virtual {v9, v10}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v0

    move v12, v0

    .line 528
    .local v12, "parentSessionId":I
    invoke-virtual {v9, v12}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v0

    move-object v13, v0

    .line 531
    .local v13, "parentSession":Landroid/content/pm/PackageInstaller$Session;
    new-instance v0, Ljava/util/ArrayList;

    iget-object v14, v1, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v14}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    invoke-direct {v0, v14}, Ljava/util/ArrayList;-><init>(I)V

    move-object v14, v0

    .line 532
    .local v14, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, v1, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_96
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_9a} :catch_1fe

    if-eqz v0, :cond_1d1

    :try_start_9c
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/rollback/PackageRollbackInfo;

    move-object/from16 v16, v0

    .line 533
    .local v16, "pkgRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual/range {v16 .. v16}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    invoke-virtual/range {v16 .. v16}, Landroid/content/rollback/PackageRollbackInfo;->isApkInApex()Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 538
    goto :goto_96

    .line 540
    :cond_b2
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-direct {v0, v4}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    move-object/from16 v17, v0

    .line 542
    .local v17, "params":Landroid/content/pm/PackageInstaller$SessionParams;
    iget-object v0, v1, Lcom/android/server/rollback/Rollback;->mInstallerPackageName:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 543
    .local v18, "installerPackageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_c1} :catch_1cb

    if-eqz v0, :cond_d1

    .line 544
    nop

    .line 545
    :try_start_c4
    invoke-virtual/range {v16 .. v16}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 544
    invoke-virtual {v8, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v0

    move-object/from16 v5, v18

    goto :goto_d3

    .line 543
    :cond_d1
    move-object/from16 v5, v18

    .line 547
    .end local v18    # "installerPackageName":Ljava/lang/String;
    .local v5, "installerPackageName":Ljava/lang/String;
    :goto_d3
    if-eqz v5, :cond_db

    .line 548
    move-object/from16 v11, v17

    .end local v17    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .local v11, "params":Landroid/content/pm/PackageInstaller$SessionParams;
    invoke-virtual {v11, v5}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallerPackageName(Ljava/lang/String;)V
    :try_end_da
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_da} :catch_67

    goto :goto_dd

    .line 547
    .end local v11    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v17    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :cond_db
    move-object/from16 v11, v17

    .line 550
    .end local v17    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v11    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :goto_dd
    :try_start_dd
    invoke-virtual {v11, v4}, Landroid/content/pm/PackageInstaller$SessionParams;->setRequestDowngrade(Z)V

    .line 551
    nop

    .line 552
    invoke-virtual/range {v16 .. v16}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    move-result-object v0

    move-object/from16 v19, v5

    .end local v5    # "installerPackageName":Ljava/lang/String;
    .local v19, "installerPackageName":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v4

    .line 551
    invoke-virtual {v11, v4, v5}, Landroid/content/pm/PackageInstaller$SessionParams;->setRequiredInstalledVersionCode(J)V

    .line 553
    const/4 v4, 0x5

    invoke-virtual {v11, v4}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallReason(I)V

    .line 554
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/rollback/Rollback;->isStaged()Z

    move-result v0
    :try_end_f6
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_f6} :catch_1cb

    if-eqz v0, :cond_fb

    .line 555
    :try_start_f8
    invoke-virtual {v11}, Landroid/content/pm/PackageInstaller$SessionParams;->setStaged()V
    :try_end_fb
    .catch Ljava/io/IOException; {:try_start_f8 .. :try_end_fb} :catch_67

    .line 557
    :cond_fb
    :try_start_fb
    invoke-virtual/range {v16 .. v16}, Landroid/content/rollback/PackageRollbackInfo;->isApex()Z

    move-result v0
    :try_end_ff
    .catch Ljava/io/IOException; {:try_start_fb .. :try_end_ff} :catch_1cb

    if-eqz v0, :cond_104

    .line 558
    :try_start_101
    invoke-virtual {v11}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallAsApex()V
    :try_end_104
    .catch Ljava/io/IOException; {:try_start_101 .. :try_end_104} :catch_67

    .line 560
    :cond_104
    :try_start_104
    invoke-virtual {v9, v11}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v0

    move v5, v0

    .line 561
    .local v5, "sessionId":I
    invoke-virtual {v9, v5}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v0

    move-object/from16 v18, v0

    .line 562
    .local v18, "session":Landroid/content/pm/PackageInstaller$Session;
    nop

    .line 563
    invoke-virtual/range {v16 .. v16}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 562
    invoke-static {v1, v0}, Lcom/android/server/rollback/RollbackStore;->getPackageCodePaths(Lcom/android/server/rollback/Rollback;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0
    :try_end_118
    .catch Ljava/io/IOException; {:try_start_104 .. :try_end_118} :catch_1cb

    move-object/from16 v27, v0

    .line 564
    .local v27, "packageCodePaths":[Ljava/io/File;
    move-object/from16 v4, v27

    .end local v27    # "packageCodePaths":[Ljava/io/File;
    .local v4, "packageCodePaths":[Ljava/io/File;
    if-nez v4, :cond_140

    .line 565
    :try_start_11e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Backup copy of package: "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 567
    invoke-virtual/range {v16 .. v16}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, " is inaccessible"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 565
    const/4 v15, 0x1

    invoke-static {v2, v3, v15, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V
    :try_end_13f
    .catch Ljava/io/IOException; {:try_start_11e .. :try_end_13f} :catch_67

    .line 568
    return-void

    .line 571
    :cond_140
    :try_start_140
    array-length v6, v4
    :try_end_141
    .catch Ljava/io/IOException; {:try_start_140 .. :try_end_141} :catch_1cb

    move-object/from16 v27, v7

    const/4 v7, 0x0

    .end local v7    # "pkgContext":Landroid/content/Context;
    .local v27, "pkgContext":Landroid/content/Context;
    :goto_144
    if-ge v7, v6, :cond_1bb

    :try_start_146
    aget-object v0, v4, v7

    move-object/from16 v28, v0

    .line 572
    .local v28, "packageCodePath":Ljava/io/File;
    const/high16 v0, 0x10000000

    move-object/from16 v29, v4

    move-object/from16 v4, v28

    .end local v28    # "packageCodePath":Ljava/io/File;
    .local v4, "packageCodePath":Ljava/io/File;
    .local v29, "packageCodePaths":[Ljava/io/File;
    invoke-static {v4, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_154
    .catch Ljava/io/IOException; {:try_start_146 .. :try_end_154} :catch_1fa

    move-object/from16 v28, v0

    .line 574
    .local v28, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_156
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20
    :try_end_15a
    .catchall {:try_start_156 .. :try_end_15a} :catchall_1ab

    move-wide/from16 v30, v20

    .line 576
    .local v30, "token":J
    const/16 v20, 0x0

    .line 579
    .local v20, "fallbackToCopy":Z
    :try_start_15e
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_162
    .catch Ljava/lang/Exception; {:try_start_15e .. :try_end_162} :catch_174
    .catchall {:try_start_15e .. :try_end_162} :catchall_170

    move/from16 v32, v6

    move-object/from16 v6, v18

    .end local v18    # "session":Landroid/content/pm/PackageInstaller$Session;
    .local v6, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_166
    invoke-virtual {v6, v0}, Landroid/content/pm/PackageInstaller$Session;->stageViaHardLink(Ljava/lang/String;)V
    :try_end_169
    .catch Ljava/lang/Exception; {:try_start_166 .. :try_end_169} :catch_16e
    .catchall {:try_start_166 .. :try_end_169} :catchall_16c

    .line 582
    move/from16 v0, v20

    goto :goto_17d

    .line 589
    .end local v20    # "fallbackToCopy":Z
    :catchall_16c
    move-exception v0

    goto :goto_191

    .line 580
    .restart local v20    # "fallbackToCopy":Z
    :catch_16e
    move-exception v0

    goto :goto_179

    .line 589
    .end local v6    # "session":Landroid/content/pm/PackageInstaller$Session;
    .end local v20    # "fallbackToCopy":Z
    .restart local v18    # "session":Landroid/content/pm/PackageInstaller$Session;
    :catchall_170
    move-exception v0

    move-object/from16 v6, v18

    .end local v18    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v6    # "session":Landroid/content/pm/PackageInstaller$Session;
    goto :goto_191

    .line 580
    .end local v6    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v18    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v20    # "fallbackToCopy":Z
    :catch_174
    move-exception v0

    move/from16 v32, v6

    move-object/from16 v6, v18

    .line 581
    .end local v18    # "session":Landroid/content/pm/PackageInstaller$Session;
    .local v0, "ignore":Ljava/lang/Exception;
    .restart local v6    # "session":Landroid/content/pm/PackageInstaller$Session;
    :goto_179
    const/16 v20, 0x1

    move/from16 v0, v20

    .line 583
    .end local v20    # "fallbackToCopy":Z
    .local v0, "fallbackToCopy":Z
    :goto_17d
    if-eqz v0, :cond_199

    .line 584
    :try_start_17f
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v21

    const-wide/16 v22, 0x0

    .line 585
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v24

    .line 584
    move-object/from16 v20, v6

    move-object/from16 v26, v28

    invoke-virtual/range {v20 .. v26}, Landroid/content/pm/PackageInstaller$Session;->write(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V
    :try_end_190
    .catchall {:try_start_17f .. :try_end_190} :catchall_16c

    goto :goto_199

    .line 589
    .end local v0    # "fallbackToCopy":Z
    :goto_191
    :try_start_191
    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 590
    nop

    .end local v4    # "packageCodePath":Ljava/io/File;
    .end local v5    # "sessionId":I
    .end local v6    # "session":Landroid/content/pm/PackageInstaller$Session;
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    .end local v9    # "packageInstaller":Landroid/content/pm/PackageInstaller;
    .end local v10    # "parentParams":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v11    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v12    # "parentSessionId":I
    .end local v13    # "parentSession":Landroid/content/pm/PackageInstaller$Session;
    .end local v14    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "pkgRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    .end local v19    # "installerPackageName":Ljava/lang/String;
    .end local v27    # "pkgContext":Landroid/content/Context;
    .end local v28    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v29    # "packageCodePaths":[Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/rollback/Rollback;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "causePackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    .end local p3    # "callerPackageName":Ljava/lang/String;
    .end local p4    # "statusReceiver":Landroid/content/IntentSender;
    throw v0

    .line 572
    .end local v30    # "token":J
    .restart local v4    # "packageCodePath":Ljava/io/File;
    .restart local v5    # "sessionId":I
    .restart local v6    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v8    # "pm":Landroid/content/pm/PackageManager;
    .restart local v9    # "packageInstaller":Landroid/content/pm/PackageInstaller;
    .restart local v10    # "parentParams":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v11    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v12    # "parentSessionId":I
    .restart local v13    # "parentSession":Landroid/content/pm/PackageInstaller$Session;
    .restart local v14    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "pkgRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    .restart local v19    # "installerPackageName":Ljava/lang/String;
    .restart local v27    # "pkgContext":Landroid/content/Context;
    .restart local v28    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v29    # "packageCodePaths":[Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/rollback/Rollback;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "causePackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    .restart local p3    # "callerPackageName":Ljava/lang/String;
    .restart local p4    # "statusReceiver":Landroid/content/IntentSender;
    :catchall_196
    move-exception v0

    move-object v7, v0

    goto :goto_1af

    .line 589
    .restart local v30    # "token":J
    :cond_199
    :goto_199
    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_19c
    .catchall {:try_start_191 .. :try_end_19c} :catchall_196

    .line 590
    nop

    .line 591
    .end local v30    # "token":J
    if-eqz v28, :cond_1a2

    :try_start_19f
    invoke-virtual/range {v28 .. v28}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1a2
    .catch Ljava/io/IOException; {:try_start_19f .. :try_end_1a2} :catch_1fa

    .line 571
    .end local v4    # "packageCodePath":Ljava/io/File;
    .end local v28    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_1a2
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v18, v6

    move-object/from16 v4, v29

    move/from16 v6, v32

    goto :goto_144

    .line 572
    .end local v6    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v4    # "packageCodePath":Ljava/io/File;
    .restart local v18    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v28    # "fd":Landroid/os/ParcelFileDescriptor;
    :catchall_1ab
    move-exception v0

    move-object/from16 v6, v18

    move-object v7, v0

    .end local v18    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v6    # "session":Landroid/content/pm/PackageInstaller$Session;
    :goto_1af
    if-eqz v28, :cond_1ba

    :try_start_1b1
    invoke-virtual/range {v28 .. v28}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1b4
    .catchall {:try_start_1b1 .. :try_end_1b4} :catchall_1b5

    goto :goto_1ba

    :catchall_1b5
    move-exception v0

    move-object v15, v0

    :try_start_1b7
    invoke-virtual {v7, v15}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    .end local v27    # "pkgContext":Landroid/content/Context;
    .end local p0    # "this":Lcom/android/server/rollback/Rollback;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "causePackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    .end local p3    # "callerPackageName":Ljava/lang/String;
    .end local p4    # "statusReceiver":Landroid/content/IntentSender;
    :cond_1ba
    :goto_1ba
    throw v7

    .line 593
    .end local v6    # "session":Landroid/content/pm/PackageInstaller$Session;
    .end local v28    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v29    # "packageCodePaths":[Ljava/io/File;
    .local v4, "packageCodePaths":[Ljava/io/File;
    .restart local v8    # "pm":Landroid/content/pm/PackageManager;
    .restart local v18    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v27    # "pkgContext":Landroid/content/Context;
    .restart local p0    # "this":Lcom/android/server/rollback/Rollback;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "causePackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    .restart local p3    # "callerPackageName":Ljava/lang/String;
    .restart local p4    # "statusReceiver":Landroid/content/IntentSender;
    :cond_1bb
    move-object/from16 v29, v4

    move-object/from16 v6, v18

    .end local v4    # "packageCodePaths":[Ljava/io/File;
    .end local v18    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v6    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v29    # "packageCodePaths":[Ljava/io/File;
    invoke-virtual {v13, v5}, Landroid/content/pm/PackageInstaller$Session;->addChildSessionId(I)V

    .line 594
    .end local v5    # "sessionId":I
    .end local v6    # "session":Landroid/content/pm/PackageInstaller$Session;
    .end local v11    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v16    # "pkgRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    .end local v19    # "installerPackageName":Ljava/lang/String;
    .end local v29    # "packageCodePaths":[Ljava/io/File;
    move-object/from16 v6, p3

    move-object/from16 v7, v27

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v11, 0x5

    goto/16 :goto_96

    .line 660
    .end local v9    # "packageInstaller":Landroid/content/pm/PackageInstaller;
    .end local v10    # "parentParams":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v12    # "parentSessionId":I
    .end local v13    # "parentSession":Landroid/content/pm/PackageInstaller$Session;
    .end local v14    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v27    # "pkgContext":Landroid/content/Context;
    .restart local v7    # "pkgContext":Landroid/content/Context;
    :catch_1cb
    move-exception v0

    move-object/from16 v27, v7

    move-object/from16 v4, p2

    goto :goto_203

    .line 597
    .restart local v9    # "packageInstaller":Landroid/content/pm/PackageInstaller;
    .restart local v10    # "parentParams":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v12    # "parentSessionId":I
    .restart local v13    # "parentSession":Landroid/content/pm/PackageInstaller$Session;
    .restart local v14    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1d1
    move-object/from16 v27, v7

    .end local v7    # "pkgContext":Landroid/content/Context;
    .restart local v27    # "pkgContext":Landroid/content/Context;
    invoke-static {v14}, Lcom/android/server/RescueParty;->resetDeviceConfigForPackages(Ljava/util/List;)V

    .line 599
    new-instance v0, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda0;
    :try_end_1d8
    .catch Ljava/io/IOException; {:try_start_1b7 .. :try_end_1d8} :catch_1fa

    move-object/from16 v4, p2

    :try_start_1da
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/rollback/Rollback;Landroid/content/Context;Landroid/content/IntentSender;Ljava/util/List;)V

    .line 655
    .local v0, "onResult":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/content/Intent;>;"
    new-instance v5, Lcom/android/server/rollback/LocalIntentReceiver;

    invoke-direct {v5, v0}, Lcom/android/server/rollback/LocalIntentReceiver;-><init>(Ljava/util/function/Consumer;)V

    .line 656
    .local v5, "receiver":Lcom/android/server/rollback/LocalIntentReceiver;
    const/4 v6, 0x3

    const-string v7, ""

    invoke-virtual {v1, v6, v7}, Lcom/android/server/rollback/Rollback;->setState(ILjava/lang/String;)V

    .line 657
    iget-object v6, v1, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v6, v12}, Landroid/content/rollback/RollbackInfo;->setCommittedSessionId(I)V

    .line 658
    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    .line 659
    invoke-virtual {v5}, Lcom/android/server/rollback/LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v6

    invoke-virtual {v13, v6}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V
    :try_end_1f7
    .catch Ljava/io/IOException; {:try_start_1da .. :try_end_1f7} :catch_1f8

    .line 664
    .end local v0    # "onResult":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/content/Intent;>;"
    .end local v5    # "receiver":Lcom/android/server/rollback/LocalIntentReceiver;
    .end local v9    # "packageInstaller":Landroid/content/pm/PackageInstaller;
    .end local v10    # "parentParams":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v12    # "parentSessionId":I
    .end local v13    # "parentSession":Landroid/content/pm/PackageInstaller$Session;
    .end local v14    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_225

    .line 660
    :catch_1f8
    move-exception v0

    goto :goto_203

    :catch_1fa
    move-exception v0

    move-object/from16 v4, p2

    goto :goto_203

    .end local v27    # "pkgContext":Landroid/content/Context;
    .restart local v7    # "pkgContext":Landroid/content/Context;
    :catch_1fe
    move-exception v0

    move-object/from16 v4, p2

    move-object/from16 v27, v7

    .line 661
    .end local v7    # "pkgContext":Landroid/content/Context;
    .local v0, "e":Ljava/io/IOException;
    .restart local v27    # "pkgContext":Landroid/content/Context;
    :goto_203
    const-string v5, "RollbackManager"

    const-string v6, "Rollback failed"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 662
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 663
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 662
    const/4 v6, 0x1

    invoke-static {v2, v3, v6, v5}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V

    .line 665
    .end local v0    # "e":Ljava/io/IOException;
    :goto_225
    return-void

    .line 509
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    .end local v27    # "pkgContext":Landroid/content/Context;
    :catch_226
    move-exception v0

    move-object/from16 v4, p2

    .line 510
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "Invalid callerPackageName"

    const/4 v6, 0x1

    invoke-static {v2, v3, v6, v5}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V

    .line 512
    return-void
.end method

.method commitPendingBackupAndRestoreForUser(ILcom/android/server/rollback/AppDataRollbackHelper;)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "dataHelper"    # Lcom/android/server/rollback/AppDataRollbackHelper;

    .line 458
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 459
    invoke-virtual {p2, p1, p0}, Lcom/android/server/rollback/AppDataRollbackHelper;->commitPendingBackupAndRestoreForUser(ILcom/android/server/rollback/Rollback;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 460
    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;)V

    .line 462
    :cond_c
    return-void
.end method

.method containsSessionId(I)Z
    .registers 7
    .param p1, "packageSessionId"    # I

    .line 819
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mPackageSessionIds:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_10

    aget v4, v0, v3

    .line 820
    .local v4, "id":I
    if-ne v4, p1, :cond_d

    .line 821
    const/4 v0, 0x1

    return v0

    .line 819
    .end local v4    # "id":I
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 824
    :cond_10
    return v2
.end method

.method delete(Lcom/android/server/rollback/AppDataRollbackHelper;Ljava/lang/String;)V
    .registers 11
    .param p1, "dataHelper"    # Lcom/android/server/rollback/AppDataRollbackHelper;
    .param p2, "reason"    # Ljava/lang/String;

    .line 706
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 707
    const/4 v0, 0x0

    .line 708
    .local v0, "containsApex":Z
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 709
    .local v1, "apexUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/rollback/PackageRollbackInfo;

    .line 710
    .local v3, "pkgInfo":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual {v3}, Landroid/content/rollback/PackageRollbackInfo;->getSnapshottedUsers()Ljava/util/List;

    move-result-object v4

    .line 711
    .local v4, "snapshottedUsers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Landroid/content/rollback/PackageRollbackInfo;->isApex()Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 712
    const/4 v0, 0x1

    .line 713
    invoke-interface {v1, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_4b

    .line 715
    :cond_2e
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2f
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4b

    .line 717
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 719
    .local v6, "userId":I
    iget-object v7, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v7}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v7

    invoke-virtual {p1, v7, v3, v6}, Lcom/android/server/rollback/AppDataRollbackHelper;->destroyAppDataSnapshot(ILandroid/content/rollback/PackageRollbackInfo;I)V

    .line 715
    .end local v6    # "userId":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    .line 722
    .end local v3    # "pkgInfo":Landroid/content/rollback/PackageRollbackInfo;
    .end local v4    # "snapshottedUsers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5    # "i":I
    :cond_4b
    :goto_4b
    goto :goto_13

    .line 723
    :cond_4c
    if-eqz v0, :cond_75

    .line 724
    iget-object v2, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/server/rollback/AppDataRollbackHelper;->destroyApexDeSnapshots(I)V

    .line 725
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_75

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 726
    .local v3, "user":I
    iget-object v4, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v4}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/android/server/rollback/AppDataRollbackHelper;->destroyApexCeSnapshots(II)V

    .line 727
    .end local v3    # "user":I
    goto :goto_5b

    .line 730
    :cond_75
    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->deleteRollback(Lcom/android/server/rollback/Rollback;)V

    .line 731
    const/4 v2, 0x4

    invoke-virtual {p0, v2, p2}, Lcom/android/server/rollback/Rollback;->setState(ILjava/lang/String;)V

    .line 732
    return-void
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 8
    .param p1, "ipw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 927
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 928
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 929
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 930
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getStateAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-stateDescription: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->mStateDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 932
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-timestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getTimestamp()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 933
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-isStaged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->isStaged()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 934
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-originalSessionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getOriginalSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 935
    const-string v0, "-packages:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 936
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 937
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, " "

    if-eqz v1, :cond_f9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/rollback/PackageRollbackInfo;

    .line 938
    .local v1, "pkg":Landroid/content/rollback/PackageRollbackInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 939
    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 940
    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackTo()Landroid/content/pm/VersionedPackage;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 938
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 941
    .end local v1    # "pkg":Landroid/content/rollback/PackageRollbackInfo;
    goto :goto_b4

    .line 942
    :cond_f9
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 943
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->isCommitted()Z

    move-result v0

    if-eqz v0, :cond_160

    .line 944
    const-string v0, "-causePackages:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 945
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 946
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getCausePackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_114
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_141

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/VersionedPackage;

    .line 947
    .local v1, "cPkg":Landroid/content/pm/VersionedPackage;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 948
    .end local v1    # "cPkg":Landroid/content/pm/VersionedPackage;
    goto :goto_114

    .line 949
    :cond_141
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 950
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-committedSessionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getCommittedSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 952
    :cond_160
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_17c

    .line 953
    const-string v0, "-extensionVersions:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 954
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 955
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 956
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 958
    :cond_17c
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 959
    return-void
.end method

.method enableForPackage(Ljava/lang/String;JJZLjava/lang/String;[Ljava/lang/String;I)Z
    .registers 26
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newVersion"    # J
    .param p4, "installedVersion"    # J
    .param p6, "isApex"    # Z
    .param p7, "sourceDir"    # Ljava/lang/String;
    .param p8, "splitSourceDirs"    # [Ljava/lang/String;
    .param p9, "rollbackDataPolicy"    # I

    .line 375
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p8

    invoke-direct/range {p0 .. p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 377
    const/4 v4, 0x0

    move-object/from16 v5, p7

    :try_start_c
    invoke-static {v1, v2, v5}, Lcom/android/server/rollback/RollbackStore;->backupPackageCodePath(Lcom/android/server/rollback/Rollback;Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-static/range {p8 .. p8}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 379
    array-length v0, v3

    move v6, v4

    :goto_17
    if-ge v6, v0, :cond_21

    aget-object v7, v3, v6

    .line 380
    .local v7, "dir":Ljava/lang/String;
    invoke-static {v1, v2, v7}, Lcom/android/server/rollback/RollbackStore;->backupPackageCodePath(Lcom/android/server/rollback/Rollback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1e} :catch_57

    .line 379
    .end local v7    # "dir":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    .line 386
    :cond_21
    nop

    .line 388
    new-instance v0, Landroid/content/rollback/PackageRollbackInfo;

    new-instance v8, Landroid/content/pm/VersionedPackage;

    move-wide/from16 v14, p2

    invoke-direct {v8, v2, v14, v15}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    new-instance v9, Landroid/content/pm/VersionedPackage;

    move-wide/from16 v12, p4

    invoke-direct {v9, v2, v12, v13}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    move/from16 v12, p6

    move v13, v4

    move-object v14, v6

    move/from16 v15, p9

    invoke-direct/range {v7 .. v15}, Landroid/content/rollback/PackageRollbackInfo;-><init>(Landroid/content/pm/VersionedPackage;Landroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/ArrayList;ZZLjava/util/List;I)V

    .line 394
    .local v0, "packageRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    iget-object v4, v1, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v4}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    const/4 v4, 0x1

    return v4

    .line 383
    .end local v0    # "packageRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    :catch_57
    move-exception v0

    .line 384
    .local v0, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to copy package for rollback for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "RollbackManager"

    invoke-static {v7, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 385
    return v4
.end method

.method enableForPackageInApex(Ljava/lang/String;JI)Z
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "installedVersion"    # J
    .param p4, "rollbackDataPolicy"    # I

    .line 406
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 412
    new-instance v9, Landroid/content/rollback/PackageRollbackInfo;

    new-instance v1, Landroid/content/pm/VersionedPackage;

    const/4 v0, 0x0

    invoke-direct {v1, p1, v0}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    new-instance v2, Landroid/content/pm/VersionedPackage;

    invoke-direct {v2, p1, p2, p3}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, v9

    move v8, p4

    invoke-direct/range {v0 .. v8}, Landroid/content/rollback/PackageRollbackInfo;-><init>(Landroid/content/pm/VersionedPackage;Landroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/ArrayList;ZZLjava/util/List;I)V

    .line 417
    .local v0, "packageRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    const/4 v1, 0x1

    return v1
.end method

.method getApexPackageNames()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 804
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 805
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 806
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/rollback/PackageRollbackInfo;

    .line 807
    .local v2, "pkgRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual {v2}, Landroid/content/rollback/PackageRollbackInfo;->isApex()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 808
    invoke-virtual {v2}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 810
    .end local v2    # "pkgRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    :cond_2b
    goto :goto_12

    .line 811
    :cond_2c
    return-object v0
.end method

.method getBackupDir()Ljava/io/File;
    .registers 2

    .line 266
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mBackupDir:Ljava/io/File;

    return-object v0
.end method

.method getExtensionVersions()Landroid/util/SparseIntArray;
    .registers 2

    .line 319
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method getInstallerPackageName()Ljava/lang/String;
    .registers 2

    .line 310
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mInstallerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method getOriginalSessionId()I
    .registers 2

    .line 293
    iget v0, p0, Lcom/android/server/rollback/Rollback;->mOriginalSessionId:I

    return v0
.end method

.method getPackageNames()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 791
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 792
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 793
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/rollback/PackageRollbackInfo;

    .line 794
    .local v2, "pkgRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual {v2}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 795
    .end local v2    # "pkgRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    goto :goto_12

    .line 796
    :cond_26
    return-object v0
.end method

.method getStateAsString()Ljava/lang/String;
    .registers 2

    .line 869
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 870
    iget v0, p0, Lcom/android/server/rollback/Rollback;->mState:I

    invoke-static {v0}, Lcom/android/server/rollback/Rollback;->rollbackStateToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getStateDescription()Ljava/lang/String;
    .registers 2

    .line 963
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 964
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mStateDescription:Ljava/lang/String;

    return-object v0
.end method

.method getTimestamp()Ljava/time/Instant;
    .registers 2

    .line 274
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 275
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mTimestamp:Ljava/time/Instant;

    return-object v0
.end method

.method getUserId()I
    .registers 2

    .line 301
    iget v0, p0, Lcom/android/server/rollback/Rollback;->mUserId:I

    return v0
.end method

.method includesPackage(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 760
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 761
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/rollback/PackageRollbackInfo;

    .line 762
    .local v1, "packageRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 763
    const/4 v0, 0x1

    return v0

    .line 765
    .end local v1    # "packageRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    :cond_25
    goto :goto_d

    .line 766
    :cond_26
    const/4 v0, 0x0

    return v0
.end method

.method includesPackageWithDifferentVersion(Ljava/lang/String;J)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # J

    .line 775
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 776
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/rollback/PackageRollbackInfo;

    .line 777
    .local v1, "pkgRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 778
    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_31

    .line 780
    const/4 v0, 0x1

    return v0

    .line 782
    .end local v1    # "pkgRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    :cond_31
    goto :goto_d

    .line 783
    :cond_32
    const/4 v0, 0x0

    return v0
.end method

.method isAvailable()Z
    .registers 3

    .line 336
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 337
    iget v0, p0, Lcom/android/server/rollback/Rollback;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method isCommitted()Z
    .registers 3

    .line 345
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 346
    iget v0, p0, Lcom/android/server/rollback/Rollback;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method isDeleted()Z
    .registers 3

    .line 354
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 355
    iget v0, p0, Lcom/android/server/rollback/Rollback;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method isEnabling()Z
    .registers 2

    .line 327
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 328
    iget v0, p0, Lcom/android/server/rollback/Rollback;->mState:I

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method isRestoreUserDataInProgress()Z
    .registers 2

    .line 740
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 741
    iget-boolean v0, p0, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    return v0
.end method

.method isStaged()Z
    .registers 2

    .line 258
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->isStaged()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$commit$0$com-android-server-rollback-Rollback(Landroid/content/Intent;Landroid/content/Context;Landroid/content/IntentSender;Ljava/util/List;)V
    .registers 15
    .param p1, "result"    # Landroid/content/Intent;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "statusReceiver"    # Landroid/content/IntentSender;
    .param p4, "causePackages"    # Ljava/util/List;

    .line 601
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 602
    const-string v0, "android.content.pm.extra.STATUS"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 604
    .local v0, "status":I
    const/4 v2, 0x0

    if-eqz v0, :cond_38

    .line 612
    const-string v3, "Commit failed"

    invoke-virtual {p0, v1, v3}, Lcom/android/server/rollback/Rollback;->setState(ILjava/lang/String;)V

    .line 613
    iput-boolean v2, p0, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    .line 614
    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/content/rollback/RollbackInfo;->setCommittedSessionId(I)V

    .line 615
    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rollback downgrade install failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 618
    const-string v3, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 615
    invoke-static {p2, p3, v1, v2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V

    .line 620
    return-void

    .line 623
    :cond_38
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->isStaged()Z

    move-result v3

    if-nez v3, :cond_40

    .line 626
    iput-boolean v2, p0, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    .line 629
    :cond_40
    iget-object v3, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v3}, Landroid/content/rollback/RollbackInfo;->getCausePackages()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 630
    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->deletePackageCodePaths(Lcom/android/server/rollback/Rollback;)V

    .line 631
    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;)V

    .line 635
    :try_start_4f
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 636
    .local v3, "fillIn":Landroid/content/Intent;
    const-string v4, "android.content.rollback.extra.STATUS"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 639
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p3

    move-object v5, p2

    move-object v7, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_62
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_4f .. :try_end_62} :catch_63

    .line 642
    .end local v3    # "fillIn":Landroid/content/Intent;
    goto :goto_64

    .line 640
    :catch_63
    move-exception v2

    .line 644
    :goto_64
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.ROLLBACK_COMMITTED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 646
    .local v2, "broadcast":Landroid/content/Intent;
    const-class v3, Landroid/os/UserManager;

    invoke-virtual {p2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 647
    .local v3, "userManager":Landroid/os/UserManager;
    invoke-virtual {v3, v1}, Landroid/os/UserManager;->getUserHandles(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    .line 648
    .local v4, "user":Landroid/os/UserHandle;
    const-string v5, "android.permission.MANAGE_ROLLBACKS"

    invoke-virtual {p2, v2, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 651
    .end local v4    # "user":Landroid/os/UserHandle;
    goto :goto_7b

    .line 652
    :cond_8d
    return-void
.end method

.method synthetic lambda$commit$1$com-android-server-rollback-Rollback(Landroid/content/Context;Landroid/content/IntentSender;Ljava/util/List;Landroid/content/Intent;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "statusReceiver"    # Landroid/content/IntentSender;
    .param p3, "causePackages"    # Ljava/util/List;
    .param p4, "result"    # Landroid/content/Intent;

    .line 600
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/rollback/Rollback;Landroid/content/Intent;Landroid/content/Context;Landroid/content/IntentSender;Ljava/util/List;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 653
    return-void
.end method

.method makeAvailable()V
    .registers 3

    .line 471
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 472
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 473
    const-string v0, "RollbackManager"

    const-string v1, "Cannot make deleted rollback available."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    return-void

    .line 476
    :cond_11
    const/4 v0, 0x1

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/server/rollback/Rollback;->setState(ILjava/lang/String;)V

    .line 477
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/rollback/Rollback;->mTimestamp:Ljava/time/Instant;

    .line 478
    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;)V

    .line 479
    return-void
.end method

.method restoreUserDataForPackageIfInProgress(Ljava/lang/String;[IILjava/lang/String;Lcom/android/server/rollback/AppDataRollbackHelper;)Z
    .registers 21
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I
    .param p3, "appId"    # I
    .param p4, "seInfo"    # Ljava/lang/String;
    .param p5, "dataHelper"    # Lcom/android/server/rollback/AppDataRollbackHelper;

    .line 677
    move-object v0, p0

    move-object/from16 v1, p2

    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 678
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->isRestoreUserDataInProgress()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_e

    .line 679
    return v3

    .line 682
    :cond_e
    const/4 v2, 0x0

    .line 683
    .local v2, "foundPackage":Z
    iget-object v4, v0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v4}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_19
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_55

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/rollback/PackageRollbackInfo;

    .line 684
    .local v5, "pkgRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual {v5}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v12, p1

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_54

    .line 685
    const/4 v2, 0x1

    .line 686
    const/4 v4, 0x0

    .line 687
    .local v4, "changedRollback":Z
    array-length v13, v1

    :goto_34
    if-ge v3, v13, :cond_4e

    aget v14, v1, v3

    .line 688
    .local v14, "userId":I
    iget-object v6, v0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 689
    invoke-virtual {v6}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v7

    .line 688
    move-object/from16 v6, p5

    move-object v8, v5

    move v9, v14

    move/from16 v10, p3

    move-object/from16 v11, p4

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/rollback/AppDataRollbackHelper;->restoreAppData(ILandroid/content/rollback/PackageRollbackInfo;IILjava/lang/String;)Z

    move-result v6

    or-int/2addr v4, v6

    .line 687
    .end local v14    # "userId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 692
    :cond_4e
    if-eqz v4, :cond_57

    .line 693
    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;)V

    goto :goto_57

    .line 697
    .end local v4    # "changedRollback":Z
    .end local v5    # "pkgRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    :cond_54
    goto :goto_19

    .line 683
    :cond_55
    move-object/from16 v12, p1

    .line 698
    :cond_57
    :goto_57
    return v2
.end method

.method saveRollback()V
    .registers 1

    .line 363
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 364
    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;)V

    .line 365
    return-void
.end method

.method setRestoreUserDataInProgress(Z)V
    .registers 2
    .param p1, "restoreUserDataInProgress"    # Z

    .line 750
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 751
    iput-boolean p1, p0, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    .line 752
    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;)V

    .line 753
    return-void
.end method

.method setState(ILjava/lang/String;)V
    .registers 3
    .param p1, "state"    # I
    .param p2, "description"    # Ljava/lang/String;

    .line 969
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 970
    iput p1, p0, Lcom/android/server/rollback/Rollback;->mState:I

    .line 971
    iput-object p2, p0, Lcom/android/server/rollback/Rollback;->mStateDescription:Ljava/lang/String;

    .line 972
    return-void
.end method

.method setTimestamp(Ljava/time/Instant;)V
    .registers 2
    .param p1, "timestamp"    # Ljava/time/Instant;

    .line 283
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 284
    iput-object p1, p0, Lcom/android/server/rollback/Rollback;->mTimestamp:Ljava/time/Instant;

    .line 285
    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;)V

    .line 286
    return-void
.end method

.method snapshotUserData(Ljava/lang/String;[ILcom/android/server/rollback/AppDataRollbackHelper;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I
    .param p3, "dataHelper"    # Lcom/android/server/rollback/AppDataRollbackHelper;

    .line 433
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 434
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->isEnabling()Z

    move-result v0

    if-nez v0, :cond_a

    .line 435
    return-void

    .line 438
    :cond_a
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/rollback/PackageRollbackInfo;

    .line 439
    .local v1, "pkgRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 440
    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getRollbackDataPolicy()I

    move-result v0

    if-nez v0, :cond_45

    .line 442
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v0

    invoke-virtual {p3, v0, v1, p2}, Lcom/android/server/rollback/AppDataRollbackHelper;->snapshotAppData(ILandroid/content/rollback/PackageRollbackInfo;[I)V

    .line 443
    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getSnapshottedUsers()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/rollback/Rollback;->addAll(Ljava/util/List;[I)V

    .line 444
    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;)V

    goto :goto_45

    .line 448
    .end local v1    # "pkgRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    :cond_44
    goto :goto_14

    .line 449
    :cond_45
    :goto_45
    return-void
.end method
