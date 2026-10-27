.class public abstract Lmiui/telephony/MiuiTelephonyBase;
.super Lmiui/telephony/IMiuiTelephony$Stub;
.source "MiuiTelephonyBase.java"


# static fields
.field private static blacklist LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 13
    const-string v0, "MiuiTelephonyBase"

    sput-object v0, Lmiui/telephony/MiuiTelephonyBase;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Lmiui/telephony/IMiuiTelephony$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist get5GIndicatorStatus(I)I
    .registers 3
    .param p1, "slotId"    # I

    .line 158
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getAllEsimProfiles()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/euicc/EuiccProfileInfo;",
            ">;"
        }
    .end annotation

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public blacklist getCellLocationForSlot(ILjava/lang/String;)Landroid/os/Bundle;
    .registers 5
    .param p1, "slotId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;

    .line 77
    sget-object v0, Lmiui/telephony/MiuiTelephonyBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "unexpected getCellLocation method call"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCotaOpconfigVersionCode()J
    .registers 3

    .line 220
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getCotaOpconfigVersionName()Ljava/lang/String;
    .registers 2

    .line 216
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDeviceIdList(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 52
    sget-object v0, Lmiui/telephony/MiuiTelephonyBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "unexpected getDeviceIdList method call"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public blacklist getEsimGPIOState()I
    .registers 2

    .line 196
    const v0, 0xffff

    return v0
.end method

.method public blacklist getFeatureInfoIntentByCloud(Ljava/lang/String;)Landroid/content/Intent;
    .registers 3
    .param p1, "featureType"    # Ljava/lang/String;

    .line 243
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getImei(ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "slotId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getImeiList(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public blacklist getMeid(ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "slotId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMeidList(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public blacklist getMobileNetworkCapability(I)Ljava/lang/String;
    .registers 3
    .param p1, "slotId"    # I

    .line 185
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getNrConfigType(I)I
    .registers 3
    .param p1, "slotId"    # I

    .line 118
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getProductEid()Ljava/lang/String;
    .registers 2

    .line 200
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getRestrictDcnrStatus(I)I
    .registers 3
    .param p1, "slotId"    # I

    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSmallDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getUiccSlotForCardId(Ljava/lang/String;)I
    .registers 3
    .param p1, "cardId"    # Ljava/lang/String;

    .line 182
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getUpperlayerStatus(I)I
    .registers 3
    .param p1, "slotId"    # I

    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getXMNetworkType(I)I
    .registers 3
    .param p1, "slotId"    # I

    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isConcurrentCallsPossible()Z
    .registers 2

    .line 239
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isCotaOpconfigUsed()Z
    .registers 2

    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isDsdaEnabled()Z
    .registers 2

    .line 232
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isDualNrEnabled()Z
    .registers 2

    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isDualSaEnabled()Z
    .registers 2

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isEsimActive()Z
    .registers 2

    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isFeatureDisabledByCloud(Ljava/lang/String;)Z
    .registers 3
    .param p1, "featureType"    # Ljava/lang/String;

    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isFeatureEnabledByCloud(Ljava/lang/String;)Z
    .registers 3
    .param p1, "featureType"    # Ljava/lang/String;

    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isFiveGCapable()Z
    .registers 2

    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isGameFiveGOptimizeSupported()Z
    .registers 2

    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isGwsdSupport()Z
    .registers 2

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isImsRegistered(I)Z
    .registers 3
    .param p1, "phoneId"    # I

    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isNrCAEnabled(I)Z
    .registers 3
    .param p1, "slotId"    # I

    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSupportEsimForCountry(Ljava/lang/String;)Z
    .registers 3
    .param p1, "countryIso"    # Ljava/lang/String;

    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isUserFiveGEnabled(I)Z
    .registers 3
    .param p1, "slotId"    # I

    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isUserFiveGSaEnabled(I)Z
    .registers 3
    .param p1, "slotId"    # I

    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isVideoTelephonyAvailable(I)Z
    .registers 3
    .param p1, "phoneId"    # I

    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isVoNREnabled(I)Z
    .registers 3
    .param p1, "subId"    # I

    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isVoNRSupported()Z
    .registers 2

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isVolteEnabledByPlatform()Z
    .registers 2

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isVolteEnabledByPlatformForSlot(I)Z
    .registers 3
    .param p1, "slotId"    # I

    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isVolteEnabledByUser()Z
    .registers 2

    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isVolteEnabledByUserForSlot(I)Z
    .registers 3
    .param p1, "slotId"    # I

    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isVtEnabledByPlatform()Z
    .registers 2

    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isVtEnabledByPlatformForSlot(I)Z
    .registers 3
    .param p1, "slotId"    # I

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isWifiCallingAvailable(I)Z
    .registers 3
    .param p1, "phoneId"    # I

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist recordTelephonyEvent(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 147
    return-void
.end method

.method public blacklist registerFiveGServiceStateCallback(Lcom/lguplus/IMiuiFiveGServiceStateCallback;I)V
    .registers 3
    .param p1, "callback"    # Lcom/lguplus/IMiuiFiveGServiceStateCallback;
    .param p2, "slotId"    # I

    .line 170
    return-void
.end method

.method public blacklist setCallForwardingOption(IIILjava/lang/String;Landroid/os/ResultReceiver;)V
    .registers 8
    .param p1, "phoneId"    # I
    .param p2, "action"    # I
    .param p3, "reason"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ResultReceiver;

    .line 86
    sget-object v0, Lmiui/telephony/MiuiTelephonyBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "unexpected setCallForwardingOption method call"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void
.end method

.method public blacklist setCotaOpconfigUsed(Z)Z
    .registers 3
    .param p1, "used"    # Z

    .line 228
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setCrbtDisable(Z)V
    .registers 2
    .param p1, "disable"    # Z

    .line 133
    return-void
.end method

.method public blacklist setDsdaEnabled(ZI)V
    .registers 3
    .param p1, "enabled"    # Z
    .param p2, "flag"    # I

    .line 236
    return-void
.end method

.method public blacklist setDualSaEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 111
    return-void
.end method

.method public blacklist setEsimState(I)I
    .registers 3
    .param p1, "state"    # I

    .line 192
    const v0, 0xffff

    return v0
.end method

.method public blacklist setIccCardActivate(IZ)V
    .registers 3
    .param p1, "slotId"    # I
    .param p2, "isActivate"    # Z

    .line 90
    return-void
.end method

.method public blacklist setMobileNetworkCapability(Ljava/lang/String;)V
    .registers 2
    .param p1, "nwCapability"    # Ljava/lang/String;

    .line 189
    return-void
.end method

.method public blacklist setUserFiveGEnabled(ZI)V
    .registers 3
    .param p1, "enabled"    # Z
    .param p2, "slotId"    # I

    .line 97
    return-void
.end method

.method public blacklist setUserFiveGSaEnabled(ZI)V
    .registers 3
    .param p1, "enabled"    # Z
    .param p2, "slotId"    # I

    .line 108
    return-void
.end method

.method public blacklist setUserNrCAEnabled(II)V
    .registers 3
    .param p1, "mode"    # I
    .param p2, "slotId"    # I

    .line 144
    return-void
.end method

.method public blacklist setUserVoNREnabled(IZ)V
    .registers 3
    .param p1, "slotId"    # I
    .param p2, "enabled"    # Z

    .line 130
    return-void
.end method

.method public blacklist shouldDisplayCrbtButton()Z
    .registers 2

    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist shouldHideIntelligentDualSimButton()Z
    .registers 2

    .line 255
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist unRegisterFiveGServiceStateCallback(Lcom/lguplus/IMiuiFiveGServiceStateCallback;I)V
    .registers 3
    .param p1, "callback"    # Lcom/lguplus/IMiuiFiveGServiceStateCallback;
    .param p2, "slotId"    # I

    .line 173
    return-void
.end method
