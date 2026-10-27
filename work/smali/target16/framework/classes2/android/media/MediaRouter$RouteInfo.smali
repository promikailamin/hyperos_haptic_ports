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

    .line 1786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1662
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    .line 1663
    const/16 v1, 0xf

    iput v1, p0, Landroid/media/MediaRouter$RouteInfo;->mVolumeMax:I

    .line 1664
    iput v1, p0, Landroid/media/MediaRouter$RouteInfo;->mVolume:I

    .line 1665
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    .line 1666
    const/4 v2, 0x3

    iput v2, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    .line 1669
    const/4 v2, -0x1

    iput v2, p0, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    .line 1672
    iput-boolean v1, p0, Landroid/media/MediaRouter$RouteInfo;->mEnabled:Z

    .line 2265
    new-instance v1, Landroid/media/MediaRouter$RouteInfo$1;

    invoke-direct {v1, p0}, Landroid/media/MediaRouter$RouteInfo$1;-><init>(Landroid/media/MediaRouter$RouteInfo;)V

    iput-object v1, p0, Landroid/media/MediaRouter$RouteInfo;->mRemoteVolObserver:Landroid/media/IRemoteVolumeObserver$Stub;

    .line 1787
    iput-object p1, p0, Landroid/media/MediaRouter$RouteInfo;->mCategory:Landroid/media/MediaRouter$RouteCategory;

    .line 1788
    iput v0, p0, Landroid/media/MediaRouter$RouteInfo;->mDeviceType:I

    .line 1789
    return-void
.end method

.method private greylist-max-o choosePresentationDisplay()Landroid/view/Display;
    .registers 10

    .line 2133
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v0

    const/4 v1, 0x2

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_a

    .line 2134
    return-object v2

    .line 2136
    :cond_a
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getAllPresentationDisplays()[Landroid/view/Display;

    move-result-object v0

    .line 2137
    if-eqz v0, :cond_73

    array-length v3, v0

    if-nez v3, :cond_14

    goto :goto_73

    .line 2144
    :cond_14
    iget v3, p0, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    const/4 v4, 0x0

    if-ltz v3, :cond_2b

    .line 2145
    array-length v1, v0

    :goto_1a
    if-ge v4, v1, :cond_2a

    aget-object v3, v0, v4

    .line 2146
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v5

    iget v6, p0, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    if-ne v5, v6, :cond_27

    .line 2147
    return-object v3

    .line 2145
    :cond_27
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 2150
    :cond_2a
    return-object v2

    .line 2154
    :cond_2b
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getDeviceAddress()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_48

    .line 2155
    array-length v3, v0

    move v5, v4

    :goto_33
    if-ge v5, v3, :cond_48

    aget-object v6, v0, v5

    .line 2156
    invoke-virtual {v6}, Landroid/view/Display;->getType()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_45

    .line 2157
    invoke-direct {p0, v6}, Landroid/media/MediaRouter$RouteInfo;->displayAddressEquals(Landroid/view/Display;)Z

    move-result v7

    if-eqz v7, :cond_45

    .line 2158
    return-object v6

    .line 2155
    :cond_45
    add-int/lit8 v5, v5, 0x1

    goto :goto_33

    .line 2164
    :cond_48
    array-length v3, v0

    move v5, v4

    :goto_4a
    if-ge v5, v3, :cond_58

    aget-object v6, v0, v5

    .line 2165
    invoke-virtual {v6}, Landroid/view/Display;->getType()I

    move-result v7

    if-ne v7, v1, :cond_55

    .line 2166
    return-object v6

    .line 2164
    :cond_55
    add-int/lit8 v5, v5, 0x1

    goto :goto_4a

    .line 2171
    :cond_58
    array-length v1, v0

    move v3, v4

    :goto_5a
    if-ge v3, v1, :cond_69

    aget-object v5, v0, v3

    .line 2172
    invoke-virtual {v5}, Landroid/view/Display;->getType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_66

    .line 2173
    return-object v5

    .line 2171
    :cond_66
    add-int/lit8 v3, v3, 0x1

    goto :goto_5a

    .line 2178
    :cond_69
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getDefaultAudioVideo()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v1

    if-ne p0, v1, :cond_72

    .line 2179
    aget-object v0, v0, v4

    return-object v0

    .line 2181
    :cond_72
    return-object v2

    .line 2138
    :cond_73
    :goto_73
    return-object v2
.end method

.method private blacklist displayAddressEquals(Landroid/view/Display;)Z
    .registers 3

    .line 2197
    invoke-virtual {p1}, Landroid/view/Display;->getAddress()Landroid/view/DisplayAddress;

    move-result-object p1

    .line 2200
    instance-of v0, p1, Landroid/view/DisplayAddress$Network;

    if-nez v0, :cond_a

    .line 2201
    const/4 p1, 0x0

    return p1

    .line 2203
    :cond_a
    check-cast p1, Landroid/view/DisplayAddress$Network;

    .line 2204
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getDeviceAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/DisplayAddress$Network;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public blacklist getAllPresentationDisplays()[Landroid/view/Display;
    .registers 2

    .line 2187
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    invoke-virtual {v0}, Landroid/media/MediaRouter$Static;->getAllPresentationDisplays()[Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCategory()Landroid/media/MediaRouter$RouteCategory;
    .registers 2

    .line 1957
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mCategory:Landroid/media/MediaRouter$RouteCategory;

    return-object v0
.end method

.method public blacklist getDefaultAudioVideo()Landroid/media/MediaRouter$RouteInfo;
    .registers 2

    .line 2193
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method public whitelist getDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 1838
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public greylist getDeviceAddress()Ljava/lang/String;
    .registers 2

    .line 2210
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mDeviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getDeviceType()I
    .registers 2

    .line 1937
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mDeviceType:I

    return v0
.end method

.method public whitelist getGroup()Landroid/media/MediaRouter$RouteGroup;
    .registers 2

    .line 1950
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mGroup:Landroid/media/MediaRouter$RouteGroup;

    return-object v0
.end method

.method public whitelist getIconDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1967
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/CharSequence;
    .registers 2

    .line 1802
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, v0}, Landroid/media/MediaRouter$RouteInfo;->getName(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getName(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 2

    .line 1817
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$RouteInfo;->getName(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method greylist-max-r getName(Landroid/content/res/Resources;)Ljava/lang/CharSequence;
    .registers 3

    .line 1822
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mNameResId:I

    if-eqz v0, :cond_b

    .line 1823
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mNameResId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 1825
    :cond_b
    iget-object p1, p0, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    return-object p1
.end method

.method public whitelist getPlaybackStream()I
    .registers 2

    .line 2008
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    return v0
.end method

.method public whitelist getPlaybackType()I
    .registers 2

    .line 2000
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    return v0
.end method

.method public whitelist getPresentationDisplay()Landroid/view/Display;
    .registers 2

    .line 2118
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplay:Landroid/view/Display;

    return-object v0
.end method

.method public whitelist getStatus()Ljava/lang/CharSequence;
    .registers 2

    .line 1846
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mStatus:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public greylist getStatusCode()I
    .registers 2

    .line 1918
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mResolvedStatusCode:I

    return v0
.end method

.method public whitelist getSupportedTypes()I
    .registers 2

    .line 1925
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    return v0
.end method

.method public whitelist getTag()Ljava/lang/Object;
    .registers 2

    .line 1991
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist getVolume()I
    .registers 3

    .line 2019
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    if-nez v0, :cond_d

    .line 2020
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget v1, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$Static;->getStreamVolume(I)I

    move-result v0

    return v0

    .line 2022
    :cond_d
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mVolume:I

    return v0
.end method

.method public whitelist getVolumeHandling()I
    .registers 2

    .line 2086
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    return v0
.end method

.method public whitelist getVolumeMax()I
    .registers 4

    .line 2067
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    if-nez v0, :cond_1a

    .line 2068
    nop

    .line 2070
    :try_start_5
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    iget v1, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    invoke-interface {v0, v1}, Landroid/media/IAudioService;->getStreamMaxVolume(I)I

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_f} :catch_10

    .line 2073
    goto :goto_19

    .line 2071
    :catch_10
    move-exception v0

    .line 2072
    const-string v1, "MediaRouter"

    const-string v2, "Error getting local stream volume"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 2074
    :goto_19
    return v0

    .line 2076
    :cond_1a
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mVolumeMax:I

    return v0
.end method

.method public greylist-max-o isBluetooth()Z
    .registers 3

    .line 2246
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

    .line 2229
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

    .line 2241
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

    .line 2219
    iget-boolean v0, p0, Landroid/media/MediaRouter$RouteInfo;->mEnabled:Z

    return v0
.end method

.method public greylist isSelected()Z
    .registers 2

    .line 2235
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

    .line 1943
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    return p1
.end method

.method public whitelist requestSetVolume(I)V
    .registers 9

    .line 2031
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    if-nez v0, :cond_1f

    .line 2033
    :try_start_4
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v1, v0, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    iget v2, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    .line 2034
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v5

    .line 2033
    const/4 v4, 0x0

    const/4 v6, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v6}, Landroid/media/IAudioService;->setStreamVolumeWithAttribution(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_14} :catch_15

    goto :goto_1e

    .line 2035
    :catch_15
    move-exception v0

    move-object p1, v0

    .line 2036
    const-string v0, "MediaRouter"

    const-string v1, "Error setting local stream volume"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2037
    :goto_1e
    goto :goto_25

    .line 2039
    :cond_1f
    move v3, p1

    sget-object p1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    invoke-virtual {p1, p0, v3}, Landroid/media/MediaRouter$Static;->requestSetVolume(Landroid/media/MediaRouter$RouteInfo;I)V

    .line 2041
    :goto_25
    return-void
.end method

.method public whitelist requestUpdateVolume(I)V
    .registers 9

    .line 2048
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    if-nez v0, :cond_31

    .line 2050
    nop

    .line 2051
    :try_start_5
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getVolume()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getVolumeMax()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2052
    sget-object p1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v1, p1, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    iget v2, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    .line 2053
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v5

    .line 2052
    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Landroid/media/IAudioService;->setStreamVolumeWithAttribution(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_26} :catch_27

    goto :goto_30

    .line 2054
    :catch_27
    move-exception v0

    move-object p1, v0

    .line 2055
    const-string v0, "MediaRouter"

    const-string v1, "Error setting local stream volume"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2056
    :goto_30
    goto :goto_36

    .line 2058
    :cond_31
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaRouter$Static;->requestUpdateVolume(Landroid/media/MediaRouter$RouteInfo;I)V

    .line 2060
    :goto_36
    return-void
.end method

.method greylist-max-o resolveStatusCode()Z
    .registers 4

    .line 1866
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mRealStatusCode:I

    .line 1867
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1868
    packed-switch v0, :pswitch_data_42

    :pswitch_b
    goto :goto_d

    .line 1877
    :pswitch_c
    const/4 v0, 0x2

    .line 1881
    :cond_d
    :goto_d
    iget v1, p0, Landroid/media/MediaRouter$RouteInfo;->mResolvedStatusCode:I

    const/4 v2, 0x0

    if-ne v1, v0, :cond_13

    .line 1882
    return v2

    .line 1885
    :cond_13
    iput v0, p0, Landroid/media/MediaRouter$RouteInfo;->mResolvedStatusCode:I

    .line 1887
    packed-switch v0, :pswitch_data_4c

    .line 1906
    goto :goto_31

    .line 1901
    :pswitch_19
    nop

    .line 1902
    const v2, 0x104061f

    goto :goto_31

    .line 1898
    :pswitch_1e
    nop

    .line 1899
    const v2, 0x1040620

    goto :goto_31

    .line 1895
    :pswitch_23
    nop

    .line 1896
    const v2, 0x104061d

    goto :goto_31

    .line 1892
    :pswitch_28
    nop

    .line 1893
    const v2, 0x104061e

    goto :goto_31

    .line 1889
    :pswitch_2d
    nop

    .line 1890
    const v2, 0x1040621

    .line 1909
    :goto_31
    if-eqz v2, :cond_3c

    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_3d

    :cond_3c
    const/4 v0, 0x0

    :goto_3d
    iput-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mStatus:Ljava/lang/CharSequence;

    .line 1910
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_c
    .end packed-switch

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_28
        :pswitch_23
        :pswitch_1e
        :pswitch_19
    .end packed-switch
.end method

.method greylist-max-o routeUpdated()V
    .registers 1

    .line 2284
    invoke-static {p0}, Landroid/media/MediaRouter;->updateRoute(Landroid/media/MediaRouter$RouteInfo;)V

    .line 2285
    return-void
.end method

.method public greylist select()V
    .registers 3

    .line 2252
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Landroid/media/MediaRouter;->selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;Z)V

    .line 2253
    return-void
.end method

.method greylist-max-o setRealStatusCode(I)Z
    .registers 3

    .line 1854
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mRealStatusCode:I

    if-eq v0, p1, :cond_b

    .line 1855
    iput p1, p0, Landroid/media/MediaRouter$RouteInfo;->mRealStatusCode:I

    .line 1856
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->resolveStatusCode()Z

    move-result p1

    return p1

    .line 1858
    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method greylist-max-o setStatusInt(Ljava/lang/CharSequence;)V
    .registers 3

    .line 2256
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mStatus:Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 2257
    iput-object p1, p0, Landroid/media/MediaRouter$RouteInfo;->mStatus:Ljava/lang/CharSequence;

    .line 2258
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mGroup:Landroid/media/MediaRouter$RouteGroup;

    if-eqz v0, :cond_13

    .line 2259
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mGroup:Landroid/media/MediaRouter$RouteGroup;

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaRouter$RouteGroup;->memberStatusChanged(Landroid/media/MediaRouter$RouteInfo;Ljava/lang/CharSequence;)V

    .line 2261
    :cond_13
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->routeUpdated()V

    .line 2263
    :cond_16
    return-void
.end method

.method public whitelist setTag(Ljava/lang/Object;)V
    .registers 2

    .line 1982
    iput-object p1, p0, Landroid/media/MediaRouter$RouteInfo;->mTag:Ljava/lang/Object;

    .line 1983
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->routeUpdated()V

    .line 1984
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 2289
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v0

    invoke-static {v0}, Landroid/media/MediaRouter;->typesToString(I)Ljava/lang/String;

    move-result-object v0

    .line 2290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "{ name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", description="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2291
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2292
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getStatus()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", category="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2293
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getCategory()Landroid/media/MediaRouter$RouteCategory;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", supportedTypes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", presentationDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplay:Landroid/view/Display;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2290
    return-object v0
.end method

.method public greylist-max-o updatePresentationDisplay()Z
    .registers 3

    .line 2124
    invoke-direct {p0}, Landroid/media/MediaRouter$RouteInfo;->choosePresentationDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2125
    iget-object v1, p0, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplay:Landroid/view/Display;

    if-eq v1, v0, :cond_c

    .line 2126
    iput-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplay:Landroid/view/Display;

    .line 2127
    const/4 v0, 0x1

    return v0

    .line 2129
    :cond_c
    const/4 v0, 0x0

    return v0
.end method
