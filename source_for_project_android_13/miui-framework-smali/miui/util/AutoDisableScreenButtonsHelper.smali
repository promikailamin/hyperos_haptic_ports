.class public Lmiui/util/AutoDisableScreenButtonsHelper;
.super Ljava/lang/Object;
.source "AutoDisableScreenButtonsHelper.java"


# static fields
.field public static final blacklist CLOUD_SETTING:Ljava/lang/String; = "auto_disable_screen_button_cloud_setting"

.field public static final blacklist ENABLE_ASK:I = 0x1

.field public static final blacklist ENABLE_AUTO:I = 0x2

.field public static final blacklist MODULE_AUTO_DIS_NAV_BTN:Ljava/lang/String; = "AutoDisableNavigationButton1"

.field public static final blacklist NO:I = 0x3

.field public static final blacklist NONE:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "AutoDisableHelper"

.field private static blacklist mCloudJson:Lorg/json/JSONObject;

.field private static blacklist mUserJson:Lorg/json/JSONObject;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist checkJson(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 108
    if-nez p0, :cond_3

    .line 109
    return-void

    .line 111
    :cond_3
    sget-object v0, Lmiui/util/AutoDisableScreenButtonsHelper;->mUserJson:Lorg/json/JSONObject;

    if-nez v0, :cond_22

    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 114
    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v1

    .line 112
    const-string v2, "auto_disable_screen_button"

    invoke-static {v0, v2, v1}, Landroid/provider/MiuiSettings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "userSetting":Ljava/lang/String;
    if-nez v0, :cond_1f

    .line 116
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    sput-object v1, Lmiui/util/AutoDisableScreenButtonsHelper;->mUserJson:Lorg/json/JSONObject;

    goto :goto_22

    .line 118
    :cond_1f
    invoke-static {v0}, Lmiui/util/AutoDisableScreenButtonsHelper;->updateUserJson(Ljava/lang/String;)V

    .line 121
    .end local v0    # "userSetting":Ljava/lang/String;
    :cond_22
    :goto_22
    sget-object v0, Lmiui/util/AutoDisableScreenButtonsHelper;->mCloudJson:Lorg/json/JSONObject;

    if-nez v0, :cond_33

    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_disable_screen_button_cloud_setting"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "cloudConfig":Ljava/lang/String;
    invoke-static {v0}, Lmiui/util/AutoDisableScreenButtonsHelper;->updateCloudJson(Ljava/lang/String;)V

    .line 126
    .end local v0    # "cloudConfig":Ljava/lang/String;
    :cond_33
    return-void
.end method

.method public static blacklist getAppFlag(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .line 43
    invoke-static {p0, p1}, Lmiui/util/AutoDisableScreenButtonsHelper;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 44
    .local v0, "flagObj":Ljava/lang/Object;
    if-nez v0, :cond_8

    const/4 v1, 0x3

    goto :goto_f

    :cond_8
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 45
    .local v1, "flag":I
    :goto_f
    return v1
.end method

.method public static blacklist getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .line 49
    invoke-static {p0}, Lmiui/util/AutoDisableScreenButtonsHelper;->checkJson(Landroid/content/Context;)V

    .line 51
    :try_start_3
    sget-object v0, Lmiui/util/AutoDisableScreenButtonsHelper;->mUserJson:Lorg/json/JSONObject;

    if-eqz v0, :cond_14

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 52
    sget-object v0, Lmiui/util/AutoDisableScreenButtonsHelper;->mUserJson:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 53
    :cond_14
    sget-object v0, Lmiui/util/AutoDisableScreenButtonsHelper;->mCloudJson:Lorg/json/JSONObject;

    if-eqz v0, :cond_25

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 54
    sget-object v0, Lmiui/util/AutoDisableScreenButtonsHelper;->mCloudJson:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_24} :catch_26

    return-object v0

    .line 58
    :cond_25
    goto :goto_2a

    .line 56
    :catch_26
    move-exception v0

    .line 57
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 59
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_2a
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist setFlag(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "flag"    # I

    .line 64
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lmiui/util/AutoDisableScreenButtonsHelper;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    return-void
.end method

.method public static blacklist setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 68
    invoke-static {p0}, Lmiui/util/AutoDisableScreenButtonsHelper;->checkJson(Landroid/content/Context;)V

    .line 69
    sget-object v0, Lmiui/util/AutoDisableScreenButtonsHelper;->mUserJson:Lorg/json/JSONObject;

    if-eqz v0, :cond_24

    if-eqz p0, :cond_24

    .line 71
    :try_start_9
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_c} :catch_d

    .line 74
    goto :goto_11

    .line 72
    :catch_d
    move-exception v0

    .line 73
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 75
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_11
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/util/AutoDisableScreenButtonsHelper;->mUserJson:Lorg/json/JSONObject;

    .line 77
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v2

    .line 75
    const-string v3, "auto_disable_screen_button"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/MiuiSettings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 79
    :cond_24
    return-void
.end method

.method public static blacklist updateCloudJson(Ljava/lang/String;)V
    .registers 2
    .param p0, "config"    # Ljava/lang/String;

    .line 94
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    sget-object v0, Lmiui/util/AutoDisableScreenButtonsHelper;->mCloudJson:Lorg/json/JSONObject;

    if-eqz v0, :cond_15

    .line 95
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_22

    .line 99
    :cond_15
    :try_start_15
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/util/AutoDisableScreenButtonsHelper;->mCloudJson:Lorg/json/JSONObject;
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_1c} :catch_1d

    .line 102
    goto :goto_21

    .line 100
    :catch_1d
    move-exception v0

    .line 101
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 103
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_21
    return-void

    .line 96
    :cond_22
    :goto_22
    return-void
.end method

.method public static blacklist updateUserJson(Ljava/lang/String;)V
    .registers 2
    .param p0, "config"    # Ljava/lang/String;

    .line 82
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    sget-object v0, Lmiui/util/AutoDisableScreenButtonsHelper;->mUserJson:Lorg/json/JSONObject;

    if-eqz v0, :cond_15

    .line 83
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_22

    .line 87
    :cond_15
    :try_start_15
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/util/AutoDisableScreenButtonsHelper;->mUserJson:Lorg/json/JSONObject;
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_1c} :catch_1d

    .line 90
    goto :goto_21

    .line 88
    :catch_1d
    move-exception v0

    .line 89
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 91
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_21
    return-void

    .line 84
    :cond_22
    :goto_22
    return-void
.end method
