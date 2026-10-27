.class public Lmiui/telephony/MiuiHeDuoHaoUtil;
.super Ljava/lang/Object;
.source "MiuiHeDuoHaoUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/MiuiHeDuoHaoUtil$HeDuoHao;
    }
.end annotation


# static fields
.field public static final whitelist DIAL:Ljava/lang/String; = "dial"

.field public static final whitelist HEDUOHAO_PREFIX_SIM1:Ljava/lang/String; = "125831"

.field public static final whitelist HEDUOHAO_PREFIX_SIM2:Ljava/lang/String; = "125832"

.field public static final whitelist HEDUOHAO_PREFIX_SIM3:Ljava/lang/String; = "125833"

.field public static final whitelist NAME:Ljava/lang/String; = "name"

.field public static final whitelist NUMBER:Ljava/lang/String; = "number"

.field public static final whitelist ORDER_ID:Ljava/lang/String; = "order_id"

.field public static final whitelist PASS_ID:Ljava/lang/String; = "pass_id"

.field public static final whitelist SLOT_ID:Ljava/lang/String; = "slot_id"

.field public static final whitelist STATUS:Ljava/lang/String; = "status"

.field public static final whitelist SUB_ID:Ljava/lang/String; = "sub_id"

.field private static final blacklist TAG:Ljava/lang/String; = "MiuiHeDuoHaoUtil"

.field public static final whitelist TOGGLE:Ljava/lang/String; = "toggle"

.field public static final whitelist URI:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 15
    const-string v0, "content://com.android.providers.telephony.heduohaoprovider/heduohao"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/telephony/MiuiHeDuoHaoUtil;->URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static whitelist addHeDuoHaoPrefix(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "orderId"    # I

    .line 97
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    .line 98
    return-object v1

    .line 100
    :cond_9
    invoke-static {p0}, Lmiui/telephony/MiuiHeDuoHaoUtil;->getIndexExcludeCC(Ljava/lang/String;)I

    move-result v0

    .line 101
    .local v0, "index":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "effectiveNumber":Ljava/lang/String;
    packed-switch p1, :pswitch_data_58

    goto :goto_57

    .line 110
    :pswitch_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "125833"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 111
    goto :goto_57

    .line 107
    :pswitch_2f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "125832"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 108
    goto :goto_57

    .line 104
    :pswitch_43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "125831"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 105
    nop

    .line 115
    :goto_57
    return-object p0

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_43
        :pswitch_2f
        :pswitch_1b
    .end packed-switch
.end method

.method public static whitelist getIndexExcludeCC(Ljava/lang/String;)I
    .registers 6
    .param p0, "number"    # Ljava/lang/String;

    .line 49
    nop

    .line 50
    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->getNetworkCountryCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "86"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 49
    invoke-static {p0, v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;Z)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    .line 51
    .local v0, "pn":Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "countryCode":Ljava/lang/String;
    const/4 v2, 0x0

    .line 53
    .local v2, "index":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_24

    .line 54
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 55
    .local v3, "countryCodeIndex":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int v2, v3, v4

    .line 57
    .end local v3    # "countryCodeIndex":I
    :cond_24
    return v2
.end method

.method public static whitelist isHeDuoHao(Ljava/lang/String;)Z
    .registers 6
    .param p0, "number"    # Ljava/lang/String;

    .line 61
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 62
    return v1

    .line 64
    :cond_8
    invoke-static {p0}, Lmiui/telephony/MiuiHeDuoHaoUtil;->getIndexExcludeCC(Ljava/lang/String;)I

    move-result v0

    .line 65
    .local v0, "index":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "effectiveNumber":Ljava/lang/String;
    const-string v3, "125831"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 67
    const-string v3, "125832"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 68
    const-string v3, "125833"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31

    :cond_30
    const/4 v1, 0x1

    .line 66
    :cond_31
    return v1
.end method

.method public static whitelist isHeDuoHaoEnable()Z
    .registers 1

    .line 45
    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-nez v0, :cond_b

    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public static whitelist removeHeDuoHaoPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "number"    # Ljava/lang/String;

    .line 72
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    .line 73
    return-object v1

    .line 75
    :cond_9
    invoke-static {p0}, Lmiui/telephony/MiuiHeDuoHaoUtil;->isHeDuoHao(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 76
    return-object p0

    .line 78
    :cond_10
    invoke-static {p0}, Lmiui/telephony/MiuiHeDuoHaoUtil;->getIndexExcludeCC(Ljava/lang/String;)I

    move-result v0

    .line 79
    .local v0, "index":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "effectiveNumber":Ljava/lang/String;
    const-string v3, "125831"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    const-string v6, "MiuiHeDuoHaoUtil"

    if-eqz v4, :cond_48

    .line 81
    const-string v4, "removeHeDuoHaoPrefix: 1"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 83
    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_95

    .line 84
    :cond_48
    const-string v3, "125832"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 85
    const-string v4, "removeHeDuoHaoPrefix: 2"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 87
    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_95

    .line 88
    :cond_6f
    const-string v3, "125833"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_95

    .line 89
    const-string v4, "removeHeDuoHaoPrefix: 3"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 91
    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 93
    :cond_95
    :goto_95
    return-object v2
.end method
