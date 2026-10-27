.class public Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;
.super Ljava/util/Observable;
.source "WhetstoneSystemSetting.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mConfigMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mWhetstoneActivityManagerService:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 24
    const-class v0, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    .line 31
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->mConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 32
    iput-object p1, p0, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->mWhetstoneActivityManagerService:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    .line 34
    return-void
.end method

.method private blacklist finishCommonAllowed(ILandroid/content/ComponentName;Ljava/lang/Boolean;)Z
    .registers 7
    .param p1, "callingPid"    # I
    .param p2, "name"    # Landroid/content/ComponentName;
    .param p3, "ret"    # Ljava/lang/Boolean;

    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, "finish":Z
    if-nez v0, :cond_21

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 56
    iget-object v1, p0, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->mWhetstoneActivityManagerService:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    invoke-virtual {v1, p1}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getPackageNamebyPid(I)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_21

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 59
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    .line 60
    const/4 v0, 0x1

    .line 63
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_21
    return v0
.end method


# virtual methods
.method public blacklist finishIsStartPorcessAllowedByBroadcast(ILandroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/Boolean;)Z
    .registers 7
    .param p1, "callingPid"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "name"    # Landroid/content/ComponentName;
    .param p4, "ret"    # Ljava/lang/Boolean;

    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    if-ne v1, v0, :cond_e

    .line 39
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    .line 40
    return v0

    .line 43
    :cond_e
    const/4 v0, 0x0

    .line 44
    .local v0, "finish":Z
    invoke-direct {p0, p1, p3, p4}, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->finishCommonAllowed(ILandroid/content/ComponentName;Ljava/lang/Boolean;)Z

    move-result v0

    .line 45
    return v0
.end method

.method public blacklist finishstartServiceAllowed(ILandroid/content/ComponentName;IZZ)Z
    .registers 8
    .param p1, "callingPid"    # I
    .param p2, "name"    # Landroid/content/ComponentName;
    .param p3, "intentFlags"    # I
    .param p4, "whileRestarting"    # Z
    .param p5, "ret"    # Z

    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, "finish":Z
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne p1, v1, :cond_a

    .line 72
    const/4 p5, 0x1

    .line 73
    const/4 v1, 0x1

    return v1

    .line 76
    :cond_a
    if-eqz p2, :cond_14

    .line 77
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->finishCommonAllowed(ILandroid/content/ComponentName;Ljava/lang/Boolean;)Z

    move-result v0

    .line 79
    :cond_14
    return v0
.end method

.method public blacklist finishstartServiceAllowed(ILandroid/content/Intent;Ljava/lang/Boolean;)Z
    .registers 5
    .param p1, "callingPid"    # I
    .param p2, "service"    # Landroid/content/Intent;
    .param p3, "ret"    # Ljava/lang/Boolean;

    .line 49
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    .line 50
    return v0
.end method

.method public blacklist getCommonConfigInBoolean(Ljava/lang/String;Z)Z
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .line 102
    move v0, p2

    .line 103
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->mConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 104
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_12

    .line 105
    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 107
    :cond_12
    return v0
.end method

.method public blacklist getCommonConfigInInt(Ljava/lang/String;I)I
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .line 111
    move v0, p2

    .line 112
    .local v0, "ret":I
    iget-object v1, p0, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->mConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 113
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_12

    .line 114
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 116
    :cond_12
    return v0
.end method

.method public blacklist getCommonConfigInJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->mConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 138
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Lorg/json/JSONArray;

    if-eqz v1, :cond_e

    .line 139
    move-object v1, v0

    check-cast v1, Lorg/json/JSONArray;

    return-object v1

    .line 141
    :cond_e
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getCommonConfigInJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->mConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 130
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_e

    .line 131
    move-object v1, v0

    check-cast v1, Lorg/json/JSONObject;

    return-object v1

    .line 133
    :cond_e
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getCommonConfigInString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .line 120
    move-object v0, p2

    .line 121
    .local v0, "ret":Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->mConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 122
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_e

    .line 123
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 125
    :cond_e
    return-object v0
.end method

.method public blacklist updateFrameworkCommonConfig(Ljava/lang/String;)V
    .registers 7
    .param p1, "json"    # Ljava/lang/String;

    .line 83
    sget-object v0, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateFrameworkCommonConfig json:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :try_start_18
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, "jobj":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 87
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 88
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 89
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 90
    .local v3, "value":Ljava/lang/Object;
    iget-object v4, p0, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->mConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_36} :catch_39

    .line 91
    nop

    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    goto :goto_21

    .line 94
    .end local v0    # "jobj":Lorg/json/JSONObject;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_38
    goto :goto_56

    .line 92
    :catch_39
    move-exception v0

    .line 93
    .local v0, "e":Lorg/json/JSONException;
    sget-object v1, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFrameworkCommonConfig JSONException e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_56
    invoke-virtual {p0}, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->setChanged()V

    .line 97
    invoke-virtual {p0}, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->notifyObservers()V

    .line 98
    return-void
.end method
