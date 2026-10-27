.class public Landroid/telephony/TelephonyBaseUtilsStub;
.super Ljava/lang/Object;
.source "TelephonyBaseUtilsStub.java"


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "TelephonyBaseUtilsStub"

.field private static volatile blacklist sInstance:Landroid/telephony/ITelephonyBaseUtils;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 38
    :try_start_0
    const-string v0, "android.telephony.TelephonyBaseUtilsImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 39
    .local v0, "cls":Ljava/lang/Class;
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 40
    .local v2, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 41
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ITelephonyBaseUtils;

    sput-object v1, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 44
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    goto :goto_22

    .line 42
    :catch_1c
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "failed to initialize miui instance ..."

    invoke-static {v1}, Landroid/telephony/TelephonyBaseUtilsStub;->logi(Ljava/lang/String;)V

    .line 45
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_22
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static blacklist appendNonSeparator(Ljava/lang/StringBuilder;CI)V
    .registers 4
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "c"    # C
    .param p2, "pos"    # I

    .line 176
    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    if-eqz v0, :cond_9

    .line 177
    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    invoke-interface {v0, p0, p1, p2}, Landroid/telephony/ITelephonyBaseUtils;->appendNonSeparator(Ljava/lang/StringBuilder;CI)V

    .line 179
    :cond_9
    return-void
.end method

.method public static blacklist canShowPrivateInfo()Z
    .registers 1

    .line 106
    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    if-eqz v0, :cond_b

    .line 107
    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    invoke-interface {v0}, Landroid/telephony/ITelephonyBaseUtils;->canShowPrivateInfo()Z

    move-result v0

    return v0

    .line 109
    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist cellIdentityCdmaToString(Ljava/lang/String;Landroid/telephony/CellIdentityCdma;)Ljava/lang/String;
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "ci"    # Landroid/telephony/CellIdentityCdma;

    .line 148
    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    if-eqz v0, :cond_b

    .line 149
    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    invoke-interface {v0, p0, p1}, Landroid/telephony/ITelephonyBaseUtils;->cellIdentityCdmaToString(Ljava/lang/String;Landroid/telephony/CellIdentityCdma;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 151
    :cond_b
    const-string v0, ""

    return-object v0
.end method

.method public static blacklist cellIdentityGsmToString(Ljava/lang/String;Landroid/telephony/CellIdentityGsm;)Ljava/lang/String;
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "ci"    # Landroid/telephony/CellIdentityGsm;

    .line 127
    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    if-eqz v0, :cond_b

    .line 128
    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    invoke-interface {v0, p0, p1}, Landroid/telephony/ITelephonyBaseUtils;->cellIdentityGsmToString(Ljava/lang/String;Landroid/telephony/CellIdentityGsm;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 130
    :cond_b
    const-string v0, ""

    return-object v0
.end method

.method public static blacklist cellIdentityLteToString(Ljava/lang/String;Landroid/telephony/CellIdentityLte;)Ljava/lang/String;
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "ci"    # Landroid/telephony/CellIdentityLte;

    .line 134
    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    if-eqz v0, :cond_b

    .line 135
    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    invoke-interface {v0, p0, p1}, Landroid/telephony/ITelephonyBaseUtils;->cellIdentityLteToString(Ljava/lang/String;Landroid/telephony/CellIdentityLte;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 137
    :cond_b
    const-string v0, ""

    return-object v0
.end method

.method public static blacklist cellIdentityNrToString(Ljava/lang/String;Landroid/telephony/CellIdentityNr;)Ljava/lang/String;
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "ci"    # Landroid/telephony/CellIdentityNr;

    .line 156
    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    if-eqz v0, :cond_b

    .line 157
    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    invoke-interface {v0, p0, p1}, Landroid/telephony/ITelephonyBaseUtils;->cellIdentityNrToString(Ljava/lang/String;Landroid/telephony/CellIdentityNr;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 159
    :cond_b
    const-string v0, ""

    return-object v0
.end method

.method public static blacklist cellIdentityWcdmaToString(Ljava/lang/String;Landroid/telephony/CellIdentityWcdma;)Ljava/lang/String;
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "ci"    # Landroid/telephony/CellIdentityWcdma;

    .line 141
    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    if-eqz v0, :cond_b

    .line 142
    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    invoke-interface {v0, p0, p1}, Landroid/telephony/ITelephonyBaseUtils;->cellIdentityWcdmaToString(Ljava/lang/String;Landroid/telephony/CellIdentityWcdma;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 144
    :cond_b
    const-string v0, ""

    return-object v0
.end method

.method public static blacklist checkCallingOrSelfPermissionGranted(I)Z
    .registers 2
    .param p0, "callingUid"    # I

    .line 86
    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    if-eqz v0, :cond_b

    .line 87
    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    invoke-interface {v0, p0}, Landroid/telephony/ITelephonyBaseUtils;->checkCallingOrSelfPermissionGranted(I)Z

    move-result v0

    return v0

    .line 89
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist dataCallResponseToString(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    .registers 6
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

    .line 94
    .local p0, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkAddress;>;"
    .local p1, "dnsAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .local p2, "gatewayAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    if-eqz v0, :cond_b

    .line 95
    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    invoke-interface {v0, p0, p1, p2}, Landroid/telephony/ITelephonyBaseUtils;->dataCallResponseToString(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 97
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, " addresses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 99
    const-string v2, " dnses="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 100
    const-string v2, " gateways="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist delayNotifyCallStateIfNeeded(Landroid/os/Handler;Ljava/lang/String;IIZ)Z
    .registers 12
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "callState"    # I
    .param p3, "phoneId"    # I
    .param p4, "skip"    # Z

    .line 203
    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    if-eqz v0, :cond_10

    .line 204
    sget-object v1, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v6}, Landroid/telephony/ITelephonyBaseUtils;->delayNotifyCallStateIfNeeded(Landroid/os/Handler;Ljava/lang/String;IIZ)Z

    move-result v0

    return v0

    .line 206
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist getCdmaTelephonyProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .line 182
    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    if-eqz v0, :cond_b

    .line 183
    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    invoke-interface {v0, p0, p1}, Landroid/telephony/ITelephonyBaseUtils;->getCdmaTelephonyProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 185
    :cond_b
    return-object p1
.end method

.method public static blacklist getEndcStatus()I
    .registers 2

    .line 222
    const/4 v0, 0x0

    .line 223
    .local v0, "upperLayerInd":I
    sget-object v1, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    if-eqz v1, :cond_b

    .line 224
    sget-object v1, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    invoke-interface {v1}, Landroid/telephony/ITelephonyBaseUtils;->getEndcStatus()I

    move-result v0

    .line 226
    :cond_b
    return v0
.end method

.method public static blacklist getHysteresisDb(I)I
    .registers 2
    .param p0, "defaultVal"    # I

    .line 266
    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    if-eqz v0, :cond_b

    .line 267
    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    invoke-interface {v0, p0}, Landroid/telephony/ITelephonyBaseUtils;->getHysteresisDb(I)I

    move-result v0

    return v0

    .line 269
    :cond_b
    return p0
.end method

.method public static blacklist getRestrictDcnrStatus()I
    .registers 2

    .line 230
    const/4 v0, 0x1

    .line 231
    .local v0, "restrictDcnr":I
    sget-object v1, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    if-eqz v1, :cond_b

    .line 232
    sget-object v1, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    invoke-interface {v1}, Landroid/telephony/ITelephonyBaseUtils;->getRestrictDcnrStatus()I

    move-result v0

    .line 234
    :cond_b
    return v0
.end method

.method public static blacklist hidePrivateInfoToStar(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "info"    # Ljava/lang/String;

    .line 113
    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    if-eqz v0, :cond_b

    .line 114
    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    invoke-interface {v0, p0}, Landroid/telephony/ITelephonyBaseUtils;->hidePrivateInfoToStar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 116
    :cond_b
    return-object p0
.end method

.method public static blacklist inputBattryFlag(Landroid/content/Context;IIZ)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rat"    # I
    .param p2, "connectionState"    # I
    .param p3, "hasMultipleTopLevelCalls"    # Z

    .line 260
    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    if-eqz v0, :cond_9

    .line 261
    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/telephony/ITelephonyBaseUtils;->inputBattryFlag(Landroid/content/Context;IIZ)V

    .line 263
    :cond_9
    return-void
.end method

.method public static blacklist isCustForJpRk()Z
    .registers 1

    .line 65
    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    if-eqz v0, :cond_b

    .line 66
    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    invoke-interface {v0}, Landroid/telephony/ITelephonyBaseUtils;->isCustForJpRk()Z

    move-result v0

    return v0

    .line 68
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isCustSingleSimDevice()Z
    .registers 1

    .line 189
    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    if-eqz v0, :cond_b

    .line 190
    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    invoke-interface {v0}, Landroid/telephony/ITelephonyBaseUtils;->isCustSingleSimDevice()Z

    move-result v0

    return v0

    .line 192
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isDsdaSupported()Z
    .registers 1

    .line 252
    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    if-eqz v0, :cond_b

    .line 253
    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    invoke-interface {v0}, Landroid/telephony/ITelephonyBaseUtils;->isDsdaSupported()Z

    move-result v0

    return v0

    .line 255
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isGoogleCspRom()Z
    .registers 1

    .line 58
    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    if-nez v0, :cond_6

    .line 59
    const/4 v0, 0x0

    return v0

    .line 61
    :cond_6
    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    invoke-interface {v0}, Landroid/telephony/ITelephonyBaseUtils;->isGoogleCspRom()Z

    move-result v0

    return v0
.end method

.method public static blacklist isIgnoreSmsStorageApplication(Ljava/lang/String;)Z
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 79
    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    if-eqz v0, :cond_b

    .line 80
    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    invoke-interface {v0, p0}, Landroid/telephony/ITelephonyBaseUtils;->isIgnoreSmsStorageApplication(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 82
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isMeoSim(Ljava/lang/String;)Z
    .registers 2
    .param p0, "operator"    # Ljava/lang/String;

    .line 72
    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    if-eqz v0, :cond_b

    .line 73
    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    invoke-interface {v0, p0}, Landroid/telephony/ITelephonyBaseUtils;->isMeoSim(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 75
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isMiuiRom()Z
    .registers 1

    .line 51
    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    if-nez v0, :cond_6

    .line 52
    const/4 v0, 0x0

    return v0

    .line 54
    :cond_6
    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    invoke-interface {v0}, Landroid/telephony/ITelephonyBaseUtils;->isMiuiRom()Z

    move-result v0

    return v0
.end method

.method public static blacklist isPseudoDsda()Z
    .registers 1

    .line 244
    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    if-eqz v0, :cond_b

    .line 245
    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    invoke-interface {v0}, Landroid/telephony/ITelephonyBaseUtils;->isPseudoDsda()Z

    move-result v0

    return v0

    .line 247
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isSupportWechatAndCallCoexist()Z
    .registers 1

    .line 196
    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    if-eqz v0, :cond_b

    .line 197
    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    invoke-interface {v0}, Landroid/telephony/ITelephonyBaseUtils;->isSupportWechatAndCallCoexist()Z

    move-result v0

    return v0

    .line 199
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist logi(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 273
    const-string v0, "TelephonyBaseUtilsStub"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    return-void
.end method

.method public static blacklist neighboringCellInfoToString(Landroid/telephony/NeighboringCellInfo;)Ljava/lang/String;
    .registers 2
    .param p0, "ci"    # Landroid/telephony/NeighboringCellInfo;

    .line 163
    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    if-eqz v0, :cond_b

    .line 164
    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    invoke-interface {v0, p0}, Landroid/telephony/ITelephonyBaseUtils;->neighboringCellInfoToString(Landroid/telephony/NeighboringCellInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 166
    :cond_b
    const-string v0, ""

    return-object v0
.end method

.method public static blacklist putPhoneIdExtra(Landroid/content/Intent;I)V
    .registers 3
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "phoneId"    # I

    .line 210
    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    if-eqz v0, :cond_9

    .line 211
    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    invoke-interface {v0, p0, p1}, Landroid/telephony/ITelephonyBaseUtils;->putPhoneIdExtra(Landroid/content/Intent;I)V

    .line 213
    :cond_9
    return-void
.end method

.method public static blacklist putPostCarrierConfigForMiui(Landroid/os/PersistableBundle;)V
    .registers 2
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 238
    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    if-eqz v0, :cond_9

    .line 239
    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    invoke-interface {v0, p0}, Landroid/telephony/ITelephonyBaseUtils;->putPostCarrierConfigForMiui(Landroid/os/PersistableBundle;)V

    .line 241
    :cond_9
    return-void
.end method

.method public static blacklist putSlotIdPhoneIdAndSubIdExtra(Landroid/content/Intent;III)V
    .registers 5
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "slotId"    # I
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I

    .line 216
    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    if-eqz v0, :cond_9

    .line 217
    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/telephony/ITelephonyBaseUtils;->putSlotIdPhoneIdAndSubIdExtra(Landroid/content/Intent;III)V

    .line 219
    :cond_9
    return-void
.end method

.method public static blacklist removeApnFromPermanentFailureSet(ILjava/util/Set;I)V
    .registers 4
    .param p0, "subId"    # I
    .param p2, "apn"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 170
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    if-eqz v0, :cond_9

    .line 171
    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    invoke-interface {v0, p0, p1, p2}, Landroid/telephony/ITelephonyBaseUtils;->removeApnFromPermanentFailureSet(ILjava/util/Set;I)V

    .line 173
    :cond_9
    return-void
.end method

.method public static blacklist toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "n"    # Ljava/lang/String;

    .line 120
    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    if-eqz v0, :cond_b

    .line 121
    sget-object v0, Landroid/telephony/TelephonyBaseUtilsStub;->sInstance:Landroid/telephony/ITelephonyBaseUtils;

    invoke-interface {v0, p0}, Landroid/telephony/ITelephonyBaseUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 123
    :cond_b
    return-object p0
.end method
