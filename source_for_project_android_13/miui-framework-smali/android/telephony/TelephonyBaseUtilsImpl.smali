.class public Landroid/telephony/TelephonyBaseUtilsImpl;
.super Ljava/lang/Object;
.source "TelephonyBaseUtilsImpl.java"

# interfaces
.implements Landroid/telephony/ITelephonyBaseUtils;


# static fields
.field private static final blacklist DELAY_NOTIFY_CALL_STATE_TIME:I = 0x4e20

.field private static final blacklist IGNORE_PACKAGE_NAMES:[Ljava/lang/String;

.field public static final blacklist IS_MTK:Z

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "TelephonyBaseUtilsImpl"

.field private static final blacklist MSG_NOTIFY_CALL_STATE_CHANGED:I = 0x3

.field private static final blacklist PSEUDO_DSDA:I = 0x2

.field private static final blacklist WECHAT_PKG_NAME:Ljava/lang/String; = "com.tencent.mm"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 8

    .line 49
    const-string v0, "com.xiaomi.xmsf"

    const-string v1, "com.miui.cloudservice"

    const-string v2, "com.miui.networkassistant"

    const-string v3, "com.miui.yellowpage"

    const-string v4, "com.miui.securitycenter"

    const-string v5, "com.xiaomi.simactivate.service"

    const-string v6, "com.android.mms"

    const-string v7, "com.xiaomi.finddevice"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyBaseUtilsImpl;->IGNORE_PACKAGE_NAMES:[Ljava/lang/String;

    .line 53
    const-string v0, "vendor"

    invoke-static {v0}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mediatek"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/telephony/TelephonyBaseUtilsImpl;->IS_MTK:Z

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;
    .registers 2

    .line 403
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist logi(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 407
    const-string v0, "TelephonyBaseUtilsImpl"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    return-void
.end method

.method private static blacklist logi(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 411
    const-string v0, "TelephonyBaseUtilsImpl"

    invoke-static {v0, p0, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 412
    return-void
.end method


# virtual methods
.method public blacklist appendNonSeparator(Ljava/lang/StringBuilder;CI)V
    .registers 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "c"    # C
    .param p3, "pos"    # I

    .line 253
    invoke-static {p1, p2, p3}, Landroid/telephony/PhoneNumberUtilsInjector;->appendNonSeparator(Ljava/lang/StringBuilder;CI)V

    .line 254
    return-void
.end method

.method public blacklist canShowPrivateInfo()Z
    .registers 2

    .line 119
    sget-boolean v0, Lmiui/telephony/PhoneDebug;->VDBG:Z

    return v0
.end method

.method public blacklist cellIdentityCdmaToString(Ljava/lang/String;Landroid/telephony/CellIdentityCdma;)Ljava/lang/String;
    .registers 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "ci"    # Landroid/telephony/CellIdentityCdma;

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, ":{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {p0}, Landroid/telephony/TelephonyBaseUtilsImpl;->canShowPrivateInfo()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 196
    const-string v1, " mNetworkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 197
    const-string v2, " mSystemId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 198
    const-string v2, " mBasestationId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 199
    const-string v2, " mLongitude="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telephony/CellIdentityCdma;->getLongitude()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 200
    const-string v2, " mLatitude="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telephony/CellIdentityCdma;->getLatitude()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    :cond_55
    const-string v1, " mAlphaLong="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telephony/CellIdentityCdma;->getOperatorAlphaLong()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 203
    const-string v2, " mAlphaShort="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telephony/CellIdentityCdma;->getOperatorAlphaShort()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 204
    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist cellIdentityGsmToString(Ljava/lang/String;Landroid/telephony/CellIdentityGsm;)Ljava/lang/String;
    .registers 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "ci"    # Landroid/telephony/CellIdentityGsm;

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, ":{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {p0}, Landroid/telephony/TelephonyBaseUtilsImpl;->canShowPrivateInfo()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 138
    const-string v1, " mLac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 139
    const-string v2, " mCid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 140
    const-string v2, " mArfcn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telephony/CellIdentityGsm;->getArfcn()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 141
    const-string v2, " mBsic="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telephony/CellIdentityGsm;->getBsic()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :cond_51
    const-string v1, " mMcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telephony/CellIdentityGsm;->getMccString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 144
    const-string v2, " mMnc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telephony/CellIdentityGsm;->getMncString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 145
    const-string v2, " mAlphaLong="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telephony/CellIdentityGsm;->getOperatorAlphaLong()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 146
    const-string v2, " mAlphaShort="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telephony/CellIdentityGsm;->getOperatorAlphaShort()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 147
    const-string v2, " mAdditionalPlmns="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telephony/CellIdentityGsm;->getAdditionalPlmns()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 148
    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist cellIdentityLteToString(Ljava/lang/String;Landroid/telephony/CellIdentityLte;)Ljava/lang/String;
    .registers 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "ci"    # Landroid/telephony/CellIdentityLte;

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, ":{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {p0}, Landroid/telephony/TelephonyBaseUtilsImpl;->canShowPrivateInfo()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 156
    const-string v1, " mCi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 157
    const-string v2, " mPci="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telephony/CellIdentityLte;->getPci()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 158
    const-string v2, " mTac="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 159
    const-string v2, " mEarfcn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telephony/CellIdentityLte;->getEarfcn()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 160
    const-string v2, " mBands="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telephony/CellIdentityLte;->getBands()[I

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    :cond_59
    const-string v1, " mBandwidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telephony/CellIdentityLte;->getBandwidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 163
    const-string v2, " mMcc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telephony/CellIdentityLte;->getMccString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 164
    const-string v2, " mMnc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telephony/CellIdentityLte;->getMncString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 165
    const-string v2, " mAlphaLong="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telephony/CellIdentityLte;->getOperatorAlphaLong()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 166
    const-string v2, " mAlphaShort="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telephony/CellIdentityLte;->getOperatorAlphaShort()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 167
    const-string v2, " mAdditionalPlmns="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telephony/CellIdentityLte;->getAdditionalPlmns()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 168
    const-string v2, " mCsgInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telephony/CellIdentityLte;->getClosedSubscriberGroupInfo()Landroid/telephony/ClosedSubscriberGroupInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 169
    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist cellIdentityNrToString(Ljava/lang/String;Landroid/telephony/CellIdentityNr;)Ljava/lang/String;
    .registers 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "ci"    # Landroid/telephony/CellIdentityNr;

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, ":{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {p0}, Landroid/telephony/TelephonyBaseUtilsImpl;->canShowPrivateInfo()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 212
    const-string v1, " mCi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telephony/CellIdentityNr;->getNci()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 213
    const-string v2, " mPci="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telephony/CellIdentityNr;->getPci()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 214
    const-string v2, " mTac="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telephony/CellIdentityNr;->getTac()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 215
    const-string v2, " mNrarfcn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telephony/CellIdentityNr;->getNrarfcn()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 216
    const-string v2, " mBands="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telephony/CellIdentityNr;->getBands()[I

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    :cond_59
    const-string v1, " mMcc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telephony/CellIdentityNr;->getMccString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 219
    const-string v2, " mMnc = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telephony/CellIdentityNr;->getMncString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 220
    const-string v2, " mAlphaLong = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telephony/CellIdentityNr;->getOperatorAlphaLong()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 221
    const-string v2, " mAlphaShort = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telephony/CellIdentityNr;->getOperatorAlphaShort()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 222
    const-string v2, " mAdditionalPlmns = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telephony/CellIdentityNr;->getAdditionalPlmns()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 223
    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist cellIdentityWcdmaToString(Ljava/lang/String;Landroid/telephony/CellIdentityWcdma;)Ljava/lang/String;
    .registers 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "ci"    # Landroid/telephony/CellIdentityWcdma;

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, ":{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {p0}, Landroid/telephony/TelephonyBaseUtilsImpl;->canShowPrivateInfo()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 177
    const-string v1, " mLac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 178
    const-string v2, " mCid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 179
    const-string v2, " mPsc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telephony/CellIdentityWcdma;->getPsc()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 180
    const-string v2, " mUarfcn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telephony/CellIdentityWcdma;->getUarfcn()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    :cond_47
    const-string v1, " mMcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telephony/CellIdentityWcdma;->getMccString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 183
    const-string v2, " mMnc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telephony/CellIdentityWcdma;->getMncString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 184
    const-string v2, " mAlphaLong="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telephony/CellIdentityWcdma;->getOperatorAlphaLong()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 185
    const-string v2, " mAlphaShort="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telephony/CellIdentityWcdma;->getOperatorAlphaShort()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 186
    const-string v2, " mAdditionalPlmns="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telephony/CellIdentityWcdma;->getAdditionalPlmns()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 187
    const-string v2, " mCsgInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telephony/CellIdentityWcdma;->getClosedSubscriberGroupInfo()Landroid/telephony/ClosedSubscriberGroupInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 188
    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist checkCallingOrSelfPermissionGranted(I)Z
    .registers 4
    .param p1, "callingUid"    # I

    .line 84
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 88
    .local v0, "appId":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1f

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_1f

    .line 89
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ltz v1, :cond_1d

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {p1, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_1f

    .line 92
    :cond_1d
    const/4 v1, 0x0

    return v1

    .line 90
    :cond_1f
    :goto_1f
    const/4 v1, 0x1

    return v1
.end method

.method public blacklist dataCallResponseToString(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    .registers 10
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

    .line 96
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkAddress;>;"
    .local p2, "dnsAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .local p3, "gatewayAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 97
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Landroid/telephony/TelephonyBaseUtilsImpl;->canShowPrivateInfo()Z

    move-result v1

    const-string v2, " gateways="

    if-eqz v1, :cond_29

    .line 98
    const-string v1, " addresses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 99
    const-string v3, " dnses="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_93

    .line 102
    :cond_29
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, ","

    if-eqz v3, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/LinkAddress;

    .line 103
    .local v3, "addr":Landroid/net/LinkAddress;
    invoke-virtual {v3}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lmiui/telephony/TelephonyUtils;->piiIP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    .end local v3    # "addr":Landroid/net/LinkAddress;
    goto :goto_2d

    .line 106
    :cond_4a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_59

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 107
    :cond_59
    const-string v1, "] dnses=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_62
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 109
    .local v3, "addr":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lmiui/telephony/TelephonyUtils;->piiIP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    .end local v3    # "addr":Ljava/net/InetAddress;
    goto :goto_62

    .line 112
    :cond_7d
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8c

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 113
    :cond_8c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 115
    :goto_93
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist delayNotifyCallStateIfNeeded(Landroid/os/Handler;Ljava/lang/String;IIZ)Z
    .registers 10
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "callState"    # I
    .param p4, "phoneId"    # I
    .param p5, "skip"    # Z

    .line 275
    invoke-virtual {p0}, Landroid/telephony/TelephonyBaseUtilsImpl;->isSupportWechatAndCallCoexist()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 276
    return v1

    .line 279
    :cond_8
    const-string v0, "com.tencent.mm"

    const/4 v2, 0x3

    if-eqz p1, :cond_1c

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 280
    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 283
    :cond_1c
    if-eqz p1, :cond_3e

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    if-eqz p3, :cond_3e

    .line 284
    const-string v0, "Will delay notify call state to wechat app..."

    invoke-static {v0}, Landroid/telephony/TelephonyBaseUtilsImpl;->logi(Ljava/lang/String;)V

    .line 286
    if-nez p5, :cond_37

    .line 287
    invoke-virtual {p1, v2, p3, p4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x4e20

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3c

    .line 290
    :cond_37
    const-string v0, "skip notify call state to wechat app immediately when wechat listen call state at first"

    invoke-static {v0}, Landroid/telephony/TelephonyBaseUtilsImpl;->logi(Ljava/lang/String;)V

    .line 292
    :goto_3c
    const/4 v0, 0x1

    return v0

    .line 295
    :cond_3e
    return v1
.end method

.method public blacklist getCdmaTelephonyProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 257
    invoke-static {p1, p2}, Landroid/telephony/PhoneNumberUtilsInjector;->getCdmaTelephonyProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getEndcStatus()I
    .registers 5

    .line 312
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v0

    .line 313
    .local v0, "slotId":I
    const/4 v1, 0x0

    .line 315
    .local v1, "upperLayerInd":I
    :try_start_9
    invoke-direct {p0}, Landroid/telephony/TelephonyBaseUtilsImpl;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v2

    .line 316
    .local v2, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-eqz v2, :cond_14

    .line 317
    invoke-interface {v2, v0}, Lmiui/telephony/IMiuiTelephony;->getUpperlayerStatus(I)I

    move-result v3
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_13} :catch_15

    move v1, v3

    .line 321
    .end local v2    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :cond_14
    goto :goto_1b

    .line 319
    :catch_15
    move-exception v2

    .line 320
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getUpperlayerStatus exception"

    invoke-static {v3, v2}, Landroid/telephony/TelephonyBaseUtilsImpl;->logi(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 322
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1b
    return v1
.end method

.method public blacklist getHysteresisDb(I)I
    .registers 4
    .param p1, "defaultValue"    # I

    .line 398
    const-string v0, "ro.miui.customized.region"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jp_sb"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "corot"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x0

    return v0

    .line 399
    :cond_1c
    return p1
.end method

.method public blacklist getRestrictDcnrStatus()I
    .registers 5

    .line 331
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v0

    .line 332
    .local v0, "slotId":I
    const/4 v1, 0x1

    .line 334
    .local v1, "restrictDcnr":I
    :try_start_9
    invoke-direct {p0}, Landroid/telephony/TelephonyBaseUtilsImpl;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v2

    .line 335
    .local v2, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-eqz v2, :cond_14

    .line 336
    invoke-interface {v2, v0}, Lmiui/telephony/IMiuiTelephony;->getRestrictDcnrStatus(I)I

    move-result v3
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_13} :catch_15

    move v1, v3

    .line 340
    .end local v2    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :cond_14
    goto :goto_1b

    .line 338
    :catch_15
    move-exception v2

    .line 339
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getRestrictDcnrStatus exception"

    invoke-static {v3, v2}, Landroid/telephony/TelephonyBaseUtilsImpl;->logi(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 341
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1b
    return v1
.end method

.method public blacklist hidePrivateInfoToStar(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "info"    # Ljava/lang/String;

    .line 123
    invoke-virtual {p0}, Landroid/telephony/TelephonyBaseUtilsImpl;->canShowPrivateInfo()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 124
    return-object p1

    .line 126
    :cond_7
    const-string v0, "***"

    return-object v0
.end method

.method public blacklist inputBattryFlag(Landroid/content/Context;IIZ)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rat"    # I
    .param p3, "connectionState"    # I
    .param p4, "hasMultipleTopLevelCalls"    # Z

    .line 364
    const-string v0, "inputBattryFlag close IOException"

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_7

    return-void

    .line 365
    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1105005f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 366
    .local v1, "needLimitBattry":Z
    if-nez v1, :cond_15

    return-void

    .line 367
    :cond_15
    const/4 v2, 0x0

    .line 368
    .local v2, "value":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VoiceRadioTechnology = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", connectionState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", hasMultipleTopLevelCalls = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/TelephonyBaseUtilsImpl;->logi(Ljava/lang/String;)V

    .line 369
    const/16 v3, 0x10

    const/4 v4, 0x6

    if-ne p2, v3, :cond_4a

    if-eq p3, v4, :cond_4a

    .line 370
    const-string v2, "1"

    goto :goto_50

    .line 371
    :cond_4a
    if-ne p3, v4, :cond_95

    if-nez p4, :cond_95

    .line 372
    const-string v2, "0"

    .line 376
    :goto_50
    const/4 v3, 0x0

    .line 378
    .local v3, "fileWriter":Ljava/io/FileWriter;
    :try_start_51
    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/class/qcom-battery/plate_shock"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 379
    .local v4, "ChargeControlFile":Ljava/io/File;
    new-instance v5, Ljava/io/FileWriter;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    move-object v3, v5

    .line 380
    invoke-virtual {v3, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 381
    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V
    :try_end_65
    .catch Ljava/io/FileNotFoundException; {:try_start_51 .. :try_end_65} :catch_7d
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_65} :catch_71
    .catchall {:try_start_51 .. :try_end_65} :catchall_6f

    .line 387
    .end local v4    # "ChargeControlFile":Ljava/io/File;
    nop

    .line 389
    :try_start_66
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_6a

    .line 392
    :goto_69
    goto :goto_89

    .line 390
    :catch_6a
    move-exception v4

    .line 391
    .local v4, "e":Ljava/io/IOException;
    invoke-static {v0, v4}, Landroid/telephony/TelephonyBaseUtilsImpl;->logi(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_69

    .line 387
    :catchall_6f
    move-exception v4

    goto :goto_8a

    .line 384
    :catch_71
    move-exception v4

    .line 385
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_72
    const-string v5, "inputBattryFlag IOException"

    invoke-static {v5, v4}, Landroid/telephony/TelephonyBaseUtilsImpl;->logi(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_77
    .catchall {:try_start_72 .. :try_end_77} :catchall_6f

    .line 387
    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_89

    .line 389
    :try_start_79
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_6a

    goto :goto_69

    .line 382
    :catch_7d
    move-exception v4

    .line 383
    .local v4, "e":Ljava/io/FileNotFoundException;
    :try_start_7e
    const-string v5, "inputBattryFlag FileNotFoundException"

    invoke-static {v5, v4}, Landroid/telephony/TelephonyBaseUtilsImpl;->logi(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_83
    .catchall {:try_start_7e .. :try_end_83} :catchall_6f

    .line 387
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    if-eqz v3, :cond_89

    .line 389
    :try_start_85
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_6a

    goto :goto_69

    .line 395
    :cond_89
    :goto_89
    return-void

    .line 387
    :goto_8a
    if-eqz v3, :cond_94

    .line 389
    :try_start_8c
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_90

    .line 392
    goto :goto_94

    .line 390
    :catch_90
    move-exception v5

    .line 391
    .local v5, "e":Ljava/io/IOException;
    invoke-static {v0, v5}, Landroid/telephony/TelephonyBaseUtilsImpl;->logi(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 394
    .end local v5    # "e":Ljava/io/IOException;
    :cond_94
    :goto_94
    throw v4

    .line 374
    .end local v3    # "fileWriter":Ljava/io/FileWriter;
    :cond_95
    return-void
.end method

.method public blacklist isCustForJpRk()Z
    .registers 3

    .line 67
    const-string v0, "ro.miui.customized.region"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jp_rk"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist isCustSingleSimDevice()Z
    .registers 2

    .line 261
    invoke-static {}, Lmiui/telephony/TelephonyManager;->isCustSingleSimDevice()Z

    move-result v0

    return v0
.end method

.method public blacklist isDsdaSupported()Z
    .registers 2

    .line 360
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManagerEx;->isDsdaSupported()Z

    move-result v0

    return v0
.end method

.method public blacklist isGoogleCspRom()Z
    .registers 3

    .line 63
    const-string v0, "ro.miui.google.csp"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public blacklist isIgnoreSmsStorageApplication(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 75
    sget-object v0, Landroid/telephony/TelephonyBaseUtilsImpl;->IGNORE_PACKAGE_NAMES:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist isMeoSim(Ljava/lang/String;)Z
    .registers 3
    .param p1, "operator"    # Ljava/lang/String;

    .line 71
    const-string v0, "26806"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist isMiuiRom()Z
    .registers 3

    .line 58
    const-string v0, "ro.miui.ui.version.name"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 59
    const-string v0, "ro.miui.ui.version.code"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    .line 58
    :goto_1e
    return v0
.end method

.method public blacklist isPseudoDsda()Z
    .registers 4

    .line 353
    const-string v0, "vendor"

    invoke-static {v0}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mediatek"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 354
    return v1

    .line 356
    :cond_10
    const/4 v0, 0x2

    const-string v2, "ril.multisim.voice_capability"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1
.end method

.method public blacklist isSupportWechatAndCallCoexist()Z
    .registers 3

    .line 265
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 266
    const-string v0, "radio.wechat.secretcode"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 267
    const/4 v0, 0x1

    return v0

    .line 269
    :cond_f
    return v1
.end method

.method public blacklist neighboringCellInfoToString(Landroid/telephony/NeighboringCellInfo;)Ljava/lang/String;
    .registers 8
    .param p1, "ci"    # Landroid/telephony/NeighboringCellInfo;

    .line 228
    invoke-virtual {p0}, Landroid/telephony/TelephonyBaseUtilsImpl;->canShowPrivateInfo()Z

    move-result v0

    if-nez v0, :cond_9

    .line 229
    const-string v0, "NeighboringCellInfo:[...]"

    return-object v0

    .line 232
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getPsc()I

    move-result v1

    const-string v2, "-"

    const/16 v3, 0x63

    const-string v4, "@"

    const/4 v5, -0x1

    if-eq v1, v5, :cond_43

    .line 235
    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getPsc()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 236
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v4

    if-ne v4, v3, :cond_37

    goto :goto_3f

    :cond_37
    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_3f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_7d

    .line 237
    :cond_43
    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v1

    if-eq v1, v5, :cond_7d

    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v1

    if-eq v1, v5, :cond_7d

    .line 238
    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 239
    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 240
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v4

    if-ne v4, v3, :cond_72

    goto :goto_7a

    :cond_72
    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_7a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 242
    :cond_7d
    :goto_7d
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist putPhoneIdExtra(Landroid/content/Intent;I)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "phoneId"    # I

    .line 301
    invoke-static {p1, p2}, Lmiui/telephony/SubscriptionManager;->putPhoneIdExtra(Landroid/content/Intent;I)V

    .line 302
    return-void
.end method

.method public blacklist putPostCarrierConfigForMiui(Landroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "bundle"    # Landroid/os/PersistableBundle;

    .line 345
    sget-boolean v0, Landroid/telephony/TelephonyBaseUtilsImpl;->IS_MTK:Z

    if-nez v0, :cond_a

    .line 346
    const/4 v0, 0x0

    const-string v1, "carrier_use_ims_first_for_emergency_bool"

    invoke-virtual {p1, v1, v0}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 348
    :cond_a
    const-string v0, "allow_emergency_numbers_in_call_log_bool"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 349
    const-string v0, "hide_ims_apn_bool"

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 350
    return-void
.end method

.method public blacklist putSlotIdPhoneIdAndSubIdExtra(Landroid/content/Intent;III)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "slotId"    # I
    .param p3, "phoneId"    # I
    .param p4, "subId"    # I

    .line 305
    invoke-static {p1, p2, p3, p4}, Lmiui/telephony/SubscriptionManager;->putSlotIdPhoneIdAndSubIdExtra(Landroid/content/Intent;III)V

    .line 306
    return-void
.end method

.method public blacklist removeApnFromPermanentFailureSet(ILjava/util/Set;I)V
    .registers 6
    .param p1, "subId"    # I
    .param p3, "apn"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 247
    .local p2, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "45006"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 248
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 250
    :cond_17
    return-void
.end method

.method public blacklist toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "n"    # Ljava/lang/String;

    .line 131
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
