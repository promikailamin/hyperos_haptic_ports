.class public Lcom/android/server/pm/pkg/PackageUserStateImpl;
.super Lcom/android/server/utils/WatchableImpl;
.source "PackageUserStateImpl.java"

# interfaces
.implements Lcom/android/server/pm/pkg/PackageUserStateInternal;
.implements Lcom/android/server/utils/Snappable;


# instance fields
.field private mCeDataInode:J

.field private mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Landroid/content/ComponentName;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDefaultState:Ljava/lang/String;

.field protected mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDistractionFlags:I

.field protected mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabledState:I

.field private mFirstInstallTime:J

.field private mHarmfulAppWarning:Ljava/lang/String;

.field private mHidden:Z

.field private mInstallReason:I

.field private mInstalled:Z

.field private mInstantApp:Z

.field private mLastDisableAppCaller:Ljava/lang/String;

.field private mNotLaunched:Z

.field private mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

.field protected mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/overlay/OverlayPaths;",
            ">;"
        }
    .end annotation
.end field

.field final mSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/pm/pkg/PackageUserStateImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mSplashScreenTheme:Ljava/lang/String;

.field private mStopped:Z

.field private mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/SuspendParams;",
            ">;"
        }
    .end annotation
.end field

.field private mUninstallReason:I

.field private mVirtualPreload:Z

.field private mWatchable:Lcom/android/server/utils/Watchable;


# direct methods
.method static bridge synthetic -$$Nest$fgetmWatchable(Lcom/android/server/pm/pkg/PackageUserStateImpl;)Lcom/android/server/utils/Watchable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mWatchable:Lcom/android/server/utils/Watchable;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 123
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstalled:Z

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledState:I

    .line 64
    iput v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstallReason:I

    .line 66
    iput v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mUninstallReason:I

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDefaultState:Ljava/lang/String;

    .line 124
    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mWatchable:Lcom/android/server/utils/Watchable;

    .line 125
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->makeCache()Lcom/android/server/utils/SnapshotCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 126
    return-void
.end method

.method public constructor <init>(Lcom/android/server/utils/Watchable;)V
    .registers 3
    .param p1, "watchable"    # Lcom/android/server/utils/Watchable;

    .line 128
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstalled:Z

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledState:I

    .line 64
    iput v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstallReason:I

    .line 66
    iput v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mUninstallReason:I

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDefaultState:Ljava/lang/String;

    .line 129
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mWatchable:Lcom/android/server/utils/Watchable;

    .line 130
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->makeCache()Lcom/android/server/utils/SnapshotCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 131
    return-void
.end method

.method public constructor <init>(Lcom/android/server/utils/Watchable;Lcom/android/server/pm/pkg/PackageUserStateImpl;)V
    .registers 6
    .param p1, "watchable"    # Lcom/android/server/utils/Watchable;
    .param p2, "other"    # Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 133
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstalled:Z

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledState:I

    .line 64
    iput v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstallReason:I

    .line 66
    iput v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mUninstallReason:I

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDefaultState:Ljava/lang/String;

    .line 134
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mWatchable:Lcom/android/server/utils/Watchable;

    .line 135
    iget-object v1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    if-nez v1, :cond_18

    .line 136
    move-object v1, v0

    goto :goto_1c

    :cond_18
    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArraySet;->snapshot()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v1

    :goto_1c
    iput-object v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    .line 137
    iget-object v1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    if-nez v1, :cond_24

    .line 138
    move-object v1, v0

    goto :goto_28

    :cond_24
    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArraySet;->snapshot()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v1

    :goto_28
    iput-object v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    .line 139
    iget-object v1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    iput-object v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    .line 140
    iget-object v1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    if-nez v1, :cond_34

    .line 141
    move-object v1, v0

    goto :goto_38

    :cond_34
    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArrayMap;->snapshot()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v1

    :goto_38
    iput-object v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    .line 142
    iget-wide v1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mCeDataInode:J

    iput-wide v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mCeDataInode:J

    .line 143
    iget-boolean v1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstalled:Z

    iput-boolean v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstalled:Z

    .line 144
    iget-boolean v1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mStopped:Z

    iput-boolean v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mStopped:Z

    .line 145
    iget-boolean v1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mNotLaunched:Z

    iput-boolean v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mNotLaunched:Z

    .line 146
    iget-boolean v1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mHidden:Z

    iput-boolean v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mHidden:Z

    .line 147
    iget v1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDistractionFlags:I

    iput v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDistractionFlags:I

    .line 148
    iget-boolean v1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstantApp:Z

    iput-boolean v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstantApp:Z

    .line 149
    iget-boolean v1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mVirtualPreload:Z

    iput-boolean v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mVirtualPreload:Z

    .line 150
    iget v1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledState:I

    iput v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledState:I

    .line 151
    iget v1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstallReason:I

    iput v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstallReason:I

    .line 152
    iget v1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mUninstallReason:I

    iput v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mUninstallReason:I

    .line 153
    iget-object v1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mHarmfulAppWarning:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mHarmfulAppWarning:Ljava/lang/String;

    .line 154
    iget-object v1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mLastDisableAppCaller:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mLastDisableAppCaller:Ljava/lang/String;

    .line 155
    iget-object v1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSplashScreenTheme:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSplashScreenTheme:Ljava/lang/String;

    .line 156
    iget-object v1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    if-nez v1, :cond_78

    move-object v1, v0

    goto :goto_7c

    :cond_78
    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArrayMap;->snapshot()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v1

    :goto_7c
    iput-object v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    .line 157
    iget-object v1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    if-nez v1, :cond_83

    .line 158
    goto :goto_87

    :cond_83
    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArrayMap;->snapshot()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v0

    :goto_87
    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    .line 159
    iget-wide v0, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mFirstInstallTime:J

    iput-wide v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mFirstInstallTime:J

    .line 161
    iget-object v0, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDefaultState:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDefaultState:Ljava/lang/String;

    .line 162
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {v0}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 163
    return-void
.end method

.method private __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 813
    return-void
.end method

.method private makeCache()Lcom/android/server/utils/SnapshotCache;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/pm/pkg/PackageUserStateImpl;",
            ">;"
        }
    .end annotation

    .line 112
    new-instance v0, Lcom/android/server/pm/pkg/PackageUserStateImpl$1;

    invoke-direct {v0, p0, p0, p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl$1;-><init>(Lcom/android/server/pm/pkg/PackageUserStateImpl;Lcom/android/server/pm/pkg/PackageUserStateImpl;Lcom/android/server/utils/Watchable;)V

    return-object v0
.end method

.method private onChanged()V
    .registers 2

    .line 166
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mWatchable:Lcom/android/server/utils/Watchable;

    if-eqz v0, :cond_7

    .line 167
    invoke-interface {v0, v0}, Lcom/android/server/utils/Watchable;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 169
    :cond_7
    invoke-virtual {p0, p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 170
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 585
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 586
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_c9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    goto/16 :goto_c9

    .line 588
    :cond_13
    move-object v2, p1

    check-cast v2, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 590
    .local v2, "that":Lcom/android/server/pm/pkg/PackageUserStateImpl;
    iget-object v3, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    iget-object v4, v2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c7

    iget-object v3, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    iget-object v4, v2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    .line 591
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c7

    iget-wide v3, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mCeDataInode:J

    iget-wide v5, v2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mCeDataInode:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_c7

    iget-boolean v3, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstalled:Z

    iget-boolean v4, v2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstalled:Z

    if-ne v3, v4, :cond_c7

    iget-boolean v3, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mStopped:Z

    iget-boolean v4, v2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mStopped:Z

    if-ne v3, v4, :cond_c7

    iget-boolean v3, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mNotLaunched:Z

    iget-boolean v4, v2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mNotLaunched:Z

    if-ne v3, v4, :cond_c7

    iget-boolean v3, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mHidden:Z

    iget-boolean v4, v2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mHidden:Z

    if-ne v3, v4, :cond_c7

    iget v3, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDistractionFlags:I

    iget v4, v2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDistractionFlags:I

    if-ne v3, v4, :cond_c7

    iget-boolean v3, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstantApp:Z

    iget-boolean v4, v2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstantApp:Z

    if-ne v3, v4, :cond_c7

    iget-boolean v3, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mVirtualPreload:Z

    iget-boolean v4, v2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mVirtualPreload:Z

    if-ne v3, v4, :cond_c7

    iget v3, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledState:I

    iget v4, v2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledState:I

    if-ne v3, v4, :cond_c7

    iget v3, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstallReason:I

    iget v4, v2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstallReason:I

    if-ne v3, v4, :cond_c7

    iget v3, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mUninstallReason:I

    iget v4, v2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mUninstallReason:I

    if-ne v3, v4, :cond_c7

    iget-object v3, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mHarmfulAppWarning:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mHarmfulAppWarning:Ljava/lang/String;

    .line 603
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c7

    iget-object v3, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mLastDisableAppCaller:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mLastDisableAppCaller:Ljava/lang/String;

    .line 604
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c7

    iget-object v3, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    iget-object v4, v2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    .line 605
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c7

    iget-object v3, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v4, v2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    .line 606
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c7

    iget-object v3, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSplashScreenTheme:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSplashScreenTheme:Ljava/lang/String;

    .line 607
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c7

    iget-object v3, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v4, v2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    .line 608
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c7

    iget-object v3, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v4, v2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    .line 609
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c7

    iget-wide v3, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mFirstInstallTime:J

    iget-wide v5, v2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mFirstInstallTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_c7

    iget-object v3, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mWatchable:Lcom/android/server/utils/Watchable;

    iget-object v4, v2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mWatchable:Lcom/android/server/utils/Watchable;

    .line 612
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c7

    goto :goto_c8

    :cond_c7
    move v0, v1

    .line 590
    :goto_c8
    return v0

    .line 586
    .end local v2    # "that":Lcom/android/server/pm/pkg/PackageUserStateImpl;
    :cond_c9
    :goto_c9
    return v1
.end method

.method public getAllOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;
    .registers 4

    .line 264
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    if-nez v0, :cond_a

    .line 265
    const/4 v0, 0x0

    return-object v0

    .line 267
    :cond_a
    new-instance v0, Landroid/content/pm/overlay/OverlayPaths$Builder;

    invoke-direct {v0}, Landroid/content/pm/overlay/OverlayPaths$Builder;-><init>()V

    .line 268
    .local v0, "newPaths":Landroid/content/pm/overlay/OverlayPaths$Builder;
    iget-object v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    invoke-virtual {v0, v1}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addAll(Landroid/content/pm/overlay/OverlayPaths;)Landroid/content/pm/overlay/OverlayPaths$Builder;

    .line 269
    iget-object v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    if-eqz v1, :cond_30

    .line 270
    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/overlay/OverlayPaths;

    .line 271
    .local v2, "libOverlayPaths":Landroid/content/pm/overlay/OverlayPaths;
    invoke-virtual {v0, v2}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addAll(Landroid/content/pm/overlay/OverlayPaths;)Landroid/content/pm/overlay/OverlayPaths$Builder;

    .line 272
    .end local v2    # "libOverlayPaths":Landroid/content/pm/overlay/OverlayPaths;
    goto :goto_20

    .line 274
    :cond_30
    invoke-virtual {v0}, Landroid/content/pm/overlay/OverlayPaths$Builder;->build()Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v1

    return-object v1
.end method

.method public getCeDataInode()J
    .registers 3

    .line 673
    iget-wide v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mCeDataInode:J

    return-wide v0
.end method

.method public getComponentLabelIconOverrideMap()Lcom/android/server/utils/WatchedArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Landroid/content/ComponentName;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 756
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    return-object v0
.end method

.method public getDefaultState()Ljava/lang/String;
    .registers 2

    .line 342
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDefaultState:Ljava/lang/String;

    return-object v0
.end method

.method public getDisabledComponents()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    if-nez v0, :cond_a

    .line 239
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    goto :goto_e

    :cond_a
    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArraySet;->untrackedStorage()Landroid/util/ArraySet;

    move-result-object v0

    .line 238
    :goto_e
    return-object v0
.end method

.method public bridge synthetic getDisabledComponents()Ljava/util/Set;
    .registers 2

    .line 44
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getDisabledComponents()Landroid/util/ArraySet;

    move-result-object v0

    return-object v0
.end method

.method public getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/WatchedArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    return-object v0
.end method

.method public getDisabledComponentsWatched()Lcom/android/server/utils/WatchedArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/WatchedArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 663
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    return-object v0
.end method

.method public getDistractionFlags()I
    .registers 2

    .line 698
    iget v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDistractionFlags:I

    return v0
.end method

.method public getEnabledComponents()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    if-nez v0, :cond_a

    .line 246
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    goto :goto_e

    :cond_a
    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArraySet;->untrackedStorage()Landroid/util/ArraySet;

    move-result-object v0

    .line 245
    :goto_e
    return-object v0
.end method

.method public bridge synthetic getEnabledComponents()Ljava/util/Set;
    .registers 2

    .line 44
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getEnabledComponents()Landroid/util/ArraySet;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/WatchedArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    return-object v0
.end method

.method public getEnabledComponentsWatched()Lcom/android/server/utils/WatchedArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/WatchedArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 668
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    return-object v0
.end method

.method public getEnabledState()I
    .registers 2

    .line 713
    iget v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledState:I

    return v0
.end method

.method public getFirstInstallTime()J
    .registers 3

    .line 761
    iget-wide v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mFirstInstallTime:J

    return-wide v0
.end method

.method public getHarmfulAppWarning()Ljava/lang/String;
    .registers 2

    .line 728
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mHarmfulAppWarning:Ljava/lang/String;

    return-object v0
.end method

.method public getInstallReason()I
    .registers 2

    .line 718
    iget v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstallReason:I

    return v0
.end method

.method public getLastDisableAppCaller()Ljava/lang/String;
    .registers 2

    .line 733
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mLastDisableAppCaller:Ljava/lang/String;

    return-object v0
.end method

.method public getOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;
    .registers 2

    .line 738
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    return-object v0
.end method

.method public getOverrideLabelIconForComponent(Landroid/content/ComponentName;)Landroid/util/Pair;
    .registers 3
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 333
    const/4 v0, 0x0

    return-object v0

    .line 336
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    return-object v0
.end method

.method public getSharedLibraryOverlayPaths()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/overlay/OverlayPaths;",
            ">;"
        }
    .end annotation

    .line 575
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    if-nez v0, :cond_9

    .line 576
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_a

    :cond_9
    nop

    .line 575
    :goto_a
    return-object v0
.end method

.method public getSnapshot()Lcom/android/server/utils/SnapshotCache;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/pm/pkg/PackageUserStateImpl;",
            ">;"
        }
    .end annotation

    .line 771
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-object v0
.end method

.method public getSplashScreenTheme()Ljava/lang/String;
    .registers 2

    .line 743
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSplashScreenTheme:Ljava/lang/String;

    return-object v0
.end method

.method public getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/SuspendParams;",
            ">;"
        }
    .end annotation

    .line 751
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    return-object v0
.end method

.method public getUninstallReason()I
    .registers 2

    .line 723
    iget v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mUninstallReason:I

    return v0
.end method

.method public getWatchable()Lcom/android/server/utils/Watchable;
    .registers 2

    .line 766
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mWatchable:Lcom/android/server/utils/Watchable;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 620
    const/4 v0, 0x1

    .line 621
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 622
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 623
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mCeDataInode:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 624
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstalled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    .line 625
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mStopped:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 626
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mNotLaunched:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    .line 627
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mHidden:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 628
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDistractionFlags:I

    add-int/2addr v0, v2

    .line 629
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstantApp:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 630
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mVirtualPreload:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    .line 631
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledState:I

    add-int/2addr v1, v2

    .line 632
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstallReason:I

    add-int/2addr v0, v2

    .line 633
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mUninstallReason:I

    add-int/2addr v1, v2

    .line 634
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mHarmfulAppWarning:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 635
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mLastDisableAppCaller:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 636
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 637
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 638
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSplashScreenTheme:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 639
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 640
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 641
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mFirstInstallTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 642
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mWatchable:Lcom/android/server/utils/Watchable;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 643
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    return v0
.end method

.method public isComponentDisabled(Ljava/lang/String;)Z
    .registers 3
    .param p1, "componentName"    # Ljava/lang/String;

    .line 258
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    if-eqz v0, :cond_c

    .line 259
    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 258
    :goto_d
    return v0
.end method

.method public isComponentEnabled(Ljava/lang/String;)Z
    .registers 3
    .param p1, "componentName"    # Ljava/lang/String;

    .line 252
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    if-eqz v0, :cond_c

    .line 253
    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 252
    :goto_d
    return v0
.end method

.method public isHidden()Z
    .registers 2

    .line 693
    iget-boolean v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mHidden:Z

    return v0
.end method

.method public isInstalled()Z
    .registers 2

    .line 678
    iget-boolean v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstalled:Z

    return v0
.end method

.method public isInstantApp()Z
    .registers 2

    .line 703
    iget-boolean v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstantApp:Z

    return v0
.end method

.method public isNotLaunched()Z
    .registers 2

    .line 688
    iget-boolean v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mNotLaunched:Z

    return v0
.end method

.method public isStopped()Z
    .registers 2

    .line 683
    iget-boolean v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mStopped:Z

    return v0
.end method

.method public isSuspended()Z
    .registers 2

    .line 348
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isVirtualPreload()Z
    .registers 2

    .line 708
    iget-boolean v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mVirtualPreload:Z

    return v0
.end method

.method public overrideLabelAndIcon(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Integer;)Z
    .registers 9
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "nonLocalizedLabel"    # Ljava/lang/String;
    .param p3, "icon"    # Ljava/lang/Integer;

    .line 285
    const/4 v0, 0x0

    .line 286
    .local v0, "existingLabel":Ljava/lang/String;
    const/4 v1, 0x0

    .line 288
    .local v1, "existingIcon":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    if-eqz v2, :cond_18

    .line 289
    invoke-virtual {v2, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 290
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_18

    .line 291
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    .line 292
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v1, v3

    check-cast v1, Ljava/lang/Integer;

    .line 296
    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_18
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_28

    .line 297
    invoke-static {v1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    goto :goto_28

    :cond_26
    const/4 v2, 0x0

    goto :goto_29

    :cond_28
    :goto_28
    move v2, v3

    .line 299
    .local v2, "changed":Z
    :goto_29
    if-eqz v2, :cond_5c

    .line 300
    if-nez p2, :cond_40

    if-nez p3, :cond_40

    .line 301
    iget-object v3, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3, p1}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    iget-object v3, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3}, Lcom/android/server/utils/WatchedArrayMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_59

    .line 303
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    goto :goto_59

    .line 306
    :cond_40
    iget-object v4, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    if-nez v4, :cond_50

    .line 307
    new-instance v4, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v4, v3}, Lcom/android/server/utils/WatchedArrayMap;-><init>(I)V

    iput-object v4, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    .line 308
    iget-object v3, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v4, v3}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 311
    :cond_50
    iget-object v3, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    invoke-static {p2, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    :cond_59
    :goto_59
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    .line 316
    :cond_5c
    return v2
.end method

.method public putSuspendParams(Ljava/lang/String;Lcom/android/server/pm/pkg/SuspendParams;)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 5
    .param p1, "suspendingPackage"    # Ljava/lang/String;
    .param p2, "suspendParams"    # Lcom/android/server/pm/pkg/SuspendParams;

    .line 353
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    if-nez v0, :cond_10

    .line 354
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    .line 355
    iget-object v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 357
    :cond_10
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    .line 358
    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 359
    :cond_24
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    .line 363
    :cond_2c
    return-object p0
.end method

.method public removeSuspension(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 3
    .param p1, "suspendingPackage"    # Ljava/lang/String;

    .line 367
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    if-eqz v0, :cond_a

    .line 368
    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    .line 371
    :cond_a
    return-object p0
.end method

.method public resetOverrideComponentLabelIcon()V
    .registers 2

    .line 327
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    .line 328
    return-void
.end method

.method public setCeDataInode(J)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 3
    .param p1, "value"    # J

    .line 423
    iput-wide p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mCeDataInode:J

    .line 424
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    .line 425
    return-object p0
.end method

.method public setComponentLabelIconOverrideMap(Landroid/util/ArrayMap;)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Lcom/android/server/pm/pkg/PackageUserStateImpl;"
        }
    .end annotation

    .line 546
    .local p1, "value":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    if-nez p1, :cond_3

    .line 547
    return-object p0

    .line 549
    :cond_3
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    if-nez v0, :cond_13

    .line 550
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    .line 551
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 553
    :cond_13
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->clear()V

    .line 554
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->putAll(Ljava/util/Map;)V

    .line 555
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    .line 556
    return-object p0
.end method

.method public setComponentLabelIconOverrideMap(Lcom/android/server/utils/WatchedArrayMap;)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Landroid/content/ComponentName;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Lcom/android/server/pm/pkg/PackageUserStateImpl;"
        }
    .end annotation

    .line 803
    .local p1, "value":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Landroid/content/ComponentName;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    .line 804
    return-object p0
.end method

.method public setDefaultState(Ljava/lang/String;)V
    .registers 2
    .param p1, "defaultState"    # Ljava/lang/String;

    .line 567
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDefaultState:Ljava/lang/String;

    .line 568
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    .line 569
    return-void
.end method

.method public setDisabledComponents(Landroid/util/ArraySet;)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/pm/pkg/PackageUserStateImpl;"
        }
    .end annotation

    .line 375
    .local p1, "value":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez p1, :cond_3

    .line 376
    return-object p0

    .line 378
    :cond_3
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    if-nez v0, :cond_13

    .line 379
    new-instance v0, Lcom/android/server/utils/WatchedArraySet;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    .line 380
    iget-object v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArraySet;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 382
    :cond_13
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArraySet;->clear()V

    .line 383
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArraySet;->addAll(Ljava/util/Collection;)V

    .line 384
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    .line 385
    return-object p0
.end method

.method public setDisabledComponents(Lcom/android/server/utils/WatchedArraySet;)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/utils/WatchedArraySet<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/pm/pkg/PackageUserStateImpl;"
        }
    .end annotation

    .line 414
    .local p1, "value":Lcom/android/server/utils/WatchedArraySet;, "Lcom/android/server/utils/WatchedArraySet<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    .line 415
    if-eqz p1, :cond_9

    .line 416
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {p1, v0}, Lcom/android/server/utils/WatchedArraySet;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 418
    :cond_9
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    .line 419
    return-object p0
.end method

.method public setDisabledComponentsWatched(Lcom/android/server/utils/WatchedArraySet;)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/utils/WatchedArraySet<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/pm/pkg/PackageUserStateImpl;"
        }
    .end annotation

    .line 776
    .local p1, "value":Lcom/android/server/utils/WatchedArraySet;, "Lcom/android/server/utils/WatchedArraySet<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    .line 777
    return-object p0
.end method

.method public setDistractionFlags(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 2
    .param p1, "value"    # I

    .line 453
    iput p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDistractionFlags:I

    .line 454
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    .line 455
    return-object p0
.end method

.method public setEnabledComponents(Landroid/util/ArraySet;)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/pm/pkg/PackageUserStateImpl;"
        }
    .end annotation

    .line 389
    .local p1, "value":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez p1, :cond_3

    .line 390
    return-object p0

    .line 392
    :cond_3
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    if-nez v0, :cond_13

    .line 393
    new-instance v0, Lcom/android/server/utils/WatchedArraySet;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    .line 394
    iget-object v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArraySet;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 396
    :cond_13
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArraySet;->clear()V

    .line 397
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArraySet;->addAll(Ljava/util/Collection;)V

    .line 398
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    .line 399
    return-object p0
.end method

.method public setEnabledComponents(Lcom/android/server/utils/WatchedArraySet;)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/utils/WatchedArraySet<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/pm/pkg/PackageUserStateImpl;"
        }
    .end annotation

    .line 404
    .local p1, "value":Lcom/android/server/utils/WatchedArraySet;, "Lcom/android/server/utils/WatchedArraySet<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    .line 405
    if-eqz p1, :cond_9

    .line 406
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {p1, v0}, Lcom/android/server/utils/WatchedArraySet;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 408
    :cond_9
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    .line 409
    return-object p0
.end method

.method public setEnabledComponentsWatched(Lcom/android/server/utils/WatchedArraySet;)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/utils/WatchedArraySet<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/pm/pkg/PackageUserStateImpl;"
        }
    .end annotation

    .line 782
    .local p1, "value":Lcom/android/server/utils/WatchedArraySet;, "Lcom/android/server/utils/WatchedArraySet<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    .line 783
    return-object p0
.end method

.method public setEnabledState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 2
    .param p1, "value"    # I

    .line 471
    iput p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledState:I

    .line 472
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    .line 473
    return-object p0
.end method

.method public setFirstInstallTime(J)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 3
    .param p1, "value"    # J

    .line 560
    iput-wide p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mFirstInstallTime:J

    .line 561
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    .line 562
    return-object p0
.end method

.method public setHarmfulAppWarning(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 494
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mHarmfulAppWarning:Ljava/lang/String;

    .line 495
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    .line 496
    return-object p0
.end method

.method public setHidden(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 2
    .param p1, "value"    # Z

    .line 447
    iput-boolean p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mHidden:Z

    .line 448
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    .line 449
    return-object p0
.end method

.method public setInstallReason(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 4
    .param p1, "value"    # I

    .line 477
    iput p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstallReason:I

    .line 478
    const-class v0, Landroid/content/pm/PackageManager$InstallReason;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 480
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    .line 481
    return-object p0
.end method

.method public setInstalled(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 2
    .param p1, "value"    # Z

    .line 429
    iput-boolean p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstalled:Z

    .line 430
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    .line 431
    return-object p0
.end method

.method public setInstantApp(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 2
    .param p1, "value"    # Z

    .line 459
    iput-boolean p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstantApp:Z

    .line 460
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    .line 461
    return-object p0
.end method

.method public setLastDisableAppCaller(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 500
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mLastDisableAppCaller:Ljava/lang/String;

    .line 501
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    .line 502
    return-object p0
.end method

.method public setNotLaunched(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 2
    .param p1, "value"    # Z

    .line 441
    iput-boolean p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mNotLaunched:Z

    .line 442
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    .line 443
    return-object p0
.end method

.method public setOverlayPaths(Landroid/content/pm/overlay/OverlayPaths;)Z
    .registers 4
    .param p1, "paths"    # Landroid/content/pm/overlay/OverlayPaths;

    .line 185
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 186
    return v1

    .line 188
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    if-nez v0, :cond_14

    invoke-virtual {p1}, Landroid/content/pm/overlay/OverlayPaths;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_14
    if-nez p1, :cond_1f

    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    .line 189
    invoke-virtual {v0}, Landroid/content/pm/overlay/OverlayPaths;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 190
    :cond_1e
    return v1

    .line 192
    :cond_1f
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    .line 193
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    .line 194
    const/4 v0, 0x1

    return v0
.end method

.method public setSharedLibraryOverlayPaths(Landroid/util/ArrayMap;)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/overlay/OverlayPaths;",
            ">;)",
            "Lcom/android/server/pm/pkg/PackageUserStateImpl;"
        }
    .end annotation

    .line 507
    .local p1, "value":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;>;"
    if-nez p1, :cond_3

    .line 508
    return-object p0

    .line 510
    :cond_3
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    if-nez v0, :cond_13

    .line 511
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    .line 512
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 514
    :cond_13
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->clear()V

    .line 515
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->putAll(Ljava/util/Map;)V

    .line 516
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    .line 517
    return-object p0
.end method

.method public setSharedLibraryOverlayPaths(Lcom/android/server/utils/WatchedArrayMap;)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/overlay/OverlayPaths;",
            ">;)",
            "Lcom/android/server/pm/pkg/PackageUserStateImpl;"
        }
    .end annotation

    .line 788
    .local p1, "value":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;>;"
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    .line 789
    return-object p0
.end method

.method public setSharedLibraryOverlayPaths(Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;)Z
    .registers 7
    .param p1, "library"    # Ljava/lang/String;
    .param p2, "paths"    # Landroid/content/pm/overlay/OverlayPaths;

    .line 204
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    if-nez v0, :cond_10

    .line 205
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    .line 206
    iget-object v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 208
    :cond_10
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/overlay/OverlayPaths;

    .line 209
    .local v0, "currentPaths":Landroid/content/pm/overlay/OverlayPaths;
    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    .line 210
    return v2

    .line 212
    :cond_20
    const/4 v1, 0x1

    if-eqz p2, :cond_33

    invoke-virtual {p2}, Landroid/content/pm/overlay/OverlayPaths;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_33

    .line 217
    :cond_2a
    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    .line 219
    return v1

    .line 213
    :cond_33
    :goto_33
    iget-object v3, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3, p1}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3c

    move v2, v1

    :cond_3c
    move v1, v2

    .line 214
    .local v1, "returnValue":Z
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    .line 215
    return v1
.end method

.method public setSplashScreenTheme(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 521
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSplashScreenTheme:Ljava/lang/String;

    .line 522
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    .line 523
    return-object p0
.end method

.method public setStopped(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 2
    .param p1, "value"    # Z

    .line 435
    iput-boolean p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mStopped:Z

    .line 436
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    .line 437
    return-object p0
.end method

.method public setSuspendParams(Landroid/util/ArrayMap;)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/SuspendParams;",
            ">;)",
            "Lcom/android/server/pm/pkg/PackageUserStateImpl;"
        }
    .end annotation

    .line 531
    .local p1, "value":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/pkg/SuspendParams;>;"
    if-nez p1, :cond_3

    .line 532
    return-object p0

    .line 534
    :cond_3
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    if-nez v0, :cond_13

    .line 535
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    .line 536
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 538
    :cond_13
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->clear()V

    .line 539
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->putAll(Ljava/util/Map;)V

    .line 540
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    .line 541
    return-object p0
.end method

.method public setSuspendParams(Lcom/android/server/utils/WatchedArrayMap;)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/SuspendParams;",
            ">;)",
            "Lcom/android/server/pm/pkg/PackageUserStateImpl;"
        }
    .end annotation

    .line 797
    .local p1, "value":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/pm/pkg/SuspendParams;>;"
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    .line 798
    return-object p0
.end method

.method public setUninstallReason(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 4
    .param p1, "value"    # I

    .line 486
    iput p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mUninstallReason:I

    .line 487
    const-class v0, Landroid/content/pm/PackageManager$UninstallReason;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 489
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    .line 490
    return-object p0
.end method

.method public setVirtualPreload(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 2
    .param p1, "value"    # Z

    .line 465
    iput-boolean p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mVirtualPreload:Z

    .line 466
    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged()V

    .line 467
    return-object p0
.end method

.method public setWatchable(Lcom/android/server/utils/Watchable;)V
    .registers 2
    .param p1, "watchable"    # Lcom/android/server/utils/Watchable;

    .line 104
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mWatchable:Lcom/android/server/utils/Watchable;

    .line 105
    return-void
.end method

.method public snapshot()Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 2

    .line 175
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    return-object v0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .registers 2

    .line 44
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->snapshot()Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    return-object v0
.end method
