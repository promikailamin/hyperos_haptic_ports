.class public abstract Lcom/android/server/infra/AbstractMasterSystemService;
.super Lcom/android/server/SystemService;
.source "AbstractMasterSystemService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/infra/AbstractMasterSystemService$SettingsObserver;,
        Lcom/android/server/infra/AbstractMasterSystemService$Visitor;,
        Lcom/android/server/infra/AbstractMasterSystemService$ServicePackagePolicyFlags;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/android/server/infra/AbstractMasterSystemService<",
        "TM;TS;>;S:",
        "Lcom/android/server/infra/AbstractPerUserSystemService<",
        "TS;TM;>;>",
        "Lcom/android/server/SystemService;"
    }
.end annotation


# static fields
.field public static final PACKAGE_RESTART_POLICY_NO_REFRESH:I = 0x10

.field public static final PACKAGE_RESTART_POLICY_REFRESH_EAGER:I = 0x40

.field public static final PACKAGE_RESTART_POLICY_REFRESH_LAZY:I = 0x20

.field public static final PACKAGE_UPDATE_POLICY_NO_REFRESH:I = 0x1

.field public static final PACKAGE_UPDATE_POLICY_REFRESH_EAGER:I = 0x4

.field public static final PACKAGE_UPDATE_POLICY_REFRESH_LAZY:I = 0x2


# instance fields
.field public debug:Z

.field protected mAllowInstantService:Z

.field private final mDisabledByUserRestriction:Landroid/util/SparseBooleanArray;

.field protected final mLock:Ljava/lang/Object;

.field protected final mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

.field private final mServicePackagePolicyFlags:I

.field private final mServicesCacheList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "TS;>;>;"
        }
    .end annotation
.end field

.field protected final mTag:Ljava/lang/String;

.field private mUm:Lcom/android/server/pm/UserManagerInternal;

.field private mUpdatingPackageNames:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public verbose:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmServicePackagePolicyFlags(Lcom/android/server/infra/AbstractMasterSystemService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicePackagePolicyFlags:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmServicesCacheList(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCacheList:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUpdatingPackageNames(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mUpdatingPackageNames:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmUpdatingPackageNames(Lcom/android/server/infra/AbstractMasterSystemService;Landroid/util/SparseArray;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mUpdatingPackageNames:Landroid/util/SparseArray;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/server/infra/ServiceNameResolver;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceNameResolver"    # Lcom/android/server/infra/ServiceNameResolver;
    .param p3, "disallowProperty"    # Ljava/lang/String;

    .line 212
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    const/16 v0, 0x22

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/infra/AbstractMasterSystemService;-><init>(Landroid/content/Context;Lcom/android/server/infra/ServiceNameResolver;Ljava/lang/String;I)V

    .line 214
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/server/infra/ServiceNameResolver;Ljava/lang/String;I)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceNameResolver"    # Lcom/android/server/infra/ServiceNameResolver;
    .param p3, "disallowProperty"    # Ljava/lang/String;
    .param p4, "servicePackagePolicyFlags"    # I

    .line 237
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 130
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    .line 136
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 155
    iput-boolean v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 174
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCacheList:Landroid/util/SparseArray;

    .line 239
    const/4 v0, 0x7

    .line 241
    .local v0, "updatePolicyMask":I
    and-int/lit8 v1, p4, 0x7

    if-nez v1, :cond_27

    .line 243
    or-int/lit8 p4, p4, 0x2

    .line 245
    :cond_27
    const/16 v1, 0x70

    .line 247
    .local v1, "restartPolicyMask":I
    and-int/lit8 v2, p4, 0x70

    if-nez v2, :cond_2f

    .line 249
    or-int/lit8 p4, p4, 0x20

    .line 251
    :cond_2f
    iput p4, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicePackagePolicyFlags:I

    .line 253
    iput-object p2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    .line 254
    if-eqz p2, :cond_3d

    .line 255
    new-instance v2, Lcom/android/server/infra/AbstractMasterSystemService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/infra/AbstractMasterSystemService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;)V

    invoke-interface {p2, v2}, Lcom/android/server/infra/ServiceNameResolver;->setOnTemporaryServiceNameChangedCallback(Lcom/android/server/infra/ServiceNameResolver$NameResolverListener;)V

    .line 258
    :cond_3d
    if-nez p3, :cond_43

    .line 259
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mDisabledByUserRestriction:Landroid/util/SparseBooleanArray;

    goto :goto_8f

    .line 261
    :cond_43
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mDisabledByUserRestriction:Landroid/util/SparseBooleanArray;

    .line 263
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v2

    .line 264
    .local v2, "umi":Lcom/android/server/pm/UserManagerInternal;
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->getSupportedUsers()Ljava/util/List;

    move-result-object v3

    .line 265
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_53
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_87

    .line 266
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    .line 267
    .local v5, "userId":I
    invoke-virtual {v2, v5, p3}, Lcom/android/server/pm/UserManagerInternal;->getUserRestriction(ILjava/lang/String;)Z

    move-result v6

    .line 268
    .local v6, "disabled":Z
    if-eqz v6, :cond_84

    .line 269
    iget-object v7, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Disabling by restrictions user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v7, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mDisabledByUserRestriction:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v5, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 265
    .end local v5    # "userId":I
    .end local v6    # "disabled":Z
    :cond_84
    add-int/lit8 v4, v4, 0x1

    goto :goto_53

    .line 273
    .end local v4    # "i":I
    :cond_87
    new-instance v4, Lcom/android/server/infra/AbstractMasterSystemService$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, p3}, Lcom/android/server/infra/AbstractMasterSystemService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/android/server/pm/UserManagerInternal;->addUserRestrictionsListener(Lcom/android/server/pm/UserManagerInternal$UserRestrictionsListener;)V

    .line 291
    .end local v2    # "umi":Lcom/android/server/pm/UserManagerInternal;
    .end local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :goto_8f
    invoke-direct {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->startTrackingPackageChanges()V

    .line 292
    return-void
.end method

.method private startTrackingPackageChanges()V
    .registers 6

    .line 966
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    new-instance v0, Lcom/android/server/infra/AbstractMasterSystemService$1;

    invoke-direct {v0, p0}, Lcom/android/server/infra/AbstractMasterSystemService$1;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;)V

    .line 1189
    .local v0, "monitor":Lcom/android/internal/content/PackageMonitor;
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 1190
    return-void
.end method


# virtual methods
.method protected assertCalledByPackageOwner(Ljava/lang/String;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .line 877
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 879
    .local v0, "uid":I
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 880
    .local v1, "packages":[Ljava/lang/String;
    if-eqz v1, :cond_25

    .line 881
    array-length v2, v1

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_25

    aget-object v4, v1, v3

    .line 882
    .local v4, "candidate":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    return-void

    .line 881
    .end local v4    # "candidate":Ljava/lang/String;
    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 885
    :cond_25
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not own "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected clearCacheLocked()V
    .registers 2

    .line 838
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCacheList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 839
    return-void
.end method

.method protected dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 14
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 891
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    iget-boolean v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 892
    .local v0, "realDebug":Z
    iget-boolean v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 893
    .local v1, "realVerbose":Z
    const-string v2, "    "

    .line 897
    .local v2, "prefix2":Ljava/lang/String;
    const/4 v3, 0x1

    :try_start_7
    iput-boolean v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    iput-boolean v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 898
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCacheList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 899
    .local v3, "size":I
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 900
    const-string v4, "Debug: "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 901
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 902
    const-string v4, " Verbose: "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 903
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 904
    const-string v4, "Package policy flags: "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 905
    iget v4, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicePackagePolicyFlags:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 906
    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mUpdatingPackageNames:Landroid/util/SparseArray;

    if-eqz v4, :cond_3c

    .line 907
    const-string v4, "Packages being updated: "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 908
    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mUpdatingPackageNames:Landroid/util/SparseArray;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 910
    :cond_3c
    invoke-virtual {p0, p2, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->dumpSupportedUsers(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 911
    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    if-eqz v4, :cond_7e

    .line 912
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 913
    const-string v4, "Name resolver: "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 914
    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    invoke-interface {v4, p2}, Lcom/android/server/infra/ServiceNameResolver;->dumpShort(Ljava/io/PrintWriter;)V

    .line 915
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 916
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->getSupportedUsers()Ljava/util/List;

    move-result-object v4

    .line 917
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_58
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_7e

    .line 918
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    .line 919
    .local v6, "userId":I
    const-string v7, "    "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 920
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 921
    const-string v7, ": "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 922
    iget-object v7, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    invoke-interface {v7, p2, v6}, Lcom/android/server/infra/ServiceNameResolver;->dumpShort(Ljava/io/PrintWriter;I)V

    .line 923
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 917
    .end local v6    # "userId":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_58

    .line 926
    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v5    # "i":I
    :cond_7e
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 927
    const-string v4, "Users disabled by restriction: "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 928
    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mDisabledByUserRestriction:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 929
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 930
    const-string v4, "Allow instant service: "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 931
    iget-boolean v4, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mAllowInstantService:Z

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 932
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceSettingsProperty()Ljava/lang/String;

    move-result-object v4

    .line 933
    .local v4, "settingsProperty":Ljava/lang/String;
    if-eqz v4, :cond_a9

    .line 934
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 935
    const-string v5, "Settings property: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 936
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 938
    :cond_a9
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 939
    const-string v5, "Cached services: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 940
    if-nez v3, :cond_ba

    .line 941
    const-string/jumbo v5, "none"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_fa

    .line 943
    :cond_ba
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 944
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_be
    if-ge v5, v3, :cond_fa

    .line 945
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 946
    const-string v6, "Service at "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 947
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 948
    const-string v6, ": "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 949
    iget-object v6, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCacheList:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 950
    .local v6, "services":Ljava/util/List;, "Ljava/util/List<TS;>;"
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_d9
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_f4

    .line 951
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 952
    .local v8, "service":Lcom/android/server/infra/AbstractPerUserSystemService;, "TS;"
    iget-object v9, v8, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_e8
    .catchall {:try_start_7 .. :try_end_e8} :catchall_100

    .line 953
    :try_start_e8
    const-string v10, "    "

    invoke-virtual {v8, v10, p2}, Lcom/android/server/infra/AbstractPerUserSystemService;->dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 954
    monitor-exit v9

    .line 950
    .end local v8    # "service":Lcom/android/server/infra/AbstractPerUserSystemService;, "TS;"
    add-int/lit8 v7, v7, 0x1

    goto :goto_d9

    .line 954
    .restart local v8    # "service":Lcom/android/server/infra/AbstractPerUserSystemService;, "TS;"
    :catchall_f1
    move-exception v10

    monitor-exit v9
    :try_end_f3
    .catchall {:try_start_e8 .. :try_end_f3} :catchall_f1

    .end local v0    # "realDebug":Z
    .end local v1    # "realVerbose":Z
    .end local v2    # "prefix2":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    .end local p1    # "prefix":Ljava/lang/String;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    :try_start_f3
    throw v10

    .line 956
    .end local v7    # "j":I
    .end local v8    # "service":Lcom/android/server/infra/AbstractPerUserSystemService;, "TS;"
    .restart local v0    # "realDebug":Z
    .restart local v1    # "realVerbose":Z
    .restart local v2    # "prefix2":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    .restart local p1    # "prefix":Ljava/lang/String;
    .restart local p2    # "pw":Ljava/io/PrintWriter;
    :cond_f4
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V
    :try_end_f7
    .catchall {:try_start_f3 .. :try_end_f7} :catchall_100

    .line 944
    .end local v6    # "services":Ljava/util/List;, "Ljava/util/List<TS;>;"
    add-int/lit8 v5, v5, 0x1

    goto :goto_be

    .line 960
    .end local v3    # "size":I
    .end local v4    # "settingsProperty":Ljava/lang/String;
    .end local v5    # "i":I
    :cond_fa
    :goto_fa
    iput-boolean v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 961
    iput-boolean v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 962
    nop

    .line 963
    return-void

    .line 960
    :catchall_100
    move-exception v3

    iput-boolean v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 961
    iput-boolean v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 962
    throw v3
.end method

.method protected enforceCallingPermissionForManagement()V
    .registers 4

    .line 525
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not implemented by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getAllowInstantService()Z
    .registers 3

    .line 323
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->enforceCallingPermissionForManagement()V

    .line 324
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 325
    :try_start_6
    iget-boolean v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mAllowInstantService:Z

    monitor-exit v0

    return v1

    .line 326
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw v1
.end method

.method protected getMaximumTemporaryServiceDurationMs()I
    .registers 4

    .line 495
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not implemented by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TS;"
        }
    .end annotation

    .line 593
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceListForUserLocked(I)Ljava/util/List;

    move-result-object v0

    .line 594
    .local v0, "services":Ljava/util/List;, "Ljava/util/List<TS;>;"
    if-eqz v0, :cond_15

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_d

    goto :goto_15

    :cond_d
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/infra/AbstractPerUserSystemService;

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v1, 0x0

    :goto_16
    return-object v1
.end method

.method protected getServiceListForUserLocked(I)Ljava/util/List;
    .registers 9
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "TS;>;"
        }
    .end annotation

    .line 602
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 603
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 602
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 604
    .local v0, "resolvedUserId":I
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCacheList:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 605
    .local v1, "services":Ljava/util/List;, "Ljava/util/List<TS;>;"
    if-eqz v1, :cond_21

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_61

    .line 606
    :cond_21
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->isDisabledLocked(I)Z

    move-result v2

    .line 607
    .local v2, "disabled":Z
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    if-eqz v3, :cond_3a

    invoke-interface {v3}, Lcom/android/server/infra/ServiceNameResolver;->isConfiguredInMultipleMode()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 608
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    .line 609
    invoke-interface {v3, p1}, Lcom/android/server/infra/ServiceNameResolver;->getServiceNameList(I)[Ljava/lang/String;

    move-result-object v3

    .line 608
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/infra/AbstractMasterSystemService;->newServiceListLocked(IZ[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_47

    .line 611
    :cond_3a
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v3

    .line 612
    invoke-virtual {p0, v0, v2}, Lcom/android/server/infra/AbstractMasterSystemService;->newServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 614
    :goto_47
    if-nez v2, :cond_5c

    .line 615
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5c

    .line 616
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/infra/AbstractPerUserSystemService;

    invoke-virtual {p0, v4, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->onServiceEnabledLocked(Lcom/android/server/infra/AbstractPerUserSystemService;I)V

    .line 615
    add-int/lit8 v3, v3, 0x1

    goto :goto_4a

    .line 619
    .end local v3    # "i":I
    :cond_5c
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCacheList:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 621
    .end local v2    # "disabled":Z
    :cond_61
    return-object v1
.end method

.method protected getServiceSettingsProperty()Ljava/lang/String;
    .registers 2

    .line 714
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getSupportedUsers()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 859
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserInfos()[Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 860
    .local v0, "allUsers":[Landroid/content/pm/UserInfo;
    array-length v1, v0

    .line 861
    .local v1, "size":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 862
    .local v2, "supportedUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v1, :cond_24

    .line 863
    aget-object v4, v0, v3

    .line 864
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    new-instance v5, Lcom/android/server/SystemService$TargetUser;

    invoke-direct {v5, v4}, Lcom/android/server/SystemService$TargetUser;-><init>(Landroid/content/pm/UserInfo;)V

    invoke-virtual {p0, v5}, Lcom/android/server/infra/AbstractMasterSystemService;->isUserSupported(Lcom/android/server/SystemService$TargetUser;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 865
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 862
    .end local v4    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 868
    .end local v3    # "i":I
    :cond_24
    return-object v2
.end method

.method protected getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;
    .registers 3

    .line 846
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mUm:Lcom/android/server/pm/UserManagerInternal;

    if-nez v0, :cond_1a

    .line 847
    iget-boolean v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "lazy-loading UserManagerInternal"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    :cond_10
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mUm:Lcom/android/server/pm/UserManagerInternal;

    .line 850
    :cond_1a
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mUm:Lcom/android/server/pm/UserManagerInternal;

    return-object v0
.end method

.method public final isBindInstantServiceAllowed()Z
    .registers 3

    .line 338
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 339
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mAllowInstantService:Z

    monitor-exit v0

    return v1

    .line 340
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final isDefaultServiceEnabled(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 478
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->enforceCallingPermissionForManagement()V

    .line 480
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    if-nez v0, :cond_9

    .line 481
    const/4 v0, 0x0

    return v0

    .line 484
    :cond_9
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 485
    :try_start_c
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    invoke-interface {v1, p1}, Lcom/android/server/infra/ServiceNameResolver;->isDefaultServiceEnabled(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 486
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v1
.end method

.method protected isDisabledLocked(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 661
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mDisabledByUserRestriction:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method synthetic lambda$new$0$com-android-server-infra-AbstractMasterSystemService(Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 11
    .param p1, "disallowProperty"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "newRestrictions"    # Landroid/os/Bundle;
    .param p4, "prevRestrictions"    # Landroid/os/Bundle;

    .line 274
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    nop

    .line 275
    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 276
    .local v0, "disabledNow":Z
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 277
    :try_start_9
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mDisabledByUserRestriction:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    .line 278
    .local v2, "disabledBefore":Z
    if-ne v2, v0, :cond_2f

    .line 280
    iget-boolean v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v3, :cond_2f

    .line 281
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restriction did not change for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    monitor-exit v1

    return-void

    .line 285
    :cond_2f
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Updating for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": disabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mDisabledByUserRestriction:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 287
    invoke-virtual {p0, p2, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 288
    nop

    .end local v2    # "disabledBefore":Z
    monitor-exit v1

    .line 289
    return-void

    .line 288
    :catchall_5c
    move-exception v2

    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_9 .. :try_end_5e} :catchall_5c

    throw v2
.end method

.method protected newServiceListLocked(IZ[Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .param p1, "resolvedUserId"    # I
    .param p2, "disabled"    # Z
    .param p3, "serviceNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TS;>;"
        }
    .end annotation

    .line 552
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "newServiceListLocked not implemented. "

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract newServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)TS;"
        }
    .end annotation
.end method

.method public onBootPhase(I)V
    .registers 4
    .param p1, "phase"    # I

    .line 296
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    const/16 v0, 0x258

    if-ne p1, v0, :cond_d

    .line 297
    new-instance v0, Lcom/android/server/infra/AbstractMasterSystemService$SettingsObserver;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/infra/AbstractMasterSystemService$SettingsObserver;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Landroid/os/Handler;)V

    .line 299
    :cond_d
    return-void
.end method

.method protected onServiceEnabledLocked(Lcom/android/server/infra/AbstractPerUserSystemService;I)V
    .registers 3
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;I)V"
        }
    .end annotation

    .line 726
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    .local p1, "service":Lcom/android/server/infra/AbstractPerUserSystemService;, "TS;"
    return-void
.end method

.method protected onServiceNameChanged(ILjava/lang/String;Z)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "serviceName"    # Ljava/lang/String;
    .param p3, "isTemporary"    # Z

    .line 797
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 798
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->isDisabledLocked(I)Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceListLocked(IZ)Ljava/util/List;

    .line 799
    monitor-exit v0

    .line 800
    return-void

    .line 799
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method protected onServiceNameListChanged(I[Ljava/lang/String;Z)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "serviceNames"    # [Ljava/lang/String;
    .param p3, "isTemporary"    # Z

    .line 814
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 815
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->isDisabledLocked(I)Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceListLocked(IZ)Ljava/util/List;

    .line 816
    monitor-exit v0

    .line 817
    return-void

    .line 816
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method protected onServicePackageDataClearedLocked(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 767
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    iget-boolean v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServicePackageDataCleared("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    :cond_23
    return-void
.end method

.method protected onServicePackageRestartedLocked(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 775
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    iget-boolean v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServicePackageRestarted("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    :cond_23
    return-void
.end method

.method protected onServicePackageUpdatedLocked(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 759
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    iget-boolean v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServicePackageUpdated("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    :cond_23
    return-void
.end method

.method protected onServicePackageUpdatingLocked(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 751
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    iget-boolean v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServicePackageUpdatingLocked("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    :cond_23
    return-void
.end method

.method protected onServiceRemoved(Lcom/android/server/infra/AbstractPerUserSystemService;I)V
    .registers 3
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;I)V"
        }
    .end annotation

    .line 783
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    .local p1, "service":Lcom/android/server/infra/AbstractPerUserSystemService;, "TS;"
    return-void
.end method

.method protected onSettingsChanged(ILjava/lang/String;)V
    .registers 3
    .param p1, "userId"    # I
    .param p2, "property"    # Ljava/lang/String;

    .line 585
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    return-void
.end method

.method public onUserStopped(Lcom/android/server/SystemService$TargetUser;)V
    .registers 4
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 310
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 311
    :try_start_3
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->removeCachedServiceListLocked(I)Ljava/util/List;

    .line 312
    monitor-exit v0

    .line 313
    return-void

    .line 312
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .registers 4
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 303
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 304
    :try_start_3
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceLocked(I)V

    .line 305
    monitor-exit v0

    .line 306
    return-void

    .line 305
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method protected peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TS;"
        }
    .end annotation

    .line 631
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceListForUserLocked(I)Ljava/util/List;

    move-result-object v0

    .line 632
    .local v0, "serviceList":Ljava/util/List;, "Ljava/util/List<TS;>;"
    if-eqz v0, :cond_15

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_d

    goto :goto_15

    :cond_d
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/infra/AbstractPerUserSystemService;

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v1, 0x0

    :goto_16
    return-object v1
.end method

.method protected peekServiceListForUserLocked(I)Ljava/util/List;
    .registers 9
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "TS;>;"
        }
    .end annotation

    .line 642
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 643
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 642
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 644
    .local v0, "resolvedUserId":I
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCacheList:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method protected registerForExtraSettingsChanges(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .registers 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "observer"    # Landroid/database/ContentObserver;

    .line 575
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    return-void
.end method

.method protected final removeCachedServiceListLocked(I)Ljava/util/List;
    .registers 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "TS;>;"
        }
    .end annotation

    .line 736
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceListForUserLocked(I)Ljava/util/List;

    move-result-object v0

    .line 737
    .local v0, "services":Ljava/util/List;, "Ljava/util/List<TS;>;"
    if-eqz v0, :cond_1e

    .line 738
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCacheList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 739
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 740
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/infra/AbstractPerUserSystemService;

    invoke-virtual {p0, v2, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->onServiceRemoved(Lcom/android/server/infra/AbstractPerUserSystemService;I)V

    .line 739
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 743
    .end local v1    # "i":I
    :cond_1e
    return-object v0
.end method

.method public final resetTemporaryService(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 506
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetTemporaryService(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->enforceCallingPermissionForManagement()V

    .line 508
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 509
    :try_start_1f
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    .line 510
    .local v1, "service":Lcom/android/server/infra/AbstractPerUserSystemService;, "TS;"
    if-eqz v1, :cond_28

    .line 511
    invoke-virtual {v1}, Lcom/android/server/infra/AbstractPerUserSystemService;->resetTemporaryServiceLocked()V

    .line 513
    .end local v1    # "service":Lcom/android/server/infra/AbstractPerUserSystemService;, "TS;"
    :cond_28
    monitor-exit v0

    .line 514
    return-void

    .line 513
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_1f .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public final setAllowInstantService(Z)V
    .registers 5
    .param p1, "mode"    # Z

    .line 351
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAllowInstantService(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->enforceCallingPermissionForManagement()V

    .line 353
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 354
    :try_start_1f
    iput-boolean p1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mAllowInstantService:Z

    .line 355
    monitor-exit v0

    .line 356
    return-void

    .line 355
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_23

    throw v1
.end method

.method public final setDefaultServiceEnabled(IZ)Z
    .registers 9
    .param p1, "userId"    # I
    .param p2, "enabled"    # Z

    .line 443
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDefaultServiceEnabled() for userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->enforceCallingPermissionForManagement()V

    .line 446
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 447
    :try_start_29
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    const/4 v2, 0x0

    if-nez v1, :cond_30

    .line 448
    monitor-exit v0

    return v2

    .line 450
    :cond_30
    invoke-interface {v1, p1, p2}, Lcom/android/server/infra/ServiceNameResolver;->setDefaultServiceEnabled(IZ)Z

    move-result v1

    .line 451
    .local v1, "changed":Z
    if-nez v1, :cond_5f

    .line 452
    iget-boolean v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v3, :cond_5d

    .line 453
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDefaultServiceEnabled("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): already "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_5d
    monitor-exit v0

    return v2

    .line 458
    :cond_5f
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    .line 459
    .local v2, "oldService":Lcom/android/server/infra/AbstractPerUserSystemService;, "TS;"
    if-eqz v2, :cond_68

    .line 460
    invoke-virtual {v2}, Lcom/android/server/infra/AbstractPerUserSystemService;->removeSelfFromCache()V

    .line 464
    :cond_68
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceLocked(I)V

    .line 465
    .end local v1    # "changed":Z
    .end local v2    # "oldService":Lcom/android/server/infra/AbstractPerUserSystemService;, "TS;"
    monitor-exit v0

    .line 466
    const/4 v0, 0x1

    return v0

    .line 465
    :catchall_6e
    move-exception v1

    monitor-exit v0
    :try_end_70
    .catchall {:try_start_29 .. :try_end_70} :catchall_6e

    throw v1
.end method

.method public final setTemporaryService(ILjava/lang/String;I)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "componentName"    # Ljava/lang/String;
    .param p3, "durationMs"    # I

    .line 372
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTemporaryService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    if-nez v0, :cond_39

    .line 375
    return-void

    .line 377
    :cond_39
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->enforceCallingPermissionForManagement()V

    .line 379
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->getMaximumTemporaryServiceDurationMs()I

    move-result v0

    .line 381
    .local v0, "maxDurationMs":I
    if-gt p3, v0, :cond_5b

    .line 386
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 387
    :try_start_48
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    .line 388
    .local v2, "oldService":Lcom/android/server/infra/AbstractPerUserSystemService;, "TS;"
    if-eqz v2, :cond_51

    .line 389
    invoke-virtual {v2}, Lcom/android/server/infra/AbstractPerUserSystemService;->removeSelfFromCache()V

    .line 391
    :cond_51
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    invoke-interface {v3, p1, p2, p3}, Lcom/android/server/infra/ServiceNameResolver;->setTemporaryService(ILjava/lang/String;I)V

    .line 392
    .end local v2    # "oldService":Lcom/android/server/infra/AbstractPerUserSystemService;, "TS;"
    monitor-exit v1

    .line 393
    return-void

    .line 392
    :catchall_58
    move-exception v2

    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_48 .. :try_end_5a} :catchall_58

    throw v2

    .line 382
    :cond_5b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Max duration is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (called with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final setTemporaryServices(I[Ljava/lang/String;I)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "componentNames"    # [Ljava/lang/String;
    .param p3, "durationMs"    # I

    .line 410
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTemporaryService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    if-nez v0, :cond_3d

    .line 413
    return-void

    .line 415
    :cond_3d
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->enforceCallingPermissionForManagement()V

    .line 417
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->getMaximumTemporaryServiceDurationMs()I

    move-result v0

    .line 419
    .local v0, "maxDurationMs":I
    if-gt p3, v0, :cond_5f

    .line 424
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 425
    :try_start_4c
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    .line 426
    .local v2, "oldService":Lcom/android/server/infra/AbstractPerUserSystemService;, "TS;"
    if-eqz v2, :cond_55

    .line 427
    invoke-virtual {v2}, Lcom/android/server/infra/AbstractPerUserSystemService;->removeSelfFromCache()V

    .line 429
    :cond_55
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    invoke-interface {v3, p1, p2, p3}, Lcom/android/server/infra/ServiceNameResolver;->setTemporaryServices(I[Ljava/lang/String;I)V

    .line 430
    .end local v2    # "oldService":Lcom/android/server/infra/AbstractPerUserSystemService;, "TS;"
    monitor-exit v1

    .line 431
    return-void

    .line 430
    :catchall_5c
    move-exception v2

    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_4c .. :try_end_5e} :catchall_5c

    throw v2

    .line 420
    :cond_5f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Max duration is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (called with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected updateCachedServiceListLocked(IZ)Ljava/util/List;
    .registers 8
    .param p1, "userId"    # I
    .param p2, "disabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "TS;>;"
        }
    .end annotation

    .line 687
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceListForUserLocked(I)Ljava/util/List;

    move-result-object v0

    .line 688
    .local v0, "services":Ljava/util/List;, "Ljava/util/List<TS;>;"
    if-nez v0, :cond_8

    .line 689
    const/4 v1, 0x0

    return-object v1

    .line 691
    :cond_8
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_38

    .line 692
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 693
    .local v2, "service":Lcom/android/server/infra/AbstractPerUserSystemService;, "TS;"
    if-eqz v2, :cond_35

    .line 694
    iget-object v3, v2, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 695
    :try_start_1a
    invoke-virtual {v2, p2}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateLocked(Z)Z

    .line 696
    invoke-virtual {v2}, Lcom/android/server/infra/AbstractPerUserSystemService;->isEnabledLocked()Z

    move-result v4

    if-nez v4, :cond_27

    .line 697
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->removeCachedServiceListLocked(I)Ljava/util/List;

    goto :goto_30

    .line 699
    :cond_27
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/infra/AbstractPerUserSystemService;

    invoke-virtual {p0, v4, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->onServiceEnabledLocked(Lcom/android/server/infra/AbstractPerUserSystemService;I)V

    .line 701
    :goto_30
    monitor-exit v3

    goto :goto_35

    :catchall_32
    move-exception v4

    monitor-exit v3
    :try_end_34
    .catchall {:try_start_1a .. :try_end_34} :catchall_32

    throw v4

    .line 691
    .end local v2    # "service":Lcom/android/server/infra/AbstractPerUserSystemService;, "TS;"
    :cond_35
    :goto_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 704
    .end local v1    # "i":I
    :cond_38
    return-object v0
.end method

.method protected updateCachedServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 4
    .param p1, "userId"    # I
    .param p2, "disabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)TS;"
        }
    .end annotation

    .line 673
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    .line 674
    .local v0, "service":Lcom/android/server/infra/AbstractPerUserSystemService;, "TS;"
    invoke-virtual {p0, p1, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceListLocked(IZ)Ljava/util/List;

    .line 675
    return-object v0
.end method

.method protected updateCachedServiceLocked(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 652
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->isDisabledLocked(I)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceListLocked(IZ)Ljava/util/List;

    .line 653
    return-void
.end method

.method protected visitServicesLocked(Lcom/android/server/infra/AbstractMasterSystemService$Visitor;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/infra/AbstractMasterSystemService$Visitor<",
            "TS;>;)V"
        }
    .end annotation

    .line 824
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>;"
    .local p1, "visitor":Lcom/android/server/infra/AbstractMasterSystemService$Visitor;, "Lcom/android/server/infra/AbstractMasterSystemService$Visitor<TS;>;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCacheList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 825
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_27

    .line 826
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCacheList:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 827
    .local v2, "services":Ljava/util/List;, "Ljava/util/List<TS;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_12
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_24

    .line 828
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/infra/AbstractPerUserSystemService;

    invoke-interface {p1, v4}, Lcom/android/server/infra/AbstractMasterSystemService$Visitor;->visit(Ljava/lang/Object;)V

    .line 827
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 825
    .end local v2    # "services":Ljava/util/List;, "Ljava/util/List<TS;>;"
    .end local v3    # "j":I
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 831
    .end local v1    # "i":I
    :cond_27
    return-void
.end method
