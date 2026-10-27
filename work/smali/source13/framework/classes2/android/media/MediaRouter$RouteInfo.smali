.class public Landroid/media/MediaRouter$RouteInfo;
.super Ljava/lang/Object;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RouteInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaRouter$RouteInfo$PlaybackVolume;,
        Landroid/media/MediaRouter$RouteInfo$PlaybackType;,
        Landroid/media/MediaRouter$RouteInfo$DeviceType;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_PLAYBACK_MAX_VOLUME:I = 0xf

.field private static final blacklist DEFAULT_PLAYBACK_VOLUME:I = 0xf

.field public static final whitelist DEVICE_TYPE_BLUETOOTH:I = 0x3

.field public static final whitelist DEVICE_TYPE_SPEAKER:I = 0x2

.field public static final whitelist DEVICE_TYPE_TV:I = 0x1

.field public static final whitelist DEVICE_TYPE_UNKNOWN:I = 0x0

.field public static final whitelist PLAYBACK_TYPE_LOCAL:I = 0x0

.field public static final whitelist PLAYBACK_TYPE_REMOTE:I = 0x1

.field public static final whitelist PLAYBACK_VOLUME_FIXED:I = 0x0

.field public static final whitelist PLAYBACK_VOLUME_VARIABLE:I = 0x1

.field public static final greylist-max-o STATUS_AVAILABLE:I = 0x3

.field public static final greylist-max-o STATUS_CONNECTED:I = 0x6

.field public static final greylist STATUS_CONNECTING:I = 0x2

.field public static final greylist-max-o STATUS_IN_USE:I = 0x5

.field public static final greylist-max-o STATUS_NONE:I = 0x0

.field public static final greylist-max-o STATUS_NOT_AVAILABLE:I = 0x4

.field public static final greylist-max-o STATUS_SCANNING:I = 0x1


# instance fields
.field final greylist-max-o mCategory:Landroid/media/MediaRouter$RouteCategory;

.field greylist-max-o mDescription:Ljava/lang/CharSequence;

.field greylist-max-o mDeviceAddress:Ljava/lang/String;

.field greylist-max-o mDeviceType:I

.field greylist-max-o mEnabled:Z

.field greylist-max-o mGlobalRouteId:Ljava/lang/String;

.field greylist-max-o mGroup:Landroid/media/MediaRouter$RouteGroup;

.field greylist-max-o mIcon:Landroid/graphics/drawable/Drawable;

.field greylist-max-o mName:Ljava/lang/CharSequence;

.field greylist mNameResId:I

.field greylist-max-o mPlaybackStream:I

.field greylist-max-o mPlaybackType:I

.field greylist-max-o mPresentationDisplay:Landroid/view/Display;

.field greylist-max-o mPresentationDisplayId:I

.field private greylist-max-o mRealStatusCode:I

.field final greylist-max-o mRemoteVolObserver:Landroid/media/IRemoteVolumeObserver$Stub;

.field private greylist-max-o mResolvedStatusCode:I

.field private greylist-max-o mStatus:Ljava/lang/CharSequence;

.field greylist-max-o mSupportedTypes:I

.field private greylist-max-o mTag:Ljava/lang/Object;

.field greylist-max-o mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

.field greylist-max-o mVolume:I

.field greylist-max-o mVolumeHandling:I

.field greylist-max-o mVolumeMax:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmRealStatusCode(Landroid/media/MediaRouter$RouteInfo;)I
    .registers 1

    iget p0, p0, Landroid/media/MediaRouter$RouteInfo;->mRealStatusCode:I

    return p0
.end method

.method public constructor greylist-max-o <init>(Landroid/media/MediaRouter$RouteCategory;)V
    .registers 5
    .param p1, "category"    # Landroid/media/MediaRouter$RouteCategory;

    .line 1776
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1652
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    .line 1653
    const/16 v1, 0xf

    iput v1, p0, Landroid/media/MediaRouter$RouteInfo;->mVolumeMax:I

    .line 1654
    iput v1, p0, Landroid/media/MediaRouter$RouteInfo;->mVolume:I

    .line 1655
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    .line 1656
    const/4 v2, 0x3

    iput v2, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    .line 1659
    const/4 v2, -0x1

    iput v2, p0, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    .line 1662
    iput-boolean v1, p0, Landroid/media/MediaRouter$RouteInfo;->mEnabled:Z

    .line 2255
    new-instance v1, Landroid/media/MediaRouter$RouteInfo$1;

    invoke-direct {v1, p0}, Landroid/media/MediaRouter$RouteInfo$1;-><init>(Landroid/media/MediaRouter$RouteInfo;)V

    iput-object v1, p0, Landroid/media/MediaRouter$RouteInfo;->mRemoteVolObserver:Landroid/media/IRemoteVolumeObserver$Stub;

    .line 1777
    iput-object p1, p0, Landroid/media/MediaRouter$RouteInfo;->mCategory:Landroid/media/MediaRouter$RouteCategory;

    .line 1778
    iput v0, p0, Landroid/media/MediaRouter$RouteInfo;->mDeviceType:I

    .line 1779
    return-void
.end method

.method private greylist-max-o choosePresentationDisplay()Landroid/view/Display;
    .registers 10

    .line 2123
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v0

    const/4 v1, 0x2

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_a

    .line 2124
    return-object v2

    .line 2126
    :cond_a
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getAllPresentationDisplays()[Landroid/view/Display;

    move-result-object v0

    .line 2127
    .local v0, "displays":[Landroid/view/Display;
    if-eqz v0, :cond_73

    array-length v3, v0

    if-nez v3, :cond_14

    goto :goto_73

    .line 2134
    :cond_14
    iget v3, p0, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    const/4 v4, 0x0

    if-ltz v3, :cond_2b

    .line 2135
    array-length v1, v0

    :goto_1a
    if-ge v4, v1, :cond_2a

    aget-object v3, v0, v4

    .line 2136
    .local v3, "display":Landroid/view/Display;
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v5

    iget v6, p0, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    if-ne v5, v6, :cond_27

    .line 2137
    return-object v3

    .line 2135
    .end local v3    # "display":Landroid/view/Display;
    :cond_27
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 2140
    :cond_2a
    return-object v2

    .line 2144
    :cond_2b
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getDeviceAddress()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_48

    .line 2145
    array-length v3, v0

    move v5, v4

    :goto_33
    if-ge v5, v3, :cond_48

    aget-object v6, v0, v5

    .line 2146
    .local v6, "display":Landroid/view/Display;
    invoke-virtual {v6}, Landroid/view/Display;->getType()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_45

    .line 2147
    invoke-direct {p0, v6}, Landroid/media/MediaRouter$RouteInfo;->displayAddressEquals(Landroid/view/Display;)Z

    move-result v7

    if-eqz v7, :cond_45

    .line 2148
    return-object v6

    .line 2145
    .end local v6    # "display":Landroid/view/Display;
    :cond_45
    add-int/lit8 v5, v5, 0x1

    goto :goto_33

    .line 2154
    :cond_48
    array-length v3, v0

    move v5, v4

    :goto_4a
    if-ge v5, v3, :cond_58

    aget-object v6, v0, v5

    .line 2155
    .restart local v6    # "display":Landroid/view/Display;
    invoke-virtual {v6}, Landroid/view/Display;->getType()I

    move-result v7

    if-ne v7, v1, :cond_55

    .line 2156
    return-object v6

    .line 2154
    .end local v6    # "display":Landroid/view/Display;
    :cond_55
    add-int/lit8 v5, v5, 0x1

    goto :goto_4a

    .line 2161
    :cond_58
    array-length v1, v0

    move v3, v4

    :goto_5a
    if-ge v3, v1, :cond_69

    aget-object v5, v0, v3

    .line 2162
    .local v5, "display":Landroid/view/Display;
    invoke-virtual {v5}, Landroid/view/Display;->getType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_66

    .line 2163
    return-object v5

    .line 2161
    .end local v5    # "display":Landroid/view/Display;
    :cond_66
    add-int/lit8 v3, v3, 0x1

    goto :goto_5a

    .line 2168
    :cond_69
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getDefaultAudioVideo()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v1

    if-ne p0, v1, :cond_72

    .line 2169
    aget-object v1, v0, v4

    return-object v1

    .line 2171
    :cond_72
    return-object v2

    .line 2128
    :cond_73
    :goto_73
    return-object v2
.end method

.method private blacklist displayAddressEquals(Landroid/view/Display;)Z
    .registers 6
    .param p1, "display"    # Landroid/view/Display;

    .line 2187
    invoke-virtual {p1}, Landroid/view/Display;->getAddress()Landroid/view/DisplayAddress;

    move-result-object v0

    .line 2190
    .local v0, "displayAddress":Landroid/view/DisplayAddress;
    instance-of v1, v0, Landroid/view/DisplayAddress$Network;

    if-nez v1, :cond_a

    .line 2191
    const/4 v1, 0x0

    return v1

    .line 2193
    :cond_a
    move-object v1, v0

    check-cast v1, Landroid/view/DisplayAddress$Network;

    .line 2194
    .local v1, "networkAddress":Landroid/view/DisplayAddress$Network;
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/view/DisplayAddress$Network;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method


# virtual methods
.method public blacklist getAllPresentationDisplays()[Landroid/view/Display;
    .registers 2

    .line 2177
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    invoke-virtual {v0}, Landroid/media/MediaRouter$Static;->getAllPresentationDisplays()[Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCategory()Landroid/media/MediaRouter$RouteCategory;
    .registers 2

    .line 1947
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mCategory:Landroid/media/MediaRouter$RouteCategory;

    return-object v0
.end method

.method public blacklist getDefaultAudioVideo()Landroid/media/MediaRouter$RouteInfo;
    .registers 2

    .line 2183
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method public whitelist getDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 1828
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public greylist getDeviceAddress()Ljava/lang/String;
    .registers 2

    .line 2200
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mDeviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getDeviceType()I
    .registers 2

    .line 1927
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mDeviceType:I

    return v0
.end method

.method public whitelist getGroup()Landroid/media/MediaRouter$RouteGroup;
    .registers 2

    .line 1940
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mGroup:Landroid/media/MediaRouter$RouteGroup;

    return-object v0
.end method

.method public whitelist getIconDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1957
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/CharSequence;
    .registers 2

    .line 1792
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, v0}, Landroid/media/MediaRouter$RouteInfo;->getName(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getName(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 1807
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaRouter$RouteInfo;->getName(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-r getName(Landroid/content/res/Resources;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 1812
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mNameResId:I

    if-eqz v0, :cond_9

    .line 1813
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1815
    :cond_9
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getPlaybackStream()I
    .registers 2

    .line 1998
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    return v0
.end method

.method public whitelist getPlaybackType()I
    .registers 2

    .line 1990
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    return v0
.end method

.method public whitelist getPresentationDisplay()Landroid/view/Display;
    .registers 2

    .line 2108
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplay:Landroid/view/Display;

    return-object v0
.end method

.method public whitelist getStatus()Ljava/lang/CharSequence;
    .registers 2

    .line 1836
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mStatus:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public greylist getStatusCode()I
    .registers 2

    .line 1908
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mResolvedStatusCode:I

    return v0
.end method

.method public whitelist getSupportedTypes()I
    .registers 2

    .line 1915
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    return v0
.end method

.method public whitelist getTag()Ljava/lang/Object;
    .registers 2

    .line 1981
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist getVolume()I
    .registers 3

    .line 2009
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    if-nez v0, :cond_d

    .line 2010
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget v1, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$Static;->getStreamVolume(I)I

    move-result v0

    return v0

    .line 2012
    :cond_d
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mVolume:I

    return v0
.end method

.method public whitelist getVolumeHandling()I
    .registers 2

    .line 2076
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    return v0
.end method

.method public whitelist getVolumeMax()I
    .registers 5

    .line 2057
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    if-nez v0, :cond_1a

    .line 2058
    const/4 v0, 0x0

    .line 2060
    .local v0, "volMax":I
    :try_start_5
    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v1, v1, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    iget v2, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->getStreamMaxVolume(I)I

    move-result v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_f} :catch_11

    move v0, v1

    .line 2063
    goto :goto_19

    .line 2061
    :catch_11
    move-exception v1

    .line 2062
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MediaRouter"

    const-string v3, "Error getting local stream volume"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2064
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_19
    return v0

    .line 2066
    .end local v0    # "volMax":I
    :cond_1a
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mVolumeMax:I

    return v0
.end method

.method public greylist-max-o isBluetooth()Z
    .registers 3

    .line 2236
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mDeviceType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist isConnecting()Z
    .registers 3

    .line 2219
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mResolvedStatusCode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public greylist-max-p isDefault()Z
    .registers 2

    .line 2231
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    if-ne p0, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isEnabled()Z
    .registers 2

    .line 2209
    iget-boolean v0, p0, Landroid/media/MediaRouter$RouteInfo;->mEnabled:Z

    return v0
.end method

.method public greylist isSelected()Z
    .registers 2

    .line 2225
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    if-ne p0, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public greylist matchesTypes(I)Z
    .registers 3
    .param p1, "types"    # I

    .line 1933
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist requestSetVolume(I)V
    .registers 9
    .param p1, "volume"    # I

    .line 2021
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    if-nez v0, :cond_1e

    .line 2023
    :try_start_4
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v1, v0, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    iget v2, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    const/4 v4, 0x0

    .line 2024
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 2023
    move v3, p1

    invoke-interface/range {v1 .. v6}, Landroid/media/IAudioService;->setStreamVolumeWithAttribution(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_14} :catch_15

    goto :goto_1d

    .line 2025
    :catch_15
    move-exception v0

    .line 2026
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaRouter"

    const-string v2, "Error setting local stream volume"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2027
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1d
    goto :goto_23

    .line 2029
    :cond_1e
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaRouter$Static;->requestSetVolume(Landroid/media/MediaRouter$RouteInfo;I)V

    .line 2031
    :goto_23
    return-void
.end method

.method public whitelist requestUpdateVolume(I)V
    .registers 10
    .param p1, "direction"    # I

    .line 2038
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    if-nez v0, :cond_2f

    .line 2040
    const/4 v0, 0x0

    .line 2041
    :try_start_5
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getVolume()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getVolumeMax()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2042
    .local v4, "volume":I
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v0, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    iget v3, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    const/4 v5, 0x0

    .line 2043
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 2042
    invoke-interface/range {v2 .. v7}, Landroid/media/IAudioService;->setStreamVolumeWithAttribution(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_25} :catch_26

    .end local v4    # "volume":I
    goto :goto_2e

    .line 2044
    :catch_26
    move-exception v0

    .line 2045
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaRouter"

    const-string v2, "Error setting local stream volume"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2046
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2e
    goto :goto_34

    .line 2048
    :cond_2f
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaRouter$Static;->requestUpdateVolume(Landroid/media/MediaRouter$RouteInfo;I)V

    .line 2050
    :goto_34
    return-void
.end method

.method greylist-max-o resolveStatusCode()Z
    .registers 4

    .line 1856
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mRealStatusCode:I

    .line 1857
    .local v0, "statusCode":I
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1858
    packed-switch v0, :pswitch_data_3e

    :pswitch_b
    goto :goto_d

    .line 1867
    :pswitch_c
    const/4 v0, 0x2

    .line 1871
    :cond_d
    :goto_d
    iget v1, p0, Landroid/media/MediaRouter$RouteInfo;->mResolvedStatusCode:I

    if-ne v1, v0, :cond_13

    .line 1872
    const/4 v1, 0x0

    return v1

    .line 1875
    :cond_13
    iput v0, p0, Landroid/media/MediaRouter$RouteInfo;->mResolvedStatusCode:I

    .line 1877
    packed-switch v0, :pswitch_data_48

    .line 1896
    const/4 v1, 0x0

    .local v1, "resId":I
    goto :goto_2e

    .line 1891
    .end local v1    # "resId":I
    :pswitch_1a
    const v1, 0x1040567

    .line 1892
    .restart local v1    # "resId":I
    goto :goto_2e

    .line 1888
    .end local v1    # "resId":I
    :pswitch_1e
    const v1, 0x1040568

    .line 1889
    .restart local v1    # "resId":I
    goto :goto_2e

    .line 1885
    .end local v1    # "resId":I
    :pswitch_22
    const v1, 0x1040565

    .line 1886
    .restart local v1    # "resId":I
    goto :goto_2e

    .line 1882
    .end local v1    # "resId":I
    :pswitch_26
    const v1, 0x1040566

    .line 1883
    .restart local v1    # "resId":I
    goto :goto_2e

    .line 1879
    .end local v1    # "resId":I
    :pswitch_2a
    const v1, 0x1040569

    .line 1880
    .restart local v1    # "resId":I
    nop

    .line 1899
    :goto_2e
    if-eqz v1, :cond_39

    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_3a

    :cond_39
    const/4 v2, 0x0

    :goto_3a
    iput-object v2, p0, Landroid/media/MediaRouter$RouteInfo;->mStatus:Ljava/lang/CharSequence;

    .line 1900
    const/4 v2, 0x1

    return v2

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_c
    .end packed-switch

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_26
        :pswitch_22
        :pswitch_1e
        :pswitch_1a
    .end packed-switch
.end method

.method greylist-max-o routeUpdated()V
    .registers 1

    .line 2274
    invoke-static {p0}, Landroid/media/MediaRouter;->updateRoute(Landroid/media/MediaRouter$RouteInfo;)V

    .line 2275
    return-void
.end method

.method public greylist select()V
    .registers 3

    .line 2242
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Landroid/media/MediaRouter;->selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;Z)V

    .line 2243
    return-void
.end method

.method greylist-max-o setRealStatusCode(I)Z
    .registers 3
    .param p1, "statusCode"    # I

    .line 1844
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mRealStatusCode:I

    if-eq v0, p1, :cond_b

    .line 1845
    iput p1, p0, Landroid/media/MediaRouter$RouteInfo;->mRealStatusCode:I

    .line 1846
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->resolveStatusCode()Z

    move-result v0

    return v0

    .line 1848
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o setStatusInt(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "status"    # Ljava/lang/CharSequence;

    .line 2246
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mStatus:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 2247
    iput-object p1, p0, Landroid/media/MediaRouter$RouteInfo;->mStatus:Ljava/lang/CharSequence;

    .line 2248
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mGroup:Landroid/media/MediaRouter$RouteGroup;

    if-eqz v0, :cond_11

    .line 2249
    invoke-virtual {v0, p0, p1}, Landroid/media/MediaRouter$RouteGroup;->memberStatusChanged(Landroid/media/MediaRouter$RouteInfo;Ljava/lang/CharSequence;)V

    .line 2251
    :cond_11
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->routeUpdated()V

    .line 2253
    :cond_14
    return-void
.end method

.method public whitelist setTag(Ljava/lang/Object;)V
    .registers 2
    .param p1, "tag"    # Ljava/lang/Object;

    .line 1972
    iput-object p1, p0, Landroid/media/MediaRouter$RouteInfo;->mTag:Ljava/lang/Object;

    .line 1973
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->routeUpdated()V

    .line 1974
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 2279
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v0

    invoke-static {v0}, Landroid/media/MediaRouter;->typesToString(I)Ljava/lang/String;

    move-result-object v0

    .line 2280
    .local v0, "supportedTypes":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "{ name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", description="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2281
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2282
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getStatus()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", category="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2283
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getCategory()Landroid/media/MediaRouter$RouteCategory;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", supportedTypes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", presentationDisplay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplay:Landroid/view/Display;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2280
    return-object v1
.end method

.method public greylist-max-o updatePresentationDisplay()Z
    .registers 3

    .line 2114
    invoke-direct {p0}, Landroid/media/MediaRouter$RouteInfo;->choosePresentationDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2115
    .local v0, "display":Landroid/view/Display;
    iget-object v1, p0, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplay:Landroid/view/Display;

    if-eq v1, v0, :cond_c

    .line 2116
    iput-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplay:Landroid/view/Display;

    .line 2117
    const/4 v1, 0x1

    return v1

    .line 2119
    :cond_c
    const/4 v1, 0x0

    return v1
.end method
