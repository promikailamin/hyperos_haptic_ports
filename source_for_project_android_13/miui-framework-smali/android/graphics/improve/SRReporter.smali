.class public Landroid/graphics/improve/SRReporter;
.super Ljava/lang/Object;
.source "SRReporter.java"


# static fields
.field public static final blacklist ACTION_CLOSE:Ljava/lang/String; = "3"

.field public static final blacklist ACTION_FAIL:Ljava/lang/String; = "4"

.field public static final blacklist ACTION_IMPROVE:Ljava/lang/String; = "1"

.field public static final blacklist ACTION_IMPROVE_TIME:Ljava/lang/String; = "5"

.field public static final blacklist ACTION_OPEN:Ljava/lang/String; = "2"

.field public static final blacklist STR_ACTION:Ljava/lang/String; = "action"

.field public static final blacklist STR_DEAL_TIME:Ljava/lang/String; = "deal_time"

.field public static final blacklist STR_FAIL_PKG:Ljava/lang/String; = "fail_pkg"

.field public static final blacklist STR_FAIL_REASON:Ljava/lang/String; = "fail_reason"

.field public static final blacklist STR_FAIL_VERSION:Ljava/lang/String; = "fail_version"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getBaseJson()Lorg/json/JSONObject;
    .registers 3

    .line 100
    const-string v0, ""

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 102
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_7
    const-string v2, "action"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    const-string v2, "deal_time"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    const-string v2, "fail_pkg"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    const-string v2, "fail_version"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    const-string v2, "fail_reason"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_20} :catch_21

    .line 109
    goto :goto_25

    .line 107
    :catch_21
    move-exception v0

    .line 108
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 110
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_25
    return-object v1
.end method

.method public static blacklist getVersion(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "ctx"    # Landroid/content/Context;

    .line 116
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 117
    .local v0, "manager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 118
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 119
    .local v2, "version":Ljava/lang/String;
    return-object v2

    .line 120
    .end local v0    # "manager":Landroid/content/pm/PackageManager;
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "version":Ljava/lang/String;
    :catch_10
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 123
    .end local v0    # "e":Ljava/lang/Exception;
    const-string v0, "unknow"

    return-object v0
.end method

.method private static blacklist report(Lorg/json/JSONObject;)V
    .registers 3
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .line 32
    new-instance v0, Landroid/graphics/improve/SRReporter$1;

    invoke-direct {v0, p0}, Landroid/graphics/improve/SRReporter$1;-><init>(Lorg/json/JSONObject;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 39
    invoke-virtual {v0, v1}, Landroid/graphics/improve/SRReporter$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 41
    return-void
.end method

.method public static blacklist reportClose(Ljava/lang/String;)V
    .registers 4
    .param p0, "pkg"    # Ljava/lang/String;

    .line 90
    :try_start_0
    invoke-static {}, Landroid/graphics/improve/SRReporter;->getBaseJson()Lorg/json/JSONObject;

    move-result-object v0

    .line 91
    .local v0, "baseJson":Lorg/json/JSONObject;
    const-string v1, "fail_pkg"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    const-string v1, "action"

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    invoke-static {v0}, Landroid/graphics/improve/SRReporter;->report(Lorg/json/JSONObject;)V
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_13} :catch_14

    .line 96
    .end local v0    # "baseJson":Lorg/json/JSONObject;
    goto :goto_18

    .line 94
    :catch_14
    move-exception v0

    .line 95
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 97
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_18
    return-void
.end method

.method public static blacklist reportFailure(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;

    .line 44
    invoke-static {}, Landroid/graphics/improve/SRReporter;->getBaseJson()Lorg/json/JSONObject;

    move-result-object v0

    .line 46
    .local v0, "baseJson":Lorg/json/JSONObject;
    :try_start_4
    const-string v1, "fail_pkg"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    const-string v1, "fail_version"

    invoke-static {p0}, Landroid/graphics/improve/SRReporter;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    const-string v1, "fail_reason"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    const-string v1, "action"

    const-string v2, "4"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    invoke-static {v0}, Landroid/graphics/improve/SRReporter;->report(Lorg/json/JSONObject;)V
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_25} :catch_26

    .line 53
    goto :goto_2a

    .line 51
    :catch_26
    move-exception v1

    .line 52
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 54
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_2a
    return-void
.end method

.method public static blacklist reportImprove()V
    .registers 3

    .line 69
    :try_start_0
    invoke-static {}, Landroid/graphics/improve/SRReporter;->getBaseJson()Lorg/json/JSONObject;

    move-result-object v0

    .line 70
    .local v0, "baseJson":Lorg/json/JSONObject;
    const-string v1, "action"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    invoke-static {v0}, Landroid/graphics/improve/SRReporter;->report(Lorg/json/JSONObject;)V
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_e} :catch_f

    .line 74
    .end local v0    # "baseJson":Lorg/json/JSONObject;
    goto :goto_13

    .line 72
    :catch_f
    move-exception v0

    .line 73
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 75
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_13
    return-void
.end method

.method public static blacklist reportImproveTime(J)V
    .registers 5
    .param p0, "time"    # J

    .line 58
    :try_start_0
    invoke-static {}, Landroid/graphics/improve/SRReporter;->getBaseJson()Lorg/json/JSONObject;

    move-result-object v0

    .line 59
    .local v0, "baseJson":Lorg/json/JSONObject;
    const-string v1, "deal_time"

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    const-string v1, "action"

    const-string v2, "5"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    invoke-static {v0}, Landroid/graphics/improve/SRReporter;->report(Lorg/json/JSONObject;)V
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_17} :catch_18

    .line 64
    .end local v0    # "baseJson":Lorg/json/JSONObject;
    goto :goto_1c

    .line 62
    :catch_18
    move-exception v0

    .line 63
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 65
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1c
    return-void
.end method

.method public static blacklist reportOpen(Ljava/lang/String;)V
    .registers 4
    .param p0, "pkg"    # Ljava/lang/String;

    .line 79
    :try_start_0
    invoke-static {}, Landroid/graphics/improve/SRReporter;->getBaseJson()Lorg/json/JSONObject;

    move-result-object v0

    .line 80
    .local v0, "baseJson":Lorg/json/JSONObject;
    const-string v1, "fail_pkg"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    const-string v1, "action"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    invoke-static {v0}, Landroid/graphics/improve/SRReporter;->report(Lorg/json/JSONObject;)V
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_13} :catch_14

    .line 85
    .end local v0    # "baseJson":Lorg/json/JSONObject;
    goto :goto_18

    .line 83
    :catch_14
    move-exception v0

    .line 84
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 86
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_18
    return-void
.end method
