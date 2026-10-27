.class public Lcom/android/server/wm/AppCompatOverrides;
.super Ljava/lang/Object;
.source "AppCompatOverrides.java"


# instance fields
.field public final mAspectRatioOverrides:Lcom/android/server/wm/AppCompatAspectRatioOverrides;

.field public final mCameraOverrides:Lcom/android/server/wm/AppCompatCameraOverrides;

.field public final mDisplayOverrides:Lcom/android/server/wm/AppCompatDisplayOverrides;

.field public final mFocusOverrides:Lcom/android/server/wm/AppCompatFocusOverrides;

.field public final mLetterboxOverrides:Lcom/android/server/wm/AppCompatLetterboxOverrides;

.field public final mOrientationOverrides:Lcom/android/server/wm/AppCompatOrientationOverrides;

.field public final mReachabilityOverrides:Lcom/android/server/wm/AppCompatReachabilityOverrides;

.field public final mResizeOverrides:Lcom/android/server/wm/AppCompatResizeOverrides;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/PackageManager;Lcom/android/server/wm/AppCompatConfiguration;Lcom/android/server/wm/utils/OptPropFactory;Lcom/android/server/wm/AppCompatDeviceStateQuery;)V
    .registers 14

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/android/server/wm/AppCompatCameraOverrides;

    invoke-direct {v0, p1, p3, p4}, Lcom/android/server/wm/AppCompatCameraOverrides;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;Lcom/android/server/wm/utils/OptPropFactory;)V

    iput-object v0, p0, Lcom/android/server/wm/AppCompatOverrides;->mCameraOverrides:Lcom/android/server/wm/AppCompatCameraOverrides;

    .line 53
    new-instance v1, Lcom/android/server/wm/AppCompatOrientationOverrides;

    invoke-direct {v1, p1, p3, p4, v0}, Lcom/android/server/wm/AppCompatOrientationOverrides;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;Lcom/android/server/wm/utils/OptPropFactory;Lcom/android/server/wm/AppCompatCameraOverrides;)V

    iput-object v1, p0, Lcom/android/server/wm/AppCompatOverrides;->mOrientationOverrides:Lcom/android/server/wm/AppCompatOrientationOverrides;

    .line 55
    new-instance v7, Lcom/android/server/wm/AppCompatReachabilityOverrides;

    invoke-direct {v7, p1, p3, p5}, Lcom/android/server/wm/AppCompatReachabilityOverrides;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;Lcom/android/server/wm/AppCompatDeviceStateQuery;)V

    iput-object v7, p0, Lcom/android/server/wm/AppCompatOverrides;->mReachabilityOverrides:Lcom/android/server/wm/AppCompatReachabilityOverrides;

    .line 57
    new-instance v2, Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;Lcom/android/server/wm/utils/OptPropFactory;Lcom/android/server/wm/AppCompatDeviceStateQuery;Lcom/android/server/wm/AppCompatReachabilityOverrides;)V

    iput-object v2, p0, Lcom/android/server/wm/AppCompatOverrides;->mAspectRatioOverrides:Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    .line 60
    new-instance p1, Lcom/android/server/wm/AppCompatFocusOverrides;

    invoke-direct {p1, v3, v4, v5}, Lcom/android/server/wm/AppCompatFocusOverrides;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;Lcom/android/server/wm/utils/OptPropFactory;)V

    iput-object p1, p0, Lcom/android/server/wm/AppCompatOverrides;->mFocusOverrides:Lcom/android/server/wm/AppCompatFocusOverrides;

    .line 62
    new-instance p1, Lcom/android/server/wm/AppCompatResizeOverrides;

    invoke-direct {p1, v3, p2, v5}, Lcom/android/server/wm/AppCompatResizeOverrides;-><init>(Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/PackageManager;Lcom/android/server/wm/utils/OptPropFactory;)V

    iput-object p1, p0, Lcom/android/server/wm/AppCompatOverrides;->mResizeOverrides:Lcom/android/server/wm/AppCompatResizeOverrides;

    .line 64
    new-instance p1, Lcom/android/server/wm/AppCompatLetterboxOverrides;

    invoke-direct {p1, v3, v4}, Lcom/android/server/wm/AppCompatLetterboxOverrides;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;)V

    iput-object p1, p0, Lcom/android/server/wm/AppCompatOverrides;->mLetterboxOverrides:Lcom/android/server/wm/AppCompatLetterboxOverrides;

    .line 66
    new-instance p1, Lcom/android/server/wm/AppCompatDisplayOverrides;

    invoke-direct {p1, v3}, Lcom/android/server/wm/AppCompatDisplayOverrides;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    iput-object p1, p0, Lcom/android/server/wm/AppCompatOverrides;->mDisplayOverrides:Lcom/android/server/wm/AppCompatDisplayOverrides;

    return-void
.end method


# virtual methods
.method public getAspectRatioOverrides()Lcom/android/server/wm/AppCompatAspectRatioOverrides;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/android/server/wm/AppCompatOverrides;->mAspectRatioOverrides:Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    return-object p0
.end method

.method public getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;
    .registers 1

    .line 76
    iget-object p0, p0, Lcom/android/server/wm/AppCompatOverrides;->mCameraOverrides:Lcom/android/server/wm/AppCompatCameraOverrides;

    return-object p0
.end method

.method public getDisplayOverrides()Lcom/android/server/wm/AppCompatDisplayOverrides;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/android/server/wm/AppCompatOverrides;->mDisplayOverrides:Lcom/android/server/wm/AppCompatDisplayOverrides;

    return-object p0
.end method

.method public getFocusOverrides()Lcom/android/server/wm/AppCompatFocusOverrides;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/android/server/wm/AppCompatOverrides;->mFocusOverrides:Lcom/android/server/wm/AppCompatFocusOverrides;

    return-object p0
.end method

.method public getLetterboxOverrides()Lcom/android/server/wm/AppCompatLetterboxOverrides;
    .registers 1

    .line 101
    iget-object p0, p0, Lcom/android/server/wm/AppCompatOverrides;->mLetterboxOverrides:Lcom/android/server/wm/AppCompatLetterboxOverrides;

    return-object p0
.end method

.method public getOrientationOverrides()Lcom/android/server/wm/AppCompatOrientationOverrides;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/android/server/wm/AppCompatOverrides;->mOrientationOverrides:Lcom/android/server/wm/AppCompatOrientationOverrides;

    return-object p0
.end method

.method public getReachabilityOverrides()Lcom/android/server/wm/AppCompatReachabilityOverrides;
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/android/server/wm/AppCompatOverrides;->mReachabilityOverrides:Lcom/android/server/wm/AppCompatReachabilityOverrides;

    return-object p0
.end method

.method public getResizeOverrides()Lcom/android/server/wm/AppCompatResizeOverrides;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/android/server/wm/AppCompatOverrides;->mResizeOverrides:Lcom/android/server/wm/AppCompatResizeOverrides;

    return-object p0
.end method
