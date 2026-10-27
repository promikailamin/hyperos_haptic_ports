.class public final Lcom/android/server/pm/SharedUserSetting;
.super Lcom/android/server/pm/SettingBase;
.source "SharedUserSetting.java"

# interfaces
.implements Lcom/android/server/pm/pkg/SharedUserApi;


# instance fields
.field mAppId:I

.field final mDisabledPackages:Lcom/android/server/utils/WatchedArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArraySet<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisabledPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/utils/WatchedArraySet<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mObserver:Lcom/android/server/utils/Watcher;

.field private final mPackages:Lcom/android/server/utils/WatchedArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArraySet<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/utils/WatchedArraySet<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/pm/SharedUserSetting;",
            ">;"
        }
    .end annotation
.end field

.field final name:Ljava/lang/String;

.field final processes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/component/ParsedProcess;",
            ">;"
        }
    .end annotation
.end field

.field seInfoTargetSdkVersion:I

.field final signatures:Lcom/android/server/pm/PackageSignatures;

.field signaturesChanged:Ljava/lang/Boolean;

.field uidFlags:I

.field uidPrivateFlags:I


# direct methods
.method private constructor <init>(Lcom/android/server/pm/SharedUserSetting;)V
    .registers 4
    .param p1, "orig"    # Lcom/android/server/pm/SharedUserSetting;

    .line 119
    invoke-direct {p0, p1}, Lcom/android/server/pm/SettingBase;-><init>(Lcom/android/server/pm/SettingBase;)V

    .line 75
    new-instance v0, Lcom/android/server/pm/SharedUserSetting$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/SharedUserSetting$1;-><init>(Lcom/android/server/pm/SharedUserSetting;)V

    iput-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->mObserver:Lcom/android/server/utils/Watcher;

    .line 82
    new-instance v0, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v0}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 120
    iget-object v1, p1, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    .line 121
    iget v1, p1, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    iput v1, p0, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    .line 122
    iget v1, p1, Lcom/android/server/pm/SharedUserSetting;->uidFlags:I

    iput v1, p0, Lcom/android/server/pm/SharedUserSetting;->uidFlags:I

    .line 123
    iget v1, p1, Lcom/android/server/pm/SharedUserSetting;->uidPrivateFlags:I

    iput v1, p0, Lcom/android/server/pm/SharedUserSetting;->uidPrivateFlags:I

    .line 124
    iget-object v1, p1, Lcom/android/server/pm/SharedUserSetting;->mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v1}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/utils/WatchedArraySet;

    iput-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    .line 125
    new-instance v1, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {v1}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 126
    iget-object v1, p1, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v1}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/utils/WatchedArraySet;

    iput-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackages:Lcom/android/server/utils/WatchedArraySet;

    .line 127
    new-instance v1, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {v1}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 130
    iget-object v1, p1, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v1, v1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    iput-object v1, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 131
    iget-object v0, p1, Lcom/android/server/pm/SharedUserSetting;->signaturesChanged:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->signaturesChanged:Ljava/lang/Boolean;

    .line 132
    new-instance v0, Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/pm/SharedUserSetting;->processes:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    iput-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->processes:Landroid/util/ArrayMap;

    .line 133
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {v0}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 134
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/SharedUserSetting-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/SharedUserSetting;-><init>(Lcom/android/server/pm/SharedUserSetting;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;II)V
    .registers 7
    .param p1, "_name"    # Ljava/lang/String;
    .param p2, "_pkgFlags"    # I
    .param p3, "_pkgPrivateFlags"    # I

    .line 101
    invoke-direct {p0, p2, p3}, Lcom/android/server/pm/SettingBase;-><init>(II)V

    .line 75
    new-instance v0, Lcom/android/server/pm/SharedUserSetting$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/SharedUserSetting$1;-><init>(Lcom/android/server/pm/SharedUserSetting;)V

    iput-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->mObserver:Lcom/android/server/utils/Watcher;

    .line 82
    new-instance v0, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v0}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 102
    iput p2, p0, Lcom/android/server/pm/SharedUserSetting;->uidFlags:I

    .line 103
    iput p3, p0, Lcom/android/server/pm/SharedUserSetting;->uidPrivateFlags:I

    .line 104
    iput-object p1, p0, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    .line 105
    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/server/pm/SharedUserSetting;->seInfoTargetSdkVersion:I

    .line 106
    new-instance v0, Lcom/android/server/utils/WatchedArraySet;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    .line 107
    new-instance v1, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v2, "SharedUserSetting.packages"

    invoke-direct {v1, v0, v0, v2}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 109
    new-instance v0, Lcom/android/server/utils/WatchedArraySet;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackages:Lcom/android/server/utils/WatchedArraySet;

    .line 110
    new-instance v1, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v2, "SharedUserSetting.mDisabledPackages"

    invoke-direct {v1, v0, v0, v2}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 112
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->processes:Landroid/util/ArrayMap;

    .line 113
    invoke-direct {p0}, Lcom/android/server/pm/SharedUserSetting;->registerObservers()V

    .line 114
    invoke-direct {p0}, Lcom/android/server/pm/SharedUserSetting;->makeCache()Lcom/android/server/utils/SnapshotCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 115
    return-void
.end method

.method private makeCache()Lcom/android/server/utils/SnapshotCache;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/pm/SharedUserSetting;",
            ">;"
        }
    .end annotation

    .line 93
    new-instance v0, Lcom/android/server/pm/SharedUserSetting$2;

    invoke-direct {v0, p0, p0, p0}, Lcom/android/server/pm/SharedUserSetting$2;-><init>(Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/utils/Watchable;)V

    return-object v0
.end method

.method private registerObservers()V
    .registers 3

    .line 137
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    iget-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArraySet;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 138
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackages:Lcom/android/server/utils/WatchedArraySet;

    iget-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArraySet;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 139
    return-void
.end method


# virtual methods
.method addPackage(Lcom/android/server/pm/PackageSetting;)V
    .registers 4
    .param p1, "packageSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 207
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 208
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/SharedUserSetting;->seInfoTargetSdkVersion:I

    .line 210
    :cond_18
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 211
    invoke-virtual {p0}, Lcom/android/server/pm/SharedUserSetting;->getFlags()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getFlags()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/server/pm/SharedUserSetting;->setFlags(I)Lcom/android/server/pm/SettingBase;

    .line 212
    invoke-virtual {p0}, Lcom/android/server/pm/SharedUserSetting;->getPrivateFlags()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPrivateFlags()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/server/pm/SharedUserSetting;->setPrivateFlags(I)Lcom/android/server/pm/SettingBase;

    .line 213
    invoke-virtual {p0}, Lcom/android/server/pm/SharedUserSetting;->onChanged()V

    .line 215
    :cond_3b
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 216
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProcesses()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/SharedUserSetting;->addProcesses(Ljava/util/Map;)V

    .line 218
    :cond_4c
    return-void
.end method

.method addProcesses(Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/component/ParsedProcess;",
            ">;)V"
        }
    .end annotation

    .line 162
    .local p1, "newProcs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/pkg/component/ParsedProcess;>;"
    if-eqz p1, :cond_41

    .line 163
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 164
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedProcess;

    .line 165
    .local v2, "newProc":Lcom/android/server/pm/pkg/component/ParsedProcess;
    iget-object v3, p0, Lcom/android/server/pm/SharedUserSetting;->processes:Landroid/util/ArrayMap;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedProcess;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/component/ParsedProcess;

    .line 166
    .local v3, "proc":Lcom/android/server/pm/pkg/component/ParsedProcess;
    if-nez v3, :cond_3a

    .line 167
    new-instance v4, Lcom/android/server/pm/pkg/component/ParsedProcessImpl;

    invoke-direct {v4, v2}, Lcom/android/server/pm/pkg/component/ParsedProcessImpl;-><init>(Lcom/android/server/pm/pkg/component/ParsedProcess;)V

    move-object v3, v4

    .line 168
    iget-object v4, p0, Lcom/android/server/pm/SharedUserSetting;->processes:Landroid/util/ArrayMap;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedProcess;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3d

    .line 170
    :cond_3a
    invoke-static {v3, v2}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->addStateFrom(Lcom/android/server/pm/pkg/component/ParsedProcess;Lcom/android/server/pm/pkg/component/ParsedProcess;)V

    .line 172
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "newProc":Lcom/android/server/pm/pkg/component/ParsedProcess;
    .end local v3    # "proc":Lcom/android/server/pm/pkg/component/ParsedProcess;
    :goto_3d
    goto :goto_a

    .line 173
    :cond_3e
    invoke-virtual {p0}, Lcom/android/server/pm/SharedUserSetting;->onChanged()V

    .line 175
    :cond_41
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 155
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 156
    .local v0, "token":J
    iget v2, p0, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 157
    iget-object v2, p0, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    const-wide v3, 0x10900000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 158
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 159
    return-void
.end method

.method public fixSeInfoLocked()V
    .registers 7

    .line 268
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    if-eqz v0, :cond_81

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_81

    .line 271
    :cond_c
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    iget-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_42

    .line 272
    iget-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v1, v0}, Lcom/android/server/utils/WatchedArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 273
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_3f

    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    if-nez v2, :cond_26

    .line 274
    goto :goto_3f

    .line 276
    :cond_26
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v2

    iget v3, p0, Lcom/android/server/pm/SharedUserSetting;->seInfoTargetSdkVersion:I

    if-ge v2, v3, :cond_3f

    .line 277
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v2

    iput v2, p0, Lcom/android/server/pm/SharedUserSetting;->seInfoTargetSdkVersion:I

    .line 278
    invoke-virtual {p0}, Lcom/android/server/pm/SharedUserSetting;->onChanged()V

    .line 271
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_3f
    :goto_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 282
    .end local v0    # "i":I
    :cond_42
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_43
    iget-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_80

    .line 283
    iget-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v1, v0}, Lcom/android/server/utils/WatchedArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 284
    .restart local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_7d

    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    if-nez v2, :cond_5c

    .line 285
    goto :goto_7d

    .line 287
    :cond_5c
    invoke-virtual {p0}, Lcom/android/server/pm/SharedUserSetting;->isPrivileged()Z

    move-result v2

    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isPrivileged()Z

    move-result v3

    or-int/2addr v2, v3

    .line 288
    .local v2, "isPrivileged":Z
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    iget v5, p0, Lcom/android/server/pm/SharedUserSetting;->seInfoTargetSdkVersion:I

    invoke-static {v4, v2, v5}, Lcom/android/server/pm/SELinuxMMAC;->getSeInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setOverrideSeInfo(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 290
    invoke-virtual {p0}, Lcom/android/server/pm/SharedUserSetting;->onChanged()V

    .line 282
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v2    # "isPrivileged":Z
    :cond_7d
    :goto_7d
    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    .line 292
    .end local v0    # "i":I
    :cond_80
    return-void

    .line 269
    :cond_81
    :goto_81
    return-void
.end method

.method public getAppId()I
    .registers 2

    .line 359
    iget v0, p0, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    return v0
.end method

.method public getDisabledPackageSettings()Lcom/android/server/utils/WatchedArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/WatchedArraySet<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation

    .line 382
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackages:Lcom/android/server/utils/WatchedArraySet;

    return-object v0
.end method

.method public getDisabledPackageStates()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;"
        }
    .end annotation

    .line 394
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArraySet;->untrackedStorage()Landroid/util/ArraySet;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 354
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNotInstalledUserIds()[I
    .registers 10

    .line 309
    const/4 v0, 0x0

    .line 310
    .local v0, "excludedUserIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_32

    .line 311
    iget-object v2, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v2, v1}, Lcom/android/server/utils/WatchedArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 312
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getNotInstalledUserIds()[I

    move-result-object v3

    .line 313
    .local v3, "userIds":[I
    if-nez v0, :cond_1a

    .line 314
    move-object v0, v3

    goto :goto_2f

    .line 316
    :cond_1a
    array-length v4, v0

    const/4 v5, 0x0

    move-object v6, v0

    .end local v0    # "excludedUserIds":[I
    .local v6, "excludedUserIds":[I
    :goto_1d
    if-ge v5, v4, :cond_2e

    aget v7, v0, v5

    .line 317
    .local v7, "userId":I
    invoke-static {v3, v7}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v8

    if-nez v8, :cond_2b

    .line 318
    invoke-static {v6, v7}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v6

    .line 316
    .end local v7    # "userId":I
    :cond_2b
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    :cond_2e
    move-object v0, v6

    .line 310
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v3    # "userIds":[I
    .end local v6    # "excludedUserIds":[I
    .restart local v0    # "excludedUserIds":[I
    :goto_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 323
    .end local v1    # "i":I
    :cond_32
    if-nez v0, :cond_37

    sget-object v1, Llibcore/util/EmptyArray;->INT:[I

    goto :goto_38

    :cond_37
    move-object v1, v0

    :goto_38
    return-object v1
.end method

.method public getPackageSettings()Lcom/android/server/utils/WatchedArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/WatchedArraySet<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    return-object v0
.end method

.method public getPackageStates()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;"
        }
    .end annotation

    .line 388
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArraySet;->untrackedStorage()Landroid/util/ArraySet;

    move-result-object v0

    return-object v0
.end method

.method public getPackages()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_3b

    .line 226
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 227
    .local v0, "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    iget-object v2, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_3a

    .line 228
    iget-object v2, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v2, v1}, Lcom/android/server/utils/WatchedArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 229
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v2, :cond_37

    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    if-nez v3, :cond_30

    .line 230
    goto :goto_37

    .line 232
    :cond_30
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_37
    :goto_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 234
    .end local v1    # "i":I
    :cond_3a
    return-object v0

    .line 224
    .end local v0    # "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    :cond_3b
    :goto_3b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateUidFlags()I
    .registers 2

    .line 369
    iget v0, p0, Lcom/android/server/pm/SharedUserSetting;->uidPrivateFlags:I

    return v0
.end method

.method public getProcesses()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/component/ParsedProcess;",
            ">;"
        }
    .end annotation

    .line 406
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->processes:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getSeInfoTargetSdkVersion()I
    .registers 2

    .line 374
    iget v0, p0, Lcom/android/server/pm/SharedUserSetting;->seInfoTargetSdkVersion:I

    return v0
.end method

.method public getSharedUserLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;
    .registers 2

    .line 412
    invoke-super {p0}, Lcom/android/server/pm/SettingBase;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v0

    return-object v0
.end method

.method public getSigningDetails()Landroid/content/pm/SigningDetails;
    .registers 2

    .line 400
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    return-object v0
.end method

.method public getUidFlags()I
    .registers 2

    .line 364
    iget v0, p0, Lcom/android/server/pm/SharedUserSetting;->uidFlags:I

    return v0
.end method

.method public isPrivileged()Z
    .registers 2

    .line 239
    invoke-virtual {p0}, Lcom/android/server/pm/SharedUserSetting;->getPrivateFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isSingleUser()Z
    .registers 5

    .line 248
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_b

    .line 249
    return v1

    .line 251
    :cond_b
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v0

    if-le v0, v2, :cond_14

    .line 252
    return v1

    .line 254
    :cond_14
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v0

    if-ne v0, v2, :cond_32

    .line 255
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 256
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v0, :cond_31

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isLeavingSharedUid()Z

    move-result v3

    if-eqz v3, :cond_31

    move v1, v2

    :cond_31
    return v1

    .line 258
    .end local v0    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_32
    return v2
.end method

.method removePackage(Lcom/android/server/pm/PackageSetting;)Z
    .registers 6
    .param p1, "packageSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 178
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 179
    const/4 v0, 0x0

    return v0

    .line 182
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/pm/SharedUserSetting;->getFlags()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getFlags()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_33

    .line 183
    iget v0, p0, Lcom/android/server/pm/SharedUserSetting;->uidFlags:I

    .line 184
    .local v0, "aggregatedFlags":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18
    iget-object v2, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_30

    .line 185
    iget-object v2, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v2, v1}, Lcom/android/server/utils/WatchedArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 186
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getFlags()I

    move-result v3

    or-int/2addr v0, v3

    .line 184
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 188
    .end local v1    # "i":I
    :cond_30
    invoke-virtual {p0, v0}, Lcom/android/server/pm/SharedUserSetting;->setFlags(I)Lcom/android/server/pm/SettingBase;

    .line 190
    .end local v0    # "aggregatedFlags":I
    :cond_33
    invoke-virtual {p0}, Lcom/android/server/pm/SharedUserSetting;->getPrivateFlags()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPrivateFlags()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_5c

    .line 191
    iget v0, p0, Lcom/android/server/pm/SharedUserSetting;->uidPrivateFlags:I

    .line 192
    .local v0, "aggregatedPrivateFlags":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_41
    iget-object v2, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_59

    .line 193
    iget-object v2, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v2, v1}, Lcom/android/server/utils/WatchedArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 194
    .restart local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPrivateFlags()I

    move-result v3

    or-int/2addr v0, v3

    .line 192
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    .line 196
    .end local v1    # "i":I
    :cond_59
    invoke-virtual {p0, v0}, Lcom/android/server/pm/SharedUserSetting;->setPrivateFlags(I)Lcom/android/server/pm/SettingBase;

    .line 199
    .end local v0    # "aggregatedPrivateFlags":I
    :cond_5c
    invoke-virtual {p0}, Lcom/android/server/pm/SharedUserSetting;->updateProcesses()V

    .line 200
    invoke-virtual {p0}, Lcom/android/server/pm/SharedUserSetting;->onChanged()V

    .line 201
    const/4 v0, 0x1

    return v0
.end method

.method public snapshot()Lcom/android/server/pm/SharedUserSetting;
    .registers 2

    .line 145
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SharedUserSetting;

    return-object v0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .registers 2

    .line 51
    invoke-virtual {p0}, Lcom/android/server/pm/SharedUserSetting;->snapshot()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SharedUserSetting{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateFrom(Lcom/android/server/pm/SharedUserSetting;)Lcom/android/server/pm/SharedUserSetting;
    .registers 7
    .param p1, "sharedUser"    # Lcom/android/server/pm/SharedUserSetting;

    .line 328
    invoke-super {p0, p1}, Lcom/android/server/pm/SettingBase;->copySettingBase(Lcom/android/server/pm/SettingBase;)V

    .line 329
    iget v0, p1, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    iput v0, p0, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    .line 330
    iget v0, p1, Lcom/android/server/pm/SharedUserSetting;->uidFlags:I

    iput v0, p0, Lcom/android/server/pm/SharedUserSetting;->uidFlags:I

    .line 331
    iget v0, p1, Lcom/android/server/pm/SharedUserSetting;->uidPrivateFlags:I

    iput v0, p0, Lcom/android/server/pm/SharedUserSetting;->uidPrivateFlags:I

    .line 332
    iget v0, p1, Lcom/android/server/pm/SharedUserSetting;->seInfoTargetSdkVersion:I

    iput v0, p0, Lcom/android/server/pm/SharedUserSetting;->seInfoTargetSdkVersion:I

    .line 333
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArraySet;->clear()V

    .line 334
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    iget-object v1, p1, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArraySet;->addAll(Lcom/android/server/utils/WatchedArraySet;)V

    .line 335
    iget-object v0, p1, Lcom/android/server/pm/SharedUserSetting;->signaturesChanged:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->signaturesChanged:Ljava/lang/Boolean;

    .line 336
    iget-object v0, p1, Lcom/android/server/pm/SharedUserSetting;->processes:Landroid/util/ArrayMap;

    if-eqz v0, :cond_52

    .line 337
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 338
    .local v0, "numProcs":I
    iget-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->processes:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 339
    iget-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->processes:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    .line 340
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_36
    if-ge v1, v0, :cond_51

    .line 341
    new-instance v2, Lcom/android/server/pm/pkg/component/ParsedProcessImpl;

    iget-object v3, p1, Lcom/android/server/pm/SharedUserSetting;->processes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/component/ParsedProcess;

    invoke-direct {v2, v3}, Lcom/android/server/pm/pkg/component/ParsedProcessImpl;-><init>(Lcom/android/server/pm/pkg/component/ParsedProcess;)V

    .line 342
    .local v2, "proc":Lcom/android/server/pm/pkg/component/ParsedProcess;
    iget-object v3, p0, Lcom/android/server/pm/SharedUserSetting;->processes:Landroid/util/ArrayMap;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedProcess;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    .end local v2    # "proc":Lcom/android/server/pm/pkg/component/ParsedProcess;
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 344
    .end local v0    # "numProcs":I
    .end local v1    # "i":I
    :cond_51
    goto :goto_57

    .line 345
    :cond_52
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->processes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 347
    :goto_57
    invoke-virtual {p0}, Lcom/android/server/pm/SharedUserSetting;->onChanged()V

    .line 348
    return-object p0
.end method

.method public updateProcesses()V
    .registers 4

    .line 298
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->processes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 299
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_d
    if-ltz v0, :cond_27

    .line 300
    iget-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v1, v0}, Lcom/android/server/utils/WatchedArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    .line 301
    .local v1, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v1, :cond_24

    .line 302
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProcesses()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/pm/SharedUserSetting;->addProcesses(Ljava/util/Map;)V

    .line 299
    .end local v1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 305
    .end local v0    # "i":I
    :cond_27
    return-void
.end method
