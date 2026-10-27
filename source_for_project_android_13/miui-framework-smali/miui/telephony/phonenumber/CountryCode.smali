.class public Lmiui/telephony/phonenumber/CountryCode;
.super Ljava/lang/Object;
.source "CountryCode.java"


# static fields
.field private static final blacklist CONTACT_COUNTRYCODE:Ljava/lang/String; = "persist.radio.countrycode"

.field private static final blacklist DEFAULT_IDD_CODE:Ljava/lang/String; = "00"

.field private static final blacklist EMPTY:Ljava/lang/String; = ""

.field public static final whitelist GSM_GENERAL_IDD_CODE:Ljava/lang/String; = "+"

.field private static blacklist ICC_COUNTRY_CODE:Ljava/lang/String;

.field private static blacklist ICC_OPERATOR:Ljava/lang/String;

.field private static blacklist NETWORK_COUNTRY_CODE:Ljava/lang/String;

.field private static blacklist NETWORK_IDD_CODE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist NETWORK_OPERATOR:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 20
    const-string v0, ""

    sput-object v0, Lmiui/telephony/phonenumber/CountryCode;->ICC_OPERATOR:Ljava/lang/String;

    .line 21
    sput-object v0, Lmiui/telephony/phonenumber/CountryCode;->ICC_COUNTRY_CODE:Ljava/lang/String;

    .line 22
    sput-object v0, Lmiui/telephony/phonenumber/CountryCode;->NETWORK_OPERATOR:Ljava/lang/String;

    .line 23
    sput-object v0, Lmiui/telephony/phonenumber/CountryCode;->NETWORK_COUNTRY_CODE:Ljava/lang/String;

    .line 24
    const-string v0, "00"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lmiui/telephony/phonenumber/CountryCode;->NETWORK_IDD_CODE:Ljava/util/List;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getIccCountryCode()Ljava/lang/String;
    .registers 1

    .line 52
    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->updateIcc()V

    .line 53
    sget-object v0, Lmiui/telephony/phonenumber/CountryCode;->ICC_COUNTRY_CODE:Ljava/lang/String;

    return-object v0
.end method

.method public static whitelist getIddCode()Ljava/lang/String;
    .registers 2

    .line 66
    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->updateNetwork()V

    .line 67
    sget-object v0, Lmiui/telephony/phonenumber/CountryCode;->NETWORK_IDD_CODE:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static whitelist getIddCodes()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 71
    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->updateNetwork()V

    .line 72
    sget-object v0, Lmiui/telephony/phonenumber/CountryCode;->NETWORK_IDD_CODE:Ljava/util/List;

    return-object v0
.end method

.method public static whitelist getNetworkCountryCode()Ljava/lang/String;
    .registers 1

    .line 57
    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->updateNetwork()V

    .line 58
    sget-object v0, Lmiui/telephony/phonenumber/CountryCode;->NETWORK_COUNTRY_CODE:Ljava/lang/String;

    return-object v0
.end method

.method public static whitelist getUserDefinedCountryCode()Ljava/lang/String;
    .registers 2

    .line 62
    const-string v0, "persist.radio.countrycode"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist isChinaEnvironment()Z
    .registers 2

    .line 76
    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->getUserDefinedCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "cc":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 78
    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->getIccCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 80
    :cond_e
    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->getNetworkCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/telephony/phonenumber/CountryCodeConverter;->isChinaEnvironment(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static blacklist updateIcc()V
    .registers 4

    .line 27
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 28
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 29
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, "simOperator":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_32

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_32

    sget-object v2, Lmiui/telephony/phonenumber/CountryCode;->ICC_OPERATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 31
    sput-object v1, Lmiui/telephony/phonenumber/CountryCode;->ICC_OPERATOR:Ljava/lang/String;

    .line 32
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmiui/telephony/phonenumber/CountryCodeConverter;->getCountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lmiui/telephony/phonenumber/CountryCode;->ICC_COUNTRY_CODE:Ljava/lang/String;

    .line 34
    :cond_32
    return-void
.end method

.method private static blacklist updateNetwork()V
    .registers 4

    .line 37
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 38
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 39
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "networkOperator":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4e

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_4e

    sget-object v2, Lmiui/telephony/phonenumber/CountryCode;->NETWORK_OPERATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4e

    .line 41
    sput-object v1, Lmiui/telephony/phonenumber/CountryCode;->NETWORK_OPERATOR:Ljava/lang/String;

    .line 42
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, "mcc":Ljava/lang/String;
    invoke-static {v2}, Lmiui/telephony/phonenumber/CountryCodeConverter;->getCountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lmiui/telephony/phonenumber/CountryCode;->NETWORK_COUNTRY_CODE:Ljava/lang/String;

    .line 44
    invoke-static {v2}, Lmiui/telephony/phonenumber/CountryCodeConverter;->getIddCodes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lmiui/telephony/phonenumber/CountryCode;->NETWORK_IDD_CODE:Ljava/util/List;

    .line 45
    if-eqz v3, :cond_42

    sget-object v3, Lmiui/telephony/phonenumber/CountryCode;->NETWORK_COUNTRY_CODE:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 46
    :cond_42
    const-string v3, "00"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lmiui/telephony/phonenumber/CountryCode;->NETWORK_IDD_CODE:Ljava/util/List;

    .line 49
    .end local v2    # "mcc":Ljava/lang/String;
    :cond_4e
    return-void
.end method
