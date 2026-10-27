.class public Lcom/miui/enterprise/PhoneHelper;
.super Ljava/lang/Object;
.source "PhoneHelper.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "Enterprise"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method private static blacklist checkCallRestriction(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .line 71
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 72
    const-string v0, "ep_call_restriction_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 74
    .local v0, "restrictionMode":I
    packed-switch v0, :pswitch_data_30

    .line 84
    return v1

    .line 76
    :pswitch_f
    const-string v1, "ep_call_black_list"

    invoke-static {p0, v1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->parseListSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 78
    .local v1, "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 80
    .end local v1    # "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1e
    const-string v1, "ep_call_white_list"

    invoke-static {p0, v1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->parseListSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 82
    .local v1, "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_f
    .end packed-switch
.end method

.method public static whitelist checkEntDataRestriction(Landroid/content/Context;Z)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "origin"    # Z

    .line 21
    sget-boolean v0, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-nez v0, :cond_5

    .line 22
    return p1

    .line 24
    :cond_5
    const-string v0, "ep_cellular_status"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 25
    .local v0, "dateState":I
    if-ne v0, v1, :cond_f

    .line 26
    return p1

    .line 28
    :cond_f
    if-nez v0, :cond_13

    .line 29
    const/4 v1, 0x0

    return v1

    .line 31
    :cond_13
    const/4 v2, 0x4

    if-ne v0, v2, :cond_17

    .line 32
    return v1

    .line 34
    :cond_17
    return p1
.end method

.method private static blacklist checkSMSRestriction(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .line 121
    const-string v0, "ep_sms_restriction_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 123
    .local v0, "restrictionMode":I
    const-string v2, "+86"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 124
    packed-switch v0, :pswitch_data_34

    .line 134
    return v1

    .line 126
    :pswitch_13
    const-string v1, "ep_sms_black_list"

    invoke-static {p0, v1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->parseListSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 128
    .local v1, "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 130
    .end local v1    # "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_22
    const-string v1, "ep_sms_white_list"

    invoke-static {p0, v1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->parseListSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 132
    .local v1, "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2

    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_22
        :pswitch_13
    .end packed-switch
.end method

.method public static whitelist inCallRestricted(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .line 55
    sget-boolean v0, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 56
    return v1

    .line 58
    :cond_6
    const-string v0, "ep_phone_call_status"

    invoke-static {p0, v0, v1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 60
    .local v0, "flags":I
    and-int/lit8 v2, v0, 0x1

    const-string v3, "Enterprise"

    const/4 v4, 0x1

    if-eqz v2, :cond_19

    .line 61
    const-string v1, "in call is restricted"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return v4

    .line 63
    :cond_19
    invoke-static {p0, p1}, Lcom/miui/enterprise/PhoneHelper;->checkCallRestriction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in call from number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is restricted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return v4

    .line 67
    :cond_3c
    return v1
.end method

.method public static whitelist outgoingCallRestricted(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 38
    sget-boolean v0, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 39
    return v1

    .line 41
    :cond_6
    invoke-static {p1, p0}, Lmiui/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "number":Ljava/lang/String;
    const-string v2, "ep_phone_call_status"

    invoke-static {p0, v2, v1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 44
    .local v2, "flags":I
    and-int/lit8 v3, v2, 0x2

    const/4 v4, 0x1

    const-string v5, "Enterprise"

    if-eqz v3, :cond_1d

    .line 45
    const-string v1, "outgoing call is restricted"

    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return v4

    .line 47
    :cond_1d
    invoke-static {p0, v0}, Lcom/miui/enterprise/PhoneHelper;->checkCallRestriction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "outgoing call is restricted for number "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return v4

    .line 51
    :cond_3a
    return v1
.end method

.method public static whitelist smsReceiveRestricted(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "address"    # Ljava/lang/String;

    .line 105
    sget-boolean v0, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 106
    return v1

    .line 108
    :cond_6
    const-string v0, "ep_sms_status"

    invoke-static {p0, v0, v1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 110
    .local v0, "flags":I
    and-int/lit8 v2, v0, 0x1

    const-string v3, "Enterprise"

    const/4 v4, 0x1

    if-eqz v2, :cond_19

    .line 111
    const-string v1, "SMS receive blocked"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return v4

    .line 113
    :cond_19
    invoke-static {p0, p1}, Lcom/miui/enterprise/PhoneHelper;->checkSMSRestriction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMS from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " blocked"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return v4

    .line 117
    :cond_3c
    return v1
.end method

.method public static whitelist smsSendRestricted(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "destAddr"    # Ljava/lang/String;

    .line 89
    sget-boolean v0, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 90
    return v1

    .line 92
    :cond_6
    const-string v0, "ep_sms_status"

    invoke-static {p0, v0, v1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 94
    .local v0, "flags":I
    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x1

    const-string v4, "Enterprise"

    if-eqz v2, :cond_19

    .line 95
    const-string v1, "SMS send abort: enterprise restricted"

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return v3

    .line 97
    :cond_19
    invoke-static {p0, p1}, Lcom/miui/enterprise/PhoneHelper;->checkSMSRestriction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMS send abort: address "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is restricted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return v3

    .line 101
    :cond_3c
    return v1
.end method
