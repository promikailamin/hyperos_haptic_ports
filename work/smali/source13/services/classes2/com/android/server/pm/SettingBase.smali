.class public abstract Lcom/android/server/pm/SettingBase;
.super Ljava/lang/Object;
.source "SettingBase.java"

# interfaces
.implements Lcom/android/server/utils/Watchable;
.implements Lcom/android/server/utils/Snappable;


# instance fields
.field protected final mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mPkgFlags:I

.field private mPkgPrivateFlags:I

.field private final mWatchable:Lcom/android/server/utils/Watchable;


# direct methods
.method constructor <init>(II)V
    .registers 4
    .param p1, "pkgFlags"    # I
    .param p2, "pkgPrivateFlags"    # I

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/android/server/utils/WatchableImpl;

    invoke-direct {v0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SettingBase;->mWatchable:Lcom/android/server/utils/Watchable;

    .line 101
    new-instance v0, Lcom/android/server/pm/permission/LegacyPermissionState;

    invoke-direct {v0}, Lcom/android/server/pm/permission/LegacyPermissionState;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SettingBase;->mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

    .line 105
    invoke-virtual {p0, p1}, Lcom/android/server/pm/SettingBase;->setFlags(I)Lcom/android/server/pm/SettingBase;

    .line 106
    invoke-virtual {p0, p2}, Lcom/android/server/pm/SettingBase;->setPrivateFlags(I)Lcom/android/server/pm/SettingBase;

    .line 107
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/SettingBase;)V
    .registers 3
    .param p1, "orig"    # Lcom/android/server/pm/SettingBase;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/android/server/utils/WatchableImpl;

    invoke-direct {v0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SettingBase;->mWatchable:Lcom/android/server/utils/Watchable;

    .line 101
    new-instance v0, Lcom/android/server/pm/permission/LegacyPermissionState;

    invoke-direct {v0}, Lcom/android/server/pm/permission/LegacyPermissionState;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SettingBase;->mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

    .line 110
    if-eqz p1, :cond_16

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/server/pm/SettingBase;->copySettingBase(Lcom/android/server/pm/SettingBase;)V

    .line 113
    :cond_16
    return-void
.end method


# virtual methods
.method public final copySettingBase(Lcom/android/server/pm/SettingBase;)V
    .registers 4
    .param p1, "orig"    # Lcom/android/server/pm/SettingBase;

    .line 116
    iget v0, p1, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    iput v0, p0, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    .line 117
    iget v0, p1, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    iput v0, p0, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    .line 118
    iget-object v0, p0, Lcom/android/server/pm/SettingBase;->mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

    iget-object v1, p1, Lcom/android/server/pm/SettingBase;->mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/permission/LegacyPermissionState;->copyFrom(Lcom/android/server/pm/permission/LegacyPermissionState;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 120
    return-void
.end method

.method public dispatchChange(Lcom/android/server/utils/Watchable;)V
    .registers 3
    .param p1, "what"    # Lcom/android/server/utils/Watchable;

    .line 85
    iget-object v0, p0, Lcom/android/server/pm/SettingBase;->mWatchable:Lcom/android/server/utils/Watchable;

    invoke-interface {v0, p1}, Lcom/android/server/utils/Watchable;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 86
    return-void
.end method

.method public getFlags()I
    .registers 2

    .line 161
    iget v0, p0, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    return v0
.end method

.method public getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/android/server/pm/SettingBase;->mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

    return-object v0
.end method

.method public getPrivateFlags()I
    .registers 2

    .line 165
    iget v0, p0, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    return v0
.end method

.method public isRegisteredObserver(Lcom/android/server/utils/Watcher;)Z
    .registers 3
    .param p1, "observer"    # Lcom/android/server/utils/Watcher;

    .line 73
    iget-object v0, p0, Lcom/android/server/pm/SettingBase;->mWatchable:Lcom/android/server/utils/Watchable;

    invoke-interface {v0, p1}, Lcom/android/server/utils/Watchable;->isRegisteredObserver(Lcom/android/server/utils/Watcher;)Z

    move-result v0

    return v0
.end method

.method public onChanged()V
    .registers 1

    .line 92
    invoke-static {}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->onPackageStateChanged()V

    .line 93
    invoke-virtual {p0, p0}, Lcom/android/server/pm/SettingBase;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 94
    return-void
.end method

.method public registerObserver(Lcom/android/server/utils/Watcher;)V
    .registers 3
    .param p1, "observer"    # Lcom/android/server/utils/Watcher;

    .line 52
    iget-object v0, p0, Lcom/android/server/pm/SettingBase;->mWatchable:Lcom/android/server/utils/Watchable;

    invoke-interface {v0, p1}, Lcom/android/server/utils/Watchable;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 53
    return-void
.end method

.method public setFlags(I)Lcom/android/server/pm/SettingBase;
    .registers 3
    .param p1, "pkgFlags"    # I

    .line 128
    const v0, 0x40101

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    .line 132
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 133
    return-object p0
.end method

.method setPkgFlags(II)Lcom/android/server/pm/SettingBase;
    .registers 3
    .param p1, "flags"    # I
    .param p2, "privateFlags"    # I

    .line 154
    iput p1, p0, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    .line 155
    iput p2, p0, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    .line 156
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 157
    return-object p0
.end method

.method public setPrivateFlags(I)Lcom/android/server/pm/SettingBase;
    .registers 3
    .param p1, "pkgPrivateFlags"    # I

    .line 137
    const v0, 0x402e0208

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    .line 145
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 146
    return-object p0
.end method

.method public unregisterObserver(Lcom/android/server/utils/Watcher;)V
    .registers 3
    .param p1, "observer"    # Lcom/android/server/utils/Watcher;

    .line 63
    iget-object v0, p0, Lcom/android/server/pm/SettingBase;->mWatchable:Lcom/android/server/utils/Watchable;

    invoke-interface {v0, p1}, Lcom/android/server/utils/Watchable;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    .line 64
    return-void
.end method
