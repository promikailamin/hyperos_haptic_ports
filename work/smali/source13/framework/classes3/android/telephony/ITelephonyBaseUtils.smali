.class public interface abstract Landroid/telephony/ITelephonyBaseUtils;
.super Ljava/lang/Object;
.source "ITelephonyBaseUtils.java"


# virtual methods
.method public abstract blacklist appendNonSeparator(Ljava/lang/StringBuilder;CI)V
.end method

.method public abstract blacklist canShowPrivateInfo()Z
.end method

.method public abstract blacklist cellIdentityCdmaToString(Ljava/lang/String;Landroid/telephony/CellIdentityCdma;)Ljava/lang/String;
.end method

.method public abstract blacklist cellIdentityGsmToString(Ljava/lang/String;Landroid/telephony/CellIdentityGsm;)Ljava/lang/String;
.end method

.method public abstract blacklist cellIdentityLteToString(Ljava/lang/String;Landroid/telephony/CellIdentityLte;)Ljava/lang/String;
.end method

.method public abstract blacklist cellIdentityNrToString(Ljava/lang/String;Landroid/telephony/CellIdentityNr;)Ljava/lang/String;
.end method

.method public abstract blacklist cellIdentityWcdmaToString(Ljava/lang/String;Landroid/telephony/CellIdentityWcdma;)Ljava/lang/String;
.end method

.method public abstract blacklist checkCallingOrSelfPermissionGranted(I)Z
.end method

.method public abstract blacklist dataCallResponseToString(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract blacklist delayNotifyCallStateIfNeeded(Landroid/os/Handler;Ljava/lang/String;IIZ)Z
.end method

.method public abstract blacklist getCdmaTelephonyProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract blacklist getEndcStatus()I
.end method

.method public abstract blacklist getHysteresisDb(I)I
.end method

.method public abstract blacklist getRestrictDcnrStatus()I
.end method

.method public abstract blacklist hidePrivateInfoToStar(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract blacklist inputBattryFlag(Landroid/content/Context;IIZ)V
.end method

.method public abstract blacklist isCustForJpRk()Z
.end method

.method public abstract blacklist isCustSingleSimDevice()Z
.end method

.method public abstract blacklist isDsdaSupported()Z
.end method

.method public abstract blacklist isGoogleCspRom()Z
.end method

.method public abstract blacklist isIgnoreSmsStorageApplication(Ljava/lang/String;)Z
.end method

.method public abstract blacklist isMeoSim(Ljava/lang/String;)Z
.end method

.method public abstract blacklist isMiuiRom()Z
.end method

.method public abstract blacklist isPseudoDsda()Z
.end method

.method public abstract blacklist isSupportWechatAndCallCoexist()Z
.end method

.method public abstract blacklist neighboringCellInfoToString(Landroid/telephony/NeighboringCellInfo;)Ljava/lang/String;
.end method

.method public abstract blacklist putPhoneIdExtra(Landroid/content/Intent;I)V
.end method

.method public abstract blacklist putPostCarrierConfigForMiui(Landroid/os/PersistableBundle;)V
.end method

.method public abstract blacklist putSlotIdPhoneIdAndSubIdExtra(Landroid/content/Intent;III)V
.end method

.method public abstract blacklist removeApnFromPermanentFailureSet(ILjava/util/Set;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract blacklist toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;
.end method
