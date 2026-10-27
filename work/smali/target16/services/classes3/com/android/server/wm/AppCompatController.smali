.class public Lcom/android/server/wm/AppCompatController;
.super Ljava/lang/Object;
.source "AppCompatController.java"


# instance fields
.field public final mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

.field public final mAspectRatioPolicy:Lcom/android/server/wm/AppCompatAspectRatioPolicy;

.field public final mDesktopAspectRatioPolicy:Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;

.field public final mDeviceStateQuery:Lcom/android/server/wm/AppCompatDeviceStateQuery;

.field public final mDisplayCompatModePolicy:Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;

.field public final mLetterboxPolicy:Lcom/android/server/wm/AppCompatLetterboxPolicy;

.field public final mOrientationPolicy:Lcom/android/server/wm/AppCompatOrientationPolicy;

.field public final mReachabilityPolicy:Lcom/android/server/wm/AppCompatReachabilityPolicy;

.field public final mSafeRegionPolicy:Lcom/android/server/wm/AppCompatSafeRegionPolicy;

.field public final mSandboxingPolicy:Lcom/android/server/wm/AppCompatSandboxingPolicy;

.field public final mSizeCompatModePolicy:Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

.field public final mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/ActivityRecord;)V
    .registers 10

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 58
    new-instance v5, Lcom/android/server/wm/utils/OptPropFactory;

    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget v1, p2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-direct {v5, v3, v0, v1}, Lcom/android/server/wm/utils/OptPropFactory;-><init>(Landroid/content/pm/PackageManager;Ljava/lang/String;I)V

    .line 60
    new-instance v6, Lcom/android/server/wm/AppCompatDeviceStateQuery;

    invoke-direct {v6, p2}, Lcom/android/server/wm/AppCompatDeviceStateQuery;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    iput-object v6, p0, Lcom/android/server/wm/AppCompatController;->mDeviceStateQuery:Lcom/android/server/wm/AppCompatDeviceStateQuery;

    .line 61
    new-instance v0, Lcom/android/server/wm/TransparentPolicy;

    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-direct {v0, p2, v1}, Lcom/android/server/wm/TransparentPolicy;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;)V

    iput-object v0, p0, Lcom/android/server/wm/AppCompatController;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    .line 63
    new-instance v1, Lcom/android/server/wm/AppCompatOverrides;

    iget-object v4, p1, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/AppCompatOverrides;-><init>(Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/PackageManager;Lcom/android/server/wm/AppCompatConfiguration;Lcom/android/server/wm/utils/OptPropFactory;Lcom/android/server/wm/AppCompatDeviceStateQuery;)V

    iput-object v1, p0, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 65
    new-instance p2, Lcom/android/server/wm/AppCompatOrientationPolicy;

    invoke-direct {p2, v2, v1}, Lcom/android/server/wm/AppCompatOrientationPolicy;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatOverrides;)V

    iput-object p2, p0, Lcom/android/server/wm/AppCompatController;->mOrientationPolicy:Lcom/android/server/wm/AppCompatOrientationPolicy;

    .line 66
    new-instance p2, Lcom/android/server/wm/AppCompatAspectRatioPolicy;

    invoke-direct {p2, v2, v0, v1}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TransparentPolicy;Lcom/android/server/wm/AppCompatOverrides;)V

    iput-object p2, p0, Lcom/android/server/wm/AppCompatController;->mAspectRatioPolicy:Lcom/android/server/wm/AppCompatAspectRatioPolicy;

    .line 68
    new-instance p2, Lcom/android/server/wm/AppCompatSafeRegionPolicy;

    invoke-direct {p2, v2, v3}, Lcom/android/server/wm/AppCompatSafeRegionPolicy;-><init>(Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/PackageManager;)V

    iput-object p2, p0, Lcom/android/server/wm/AppCompatController;->mSafeRegionPolicy:Lcom/android/server/wm/AppCompatSafeRegionPolicy;

    .line 69
    new-instance p2, Lcom/android/server/wm/AppCompatReachabilityPolicy;

    iget-object v3, p1, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-direct {p2, v2, v3}, Lcom/android/server/wm/AppCompatReachabilityPolicy;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;)V

    iput-object p2, p0, Lcom/android/server/wm/AppCompatController;->mReachabilityPolicy:Lcom/android/server/wm/AppCompatReachabilityPolicy;

    .line 71
    new-instance p2, Lcom/android/server/wm/AppCompatLetterboxPolicy;

    iget-object v3, p1, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-direct {p2, v2, v3}, Lcom/android/server/wm/AppCompatLetterboxPolicy;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;)V

    iput-object p2, p0, Lcom/android/server/wm/AppCompatController;->mLetterboxPolicy:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    .line 73
    new-instance p2, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-direct {p2, v2, v1, v0, p1}, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatOverrides;Lcom/android/server/wm/TransparentPolicy;Lcom/android/server/wm/AppCompatConfiguration;)V

    iput-object p2, p0, Lcom/android/server/wm/AppCompatController;->mDesktopAspectRatioPolicy:Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;

    .line 75
    new-instance p1, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

    invoke-direct {p1, v2, v1}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatOverrides;)V

    iput-object p1, p0, Lcom/android/server/wm/AppCompatController;->mSizeCompatModePolicy:Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

    .line 77
    new-instance p1, Lcom/android/server/wm/AppCompatSandboxingPolicy;

    invoke-direct {p1, v2}, Lcom/android/server/wm/AppCompatSandboxingPolicy;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    iput-object p1, p0, Lcom/android/server/wm/AppCompatController;->mSandboxingPolicy:Lcom/android/server/wm/AppCompatSandboxingPolicy;

    .line 78
    new-instance p1, Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;

    invoke-direct {p1, v2}, Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    iput-object p1, p0, Lcom/android/server/wm/AppCompatController;->mDisplayCompatModePolicy:Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    .line 177
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getTransparentPolicy()Lcom/android/server/wm/TransparentPolicy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TransparentPolicy;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getLetterboxPolicy()Lcom/android/server/wm/AppCompatLetterboxPolicy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getSizeCompatModePolicy()Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getDisplayCompatModePolicy()Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getSafeRegionPolicy()Lcom/android/server/wm/AppCompatSafeRegionPolicy;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .registers 3

    .line 185
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getSizeCompatModePolicy()Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->dumpDebug(Landroid/util/proto/ProtoOutputStream;)V

    .line 186
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getAspectRatioPolicy()Lcom/android/server/wm/AppCompatAspectRatioPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->dumpDebug(Landroid/util/proto/ProtoOutputStream;)V

    .line 187
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getAspectRatioOverrides()Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->dumpDebug(Landroid/util/proto/ProtoOutputStream;)V

    .line 188
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getSafeRegionPolicy()Lcom/android/server/wm/AppCompatSafeRegionPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->dumpDebug(Landroid/util/proto/ProtoOutputStream;)V

    .line 189
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getFocusOverrides()Lcom/android/server/wm/AppCompatFocusOverrides;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppCompatFocusOverrides;->dumpDebug(Landroid/util/proto/ProtoOutputStream;)V

    .line 190
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppCompatCameraOverrides;->dumpDebug(Landroid/util/proto/ProtoOutputStream;)V

    .line 191
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getOrientationOverrides()Lcom/android/server/wm/AppCompatOrientationOverrides;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppCompatOrientationOverrides;->dumpDebug(Landroid/util/proto/ProtoOutputStream;)V

    .line 192
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getResizeOverrides()Lcom/android/server/wm/AppCompatResizeOverrides;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatResizeOverrides;->dumpDebug(Landroid/util/proto/ProtoOutputStream;)V

    return-void
.end method

.method public getAspectRatioOverrides()Lcom/android/server/wm/AppCompatAspectRatioOverrides;
    .registers 1

    .line 118
    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatOverrides;->getAspectRatioOverrides()Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    move-result-object p0

    return-object p0
.end method

.method public getAspectRatioPolicy()Lcom/android/server/wm/AppCompatAspectRatioPolicy;
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mAspectRatioPolicy:Lcom/android/server/wm/AppCompatAspectRatioPolicy;

    return-object p0
.end method

.method public getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;
    .registers 1

    .line 113
    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatOverrides;->getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;

    move-result-object p0

    return-object p0
.end method

.method public getDesktopAspectRatioPolicy()Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mDesktopAspectRatioPolicy:Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;

    return-object p0
.end method

.method public getDeviceStateQuery()Lcom/android/server/wm/AppCompatDeviceStateQuery;
    .registers 1

    .line 148
    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mDeviceStateQuery:Lcom/android/server/wm/AppCompatDeviceStateQuery;

    return-object p0
.end method

.method public getDisplayCompatModePolicy()Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;
    .registers 1

    .line 168
    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mDisplayCompatModePolicy:Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;

    return-object p0
.end method

.method public getDisplayOverrides()Lcom/android/server/wm/AppCompatDisplayOverrides;
    .registers 1

    .line 173
    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatOverrides;->getDisplayOverrides()Lcom/android/server/wm/AppCompatDisplayOverrides;

    move-result-object p0

    return-object p0
.end method

.method public getFocusOverrides()Lcom/android/server/wm/AppCompatFocusOverrides;
    .registers 1

    .line 138
    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatOverrides;->getFocusOverrides()Lcom/android/server/wm/AppCompatFocusOverrides;

    move-result-object p0

    return-object p0
.end method

.method public getLetterboxOverrides()Lcom/android/server/wm/AppCompatLetterboxOverrides;
    .registers 1

    .line 153
    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatOverrides;->getLetterboxOverrides()Lcom/android/server/wm/AppCompatLetterboxOverrides;

    move-result-object p0

    return-object p0
.end method

.method public getLetterboxPolicy()Lcom/android/server/wm/AppCompatLetterboxPolicy;
    .registers 1

    .line 133
    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mLetterboxPolicy:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    return-object p0
.end method

.method public getOrientationOverrides()Lcom/android/server/wm/AppCompatOrientationOverrides;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatOverrides;->getOrientationOverrides()Lcom/android/server/wm/AppCompatOrientationOverrides;

    move-result-object p0

    return-object p0
.end method

.method public getOrientationPolicy()Lcom/android/server/wm/AppCompatOrientationPolicy;
    .registers 1

    .line 88
    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mOrientationPolicy:Lcom/android/server/wm/AppCompatOrientationPolicy;

    return-object p0
.end method

.method public getReachabilityOverrides()Lcom/android/server/wm/AppCompatReachabilityOverrides;
    .registers 1

    .line 143
    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatOverrides;->getReachabilityOverrides()Lcom/android/server/wm/AppCompatReachabilityOverrides;

    move-result-object p0

    return-object p0
.end method

.method public getReachabilityPolicy()Lcom/android/server/wm/AppCompatReachabilityPolicy;
    .registers 1

    .line 128
    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mReachabilityPolicy:Lcom/android/server/wm/AppCompatReachabilityPolicy;

    return-object p0
.end method

.method public getResizeOverrides()Lcom/android/server/wm/AppCompatResizeOverrides;
    .registers 1

    .line 123
    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatOverrides;->getResizeOverrides()Lcom/android/server/wm/AppCompatResizeOverrides;

    move-result-object p0

    return-object p0
.end method

.method public getSafeRegionPolicy()Lcom/android/server/wm/AppCompatSafeRegionPolicy;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mSafeRegionPolicy:Lcom/android/server/wm/AppCompatSafeRegionPolicy;

    return-object p0
.end method

.method public getSandboxingPolicy()Lcom/android/server/wm/AppCompatSandboxingPolicy;
    .registers 1

    .line 163
    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mSandboxingPolicy:Lcom/android/server/wm/AppCompatSandboxingPolicy;

    return-object p0
.end method

.method public getSizeCompatModePolicy()Lcom/android/server/wm/AppCompatSizeCompatModePolicy;
    .registers 1

    .line 158
    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mSizeCompatModePolicy:Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

    return-object p0
.end method

.method public getTransparentPolicy()Lcom/android/server/wm/TransparentPolicy;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    return-object p0
.end method
