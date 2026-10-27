.class public interface abstract Landroid/telephony/IMiuiTelephonyManager;
.super Ljava/lang/Object;
.source "IMiuiTelephonyManager.java"


# virtual methods
.method public abstract blacklist getAllEsimProfiles()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/euicc/EuiccProfileInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getCallState()I
.end method

.method public abstract blacklist getCallStateForSlot(I)I
.end method

.method public abstract blacklist getCallStateForSubscription(I)I
.end method

.method public abstract blacklist getCellLocationForSlot(I)Landroid/telephony/CellLocation;
.end method

.method public abstract blacklist getCtVolteSupportedMode()I
.end method

.method public abstract blacklist getDataActivity()I
.end method

.method public abstract blacklist getDataActivityForSlot(I)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract blacklist getDataActivityForSubscription(I)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract blacklist getDataState()I
.end method

.method public abstract blacklist getDataStateForSlot(I)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract blacklist getDataStateForSubscription(I)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract blacklist getDeviceId()Ljava/lang/String;
.end method

.method public abstract blacklist getDeviceIdForSlot(I)Ljava/lang/String;
.end method

.method public abstract blacklist getDeviceIdForSubscription(I)Ljava/lang/String;
.end method

.method public abstract blacklist getDeviceIdList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getDeviceSoftwareVersion()Ljava/lang/String;
.end method

.method public abstract blacklist getDeviceSoftwareVersionForSlot(I)Ljava/lang/String;
.end method

.method public abstract blacklist getDeviceSoftwareVersionForSubscription(I)Ljava/lang/String;
.end method

.method public abstract blacklist getEsimGPIOState()I
.end method

.method public abstract blacklist getFeatureInfoIntentByCloud(Ljava/lang/String;)Landroid/content/Intent;
.end method

.method public abstract blacklist getIccCardCount()I
.end method

.method public abstract blacklist getImei()Ljava/lang/String;
.end method

.method public abstract blacklist getImeiForSlot(I)Ljava/lang/String;
.end method

.method public abstract blacklist getImeiForSubscription(I)Ljava/lang/String;
.end method

.method public abstract blacklist getImeiList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getLine1Number()Ljava/lang/String;
.end method

.method public abstract blacklist getLine1NumberForSlot(I)Ljava/lang/String;
.end method

.method public abstract blacklist getLine1NumberForSubscription(I)Ljava/lang/String;
.end method

.method public abstract blacklist getMeid()Ljava/lang/String;
.end method

.method public abstract blacklist getMeidForSlot(I)Ljava/lang/String;
.end method

.method public abstract blacklist getMeidForSubscription(I)Ljava/lang/String;
.end method

.method public abstract blacklist getMeidList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getMiuiDeviceId()Ljava/lang/String;
.end method

.method public abstract blacklist getMiuiLevel(Landroid/telephony/SignalStrength;)I
.end method

.method public abstract blacklist getMobileNetworkCapability(I)Ljava/lang/String;
.end method

.method public abstract blacklist getNetworkCountryIso()Ljava/lang/String;
.end method

.method public abstract blacklist getNetworkCountryIsoForSlot(I)Ljava/lang/String;
.end method

.method public abstract blacklist getNetworkCountryIsoForSubscription(I)Ljava/lang/String;
.end method

.method public abstract blacklist getNetworkOperator()Ljava/lang/String;
.end method

.method public abstract blacklist getNetworkOperatorForSlot(I)Ljava/lang/String;
.end method

.method public abstract blacklist getNetworkOperatorForSubscription(I)Ljava/lang/String;
.end method

.method public abstract blacklist getNetworkOperatorName()Ljava/lang/String;
.end method

.method public abstract blacklist getNetworkOperatorNameForSlot(I)Ljava/lang/String;
.end method

.method public abstract blacklist getNetworkOperatorNameForSubscription(I)Ljava/lang/String;
.end method

.method public abstract blacklist getNetworkType()I
.end method

.method public abstract blacklist getNetworkTypeForSlot(I)I
.end method

.method public abstract blacklist getNetworkTypeForSubscription(I)I
.end method

.method public abstract blacklist getNrConfigType()I
.end method

.method public abstract blacklist getNrConfigType(I)I
.end method

.method public abstract blacklist getPhoneCount()I
.end method

.method public abstract blacklist getPhoneType()I
.end method

.method public abstract blacklist getPhoneTypeForSlot(I)I
.end method

.method public abstract blacklist getPhoneTypeForSubscription(I)I
.end method

.method public abstract blacklist getProductEid()Ljava/lang/String;
.end method

.method public abstract blacklist getSimCountryIso()Ljava/lang/String;
.end method

.method public abstract blacklist getSimCountryIsoForSlot(I)Ljava/lang/String;
.end method

.method public abstract blacklist getSimCountryIsoForSubscription(I)Ljava/lang/String;
.end method

.method public abstract blacklist getSimOperator()Ljava/lang/String;
.end method

.method public abstract blacklist getSimOperatorForSlot(I)Ljava/lang/String;
.end method

.method public abstract blacklist getSimOperatorForSubscription(I)Ljava/lang/String;
.end method

.method public abstract blacklist getSimOperatorName()Ljava/lang/String;
.end method

.method public abstract blacklist getSimOperatorNameForSlot(I)Ljava/lang/String;
.end method

.method public abstract blacklist getSimOperatorNameForSubscription(I)Ljava/lang/String;
.end method

.method public abstract blacklist getSimSerialNumber()Ljava/lang/String;
.end method

.method public abstract blacklist getSimSerialNumberForSlot(I)Ljava/lang/String;
.end method

.method public abstract blacklist getSimSerialNumberForSubscription(I)Ljava/lang/String;
.end method

.method public abstract blacklist getSimState()I
.end method

.method public abstract blacklist getSimStateForSlot(I)I
.end method

.method public abstract blacklist getSimStateForSubscription(I)I
.end method

.method public abstract blacklist getSmallDeviceId()Ljava/lang/String;
.end method

.method public abstract blacklist getSpn(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
.end method

.method public abstract blacklist getSubscriberId()Ljava/lang/String;
.end method

.method public abstract blacklist getSubscriberIdForSlot(I)Ljava/lang/String;
.end method

.method public abstract blacklist getSubscriberIdForSubscription(I)Ljava/lang/String;
.end method

.method public abstract blacklist getVoiceMailAlphaTag()Ljava/lang/String;
.end method

.method public abstract blacklist getVoiceMailAlphaTagForSlot(I)Ljava/lang/String;
.end method

.method public abstract blacklist getVoiceMailAlphaTagForSubscription(I)Ljava/lang/String;
.end method

.method public abstract blacklist getVoiceMailNumber()Ljava/lang/String;
.end method

.method public abstract blacklist getVoiceMailNumberForSlot(I)Ljava/lang/String;
.end method

.method public abstract blacklist getVoiceMailNumberForSubscription(I)Ljava/lang/String;
.end method

.method public abstract blacklist getXMNetworkType()I
.end method

.method public abstract blacklist getXMNetworkType(I)I
.end method

.method public abstract blacklist hasIccCard()Z
.end method

.method public abstract blacklist hasIccCard(I)Z
.end method

.method public abstract blacklist isChinaTelecomTest(Ljava/lang/String;)Z
.end method

.method public abstract blacklist isCmccCooperationDevice()Z
.end method

.method public abstract blacklist isConcurrentCallsPossible()Z
.end method

.method public abstract blacklist isDisableLte(Z)Z
.end method

.method public abstract blacklist isDsdaEnabled()Z
.end method

.method public abstract blacklist isDualNrEnabled()Z
.end method

.method public abstract blacklist isDualNrSupported()Z
.end method

.method public abstract blacklist isDualSaEnabled()Z
.end method

.method public abstract blacklist isDualSaSupported()Z
.end method

.method public abstract blacklist isDualVolteSupported()Z
.end method

.method public abstract blacklist isEsimActive()Z
.end method

.method public abstract blacklist isFeatureDisabledByCloud(Ljava/lang/String;)Z
.end method

.method public abstract blacklist isFeatureEnabledByCloud(Ljava/lang/String;)Z
.end method

.method public abstract blacklist isFiveGCapable()Z
.end method

.method public abstract blacklist isGameFiveGOptimizeSupported()Z
.end method

.method public abstract blacklist isGwsdSupport()Z
.end method

.method public abstract blacklist isImsRegistered(I)Z
.end method

.method public abstract blacklist isMiuiCustForKrOps()Z
.end method

.method public abstract blacklist isMultiSimEnabled()Z
.end method

.method public abstract blacklist isNrCAEnabled(I)Z
.end method

.method public abstract blacklist isNrCaSupported()Z
.end method

.method public abstract blacklist isRegionForTaiWan()Z
.end method

.method public abstract blacklist isSameOperator(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract blacklist isSupportEsimForCountry(Ljava/lang/String;)Z
.end method

.method public abstract blacklist isUserFiveGEnabled()Z
.end method

.method public abstract blacklist isUserFiveGEnabled(I)Z
.end method

.method public abstract blacklist isUserFiveGSaEnabled()Z
.end method

.method public abstract blacklist isUserFiveGSaEnabled(I)Z
.end method

.method public abstract blacklist isVideoTelephonyAvailable(I)Z
.end method

.method public abstract blacklist isVoNREnabled(I)Z
.end method

.method public abstract blacklist isVoNRSupported()Z
.end method

.method public abstract blacklist isVoiceCapable()Z
.end method

.method public abstract blacklist isVolteEnabledByPlatform()Z
.end method

.method public abstract blacklist isVolteEnabledByPlatform(I)Z
.end method

.method public abstract blacklist isVolteEnabledByUser()Z
.end method

.method public abstract blacklist isVolteEnabledByUser(I)Z
.end method

.method public abstract blacklist isVtEnabledByPlatform()Z
.end method

.method public abstract blacklist isVtEnabledByPlatform(I)Z
.end method

.method public abstract blacklist isWifiCallingAvailable(I)Z
.end method

.method public abstract blacklist listen(Landroid/telephony/PhoneStateListener;I)V
.end method

.method public abstract blacklist listenForSlot(ILandroid/telephony/PhoneStateListener;I)V
.end method

.method public abstract blacklist listenForSubscription(ILandroid/telephony/PhoneStateListener;I)V
.end method

.method public abstract blacklist recordTelephonyEvent(Landroid/os/Bundle;)V
.end method

.method public abstract blacklist setCallForwardingOption(IIILjava/lang/String;Landroid/os/ResultReceiver;)V
.end method

.method public abstract blacklist setCrbtDisable(Z)V
.end method

.method public abstract blacklist setDsdaEnabled(ZI)V
.end method

.method public abstract blacklist setDualSaEnabled(Z)V
.end method

.method public abstract blacklist setEsimState(I)I
.end method

.method public abstract blacklist setIccCardActivate(IZ)V
.end method

.method public abstract blacklist setMobileNetworkCapability(Ljava/lang/String;)V
.end method

.method public abstract blacklist setUserFiveGEnabled(Z)V
.end method

.method public abstract blacklist setUserFiveGEnabled(ZI)V
.end method

.method public abstract blacklist setUserFiveGSaEnabled(Z)V
.end method

.method public abstract blacklist setUserFiveGSaEnabled(ZI)V
.end method

.method public abstract blacklist setUserNrCAEnabled(II)V
.end method

.method public abstract blacklist setUserVoNREnabled(IZ)V
.end method
