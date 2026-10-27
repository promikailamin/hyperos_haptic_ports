.class public Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;
.super Ljava/lang/Object;
.source "ChineseTelocation.java"


# static fields
.field public static final blacklist COUNTRY_DETECTOR:Ljava/lang/String; = "country_detector"

.field private static final blacklist EMPTY:Ljava/lang/String; = ""

.field private static final blacklist ENABLE_TELOCATION:Ljava/lang/String; = "enable_telocation"

.field private static final blacklist TAG:Ljava/lang/String; = "ChineseTelocation"

.field private static blacklist sInstance:Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;


# instance fields
.field private blacklist mAllowTelocation:Z

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mSettingObserver:Landroid/database/ContentObserver;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mupdateTelocationSetting(Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;)V
    .registers 1

    invoke-direct {p0}, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->updateTelocationSetting()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 25
    new-instance v0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;

    invoke-direct {v0}, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;-><init>()V

    sput-object v0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->sInstance:Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static blacklist getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, "countryIso":Ljava/lang/String;
    const-string v1, "country_detector"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector;

    .line 141
    .local v1, "detector":Landroid/location/CountryDetector;
    if-eqz v1, :cond_1d

    .line 142
    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v2

    .line 143
    .local v2, "country":Landroid/location/Country;
    if-eqz v2, :cond_16

    .line 144
    invoke-virtual {v2}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    .line 146
    :cond_16
    const-string v3, "ChineseTelocation"

    const-string v4, "getCurrentCountryIso CountryDetector.detectCountry() is null."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .end local v2    # "country":Landroid/location/Country;
    :cond_1d
    :goto_1d
    if-nez v0, :cond_2d

    .line 150
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 151
    .local v2, "locale":Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 153
    .end local v2    # "locale":Ljava/util/Locale;
    :cond_2d
    return-object v0
.end method

.method public static blacklist getInstance()Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;
    .registers 1

    .line 42
    sget-object v0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->sInstance:Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;

    return-object v0
.end method

.method private blacklist initObserver(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    .line 55
    if-nez v0, :cond_a

    .line 56
    iput-object p1, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    .line 58
    :cond_a
    invoke-direct {p0}, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->updateTelocationSetting()V

    .line 60
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 61
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation$1;

    invoke-direct {v1, p0, v0}, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation$1;-><init>(Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mSettingObserver:Landroid/database/ContentObserver;

    .line 69
    iget-object v1, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 70
    const-string v2, "enable_telocation"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mSettingObserver:Landroid/database/ContentObserver;

    .line 69
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 72
    return-void
.end method

.method public static blacklist isTelocationEnable(Landroid/content/ContentResolver;)Z
    .registers 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 50
    invoke-static {p0}, Landroid/provider/MiuiSettings$Telephony;->isTelocationEnable(Landroid/content/ContentResolver;)Z

    move-result v0

    return v0
.end method

.method private blacklist updateTelocationSetting()V
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->isTelocationEnable(Landroid/content/ContentResolver;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mAllowTelocation:Z

    .line 47
    return-void
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mSettingObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_f

    .line 36
    iget-object v0, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 38
    :cond_f
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 39
    return-void
.end method

.method public blacklist getAreaCode(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .registers 5
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 108
    invoke-static {}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->getInstance()Lmiui/telephony/phonenumber/ChineseTelocationConverter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->getAreaCode(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getExternalLocation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/Locale;)Ljava/lang/String;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "countryCode"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/CharSequence;
    .param p4, "locale"    # Ljava/util/Locale;

    .line 116
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 117
    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->getUserDefinedCountryCode()Ljava/lang/String;

    move-result-object p2

    .line 118
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 119
    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->getIccCountryCode()Ljava/lang/String;

    move-result-object p2

    .line 123
    :cond_14
    :try_start_14
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 125
    invoke-static {}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getInstance()Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    move-result-object v0

    .line 127
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    .line 129
    invoke-static {p1}, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-virtual {v1, p3, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v1

    .line 126
    invoke-virtual {v0, v1, p4}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getDescriptionForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2e} :catch_30

    .line 124
    return-object v0

    .line 133
    :cond_2f
    goto :goto_31

    .line 132
    :catch_30
    move-exception v0

    .line 134
    :goto_31
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getLocation(Landroid/content/Context;Ljava/lang/CharSequence;IIZ)Ljava/lang/String;
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cs"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "length"    # I
    .param p5, "withAreaCode"    # Z

    .line 75
    iget-object v0, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    if-nez v0, :cond_7

    .line 76
    invoke-direct {p0, p1}, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->initObserver(Landroid/content/Context;)V

    .line 79
    :cond_7
    iget-boolean v0, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mAllowTelocation:Z

    if-nez v0, :cond_e

    .line 80
    const-string v0, ""

    return-object v0

    .line 82
    :cond_e
    const-string v0, ""

    .line 83
    .local v0, "location":Ljava/lang/String;
    const/4 v1, -0x1

    .line 84
    .local v1, "id":I
    if-eqz p5, :cond_1c

    .line 85
    invoke-static {}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->getInstance()Lmiui/telephony/phonenumber/ChineseTelocationConverter;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p2, p3, p4, v3}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->getUniqId(Ljava/lang/CharSequence;IIZ)I

    move-result v1

    .line 87
    :cond_1c
    if-lez v1, :cond_26

    .line 88
    invoke-static {}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->getInstance()Lmiui/telephony/phonenumber/ChineseTelocationConverter;

    move-result-object v2

    invoke-virtual {v2, p2, p3, p4, p5}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->getLocation(Ljava/lang/CharSequence;IIZ)Ljava/lang/String;

    move-result-object v0

    .line 90
    :cond_26
    return-object v0
.end method

.method public blacklist getOperator(Landroid/content/Context;Ljava/lang/CharSequence;IIZ)Ljava/lang/String;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cs"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "length"    # I
    .param p5, "isNormalMobileNumber"    # Z

    .line 94
    iget-object v0, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    if-nez v0, :cond_7

    .line 95
    invoke-direct {p0, p1}, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->initObserver(Landroid/content/Context;)V

    .line 97
    :cond_7
    iget-boolean v0, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mAllowTelocation:Z

    const-string v1, ""

    if-nez v0, :cond_e

    .line 98
    return-object v1

    .line 100
    :cond_e
    if-nez p5, :cond_11

    .line 101
    return-object v1

    .line 103
    :cond_11
    invoke-static {}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->getInstance()Lmiui/telephony/phonenumber/ChineseTelocationConverter;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->getOperator(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "operator":Ljava/lang/String;
    return-object v0
.end method

.method public blacklist parseAreaCode(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .registers 5
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 112
    invoke-static {}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->getInstance()Lmiui/telephony/phonenumber/ChineseTelocationConverter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->parseAreaCode(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
