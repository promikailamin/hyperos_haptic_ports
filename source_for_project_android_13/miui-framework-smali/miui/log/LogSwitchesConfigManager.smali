.class public final Lmiui/log/LogSwitchesConfigManager;
.super Ljava/lang/Object;
.source "LogSwitchesConfigManager.java"


# static fields
.field public static final blacklist ACTION_REVERT_MIUILOG_SWITCHES:Ljava/lang/String; = "miui.intent.action.REVERT_MIUILOG_SWITCHES"

.field public static final blacklist ACTION_SWITCH_OFF_MIUILOGS:Ljava/lang/String; = "miui.intent.action.SWITCH_OFF_MIUILOGS"

.field public static final blacklist ACTION_SWITCH_ON_MIUILOGS:Ljava/lang/String; = "miui.intent.action.SWITCH_ON_MIUILOGS"

.field public static final blacklist EXTRA_KEY_PACKAGES:Ljava/lang/String; = "packages"

.field public static final blacklist EXTRA_KEY_PROGRAMS:Ljava/lang/String; = "programs"

.field public static final blacklist EXTRA_KEY_TAGGROUPS:Ljava/lang/String; = "groups"

.field public static final blacklist EXTRA_KEY_TAGS:Ljava/lang/String; = "tags"

.field public static final blacklist EXTRA_KEY_TARGETALL:Ljava/lang/String; = "allapps"

.field public static final blacklist TAG:Ljava/lang/String; = "LogSwitchesConfigManager"


# instance fields
.field private final blacklist logSwitchesFileName:Ljava/lang/String;

.field private final blacklist logSwitchesFilePath:Ljava/lang/String;

.field private final blacklist logSwitchesFolder:Ljava/lang/String;

.field private final blacklist logSwitchesMonitor:Lmiui/log/LogSwitchesConfigMonitor;

.field private final blacklist logSwitchesWriter:Lmiui/log/LogSwitchesConfigWriter;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "logSwitchesFolder"    # Ljava/lang/String;
    .param p2, "logSwitchesFileName"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lmiui/log/LogSwitchesConfigManager;->logSwitchesFolder:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lmiui/log/LogSwitchesConfigManager;->logSwitchesFileName:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/log/LogSwitchesConfigManager;->logSwitchesFilePath:Ljava/lang/String;

    .line 41
    new-instance v0, Lmiui/log/LogSwitchesConfigMonitor;

    invoke-direct {v0, p1, p2}, Lmiui/log/LogSwitchesConfigMonitor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/log/LogSwitchesConfigManager;->logSwitchesMonitor:Lmiui/log/LogSwitchesConfigMonitor;

    .line 42
    new-instance v0, Lmiui/log/LogSwitchesConfigWriter;

    invoke-direct {v0, p1, p2}, Lmiui/log/LogSwitchesConfigWriter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/log/LogSwitchesConfigManager;->logSwitchesWriter:Lmiui/log/LogSwitchesConfigWriter;

    .line 43
    return-void
.end method

.method private blacklist buildAppLogSwitches(Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/HashMap;
    .registers 15
    .param p1, "isPackage"    # Z
    .param p2, "appNames"    # [Ljava/lang/String;
    .param p3, "tags"    # [Ljava/lang/String;
    .param p4, "groups"    # [Ljava/lang/String;
    .param p5, "isOn"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmiui/log/AppLogSwitches;",
            ">;"
        }
    .end annotation

    .line 183
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 184
    .local v0, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/AppLogSwitches;>;"
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_28

    aget-object v4, p2, v3

    .line 185
    .local v4, "appName":Ljava/lang/String;
    new-instance v5, Lmiui/log/AppLogSwitches;

    .line 186
    const-string v6, ""

    if-eqz p1, :cond_14

    move-object v7, v4

    goto :goto_15

    :cond_14
    move-object v7, v6

    .line 187
    :goto_15
    if-eqz p1, :cond_18

    goto :goto_19

    :cond_18
    move-object v6, v4

    .line 188
    :goto_19
    invoke-direct {p0, p3, p4, p5}, Lmiui/log/LogSwitchesConfigManager;->buildLogSwitches([Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/HashMap;

    move-result-object v8

    invoke-direct {v5, v2, v7, v6, v8}, Lmiui/log/AppLogSwitches;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 189
    .local v5, "appConfig":Lmiui/log/AppLogSwitches;
    iget-object v6, v5, Lmiui/log/AppLogSwitches;->uniqueName:Ljava/lang/String;

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .end local v4    # "appName":Ljava/lang/String;
    .end local v5    # "appConfig":Lmiui/log/AppLogSwitches;
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 191
    :cond_28
    return-object v0
.end method

.method private blacklist buildLogSwitches([Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/HashMap;
    .registers 11
    .param p1, "tags"    # [Ljava/lang/String;
    .param p2, "groups"    # [Ljava/lang/String;
    .param p3, "isOn"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmiui/log/LogSwitch;",
            ">;"
        }
    .end annotation

    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 196
    .local v0, "logSwitches":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/LogSwitch;>;"
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    const-string v4, ""

    if-ge v3, v1, :cond_1c

    aget-object v5, p1, v3

    .line 197
    .local v5, "tag":Ljava/lang/String;
    new-instance v6, Lmiui/log/LogSwitch;

    invoke-direct {v6, v5, v4, p3}, Lmiui/log/LogSwitch;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v4, v6

    .line 198
    .local v4, "logSwitch":Lmiui/log/LogSwitch;
    iget-object v6, v4, Lmiui/log/LogSwitch;->uniqueName:Ljava/lang/String;

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .end local v4    # "logSwitch":Lmiui/log/LogSwitch;
    .end local v5    # "tag":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 200
    :cond_1c
    array-length v1, p2

    :goto_1d
    if-ge v2, v1, :cond_2e

    aget-object v3, p2, v2

    .line 201
    .local v3, "group":Ljava/lang/String;
    new-instance v5, Lmiui/log/LogSwitch;

    invoke-direct {v5, v4, v3, p3}, Lmiui/log/LogSwitch;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 202
    .local v5, "logSwitch":Lmiui/log/LogSwitch;
    iget-object v6, v5, Lmiui/log/LogSwitch;->uniqueName:Ljava/lang/String;

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .end local v3    # "group":Ljava/lang/String;
    .end local v5    # "logSwitch":Lmiui/log/LogSwitch;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 204
    :cond_2e
    return-object v0
.end method

.method private blacklist merge(Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmiui/log/AppLogSwitches;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmiui/log/AppLogSwitches;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmiui/log/AppLogSwitches;",
            ">;"
        }
    .end annotation

    .line 150
    .local p1, "current":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/AppLogSwitches;>;"
    .local p2, "appLevelUpdates":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/AppLogSwitches;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 151
    .local v0, "newConfig":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/AppLogSwitches;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/log/AppLogSwitches;

    .line 152
    .local v2, "currentAppLogSwitches":Lmiui/log/AppLogSwitches;
    iget-object v3, v2, Lmiui/log/AppLogSwitches;->uniqueName:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/log/AppLogSwitches;

    .line 153
    .local v3, "appUpdates":Lmiui/log/AppLogSwitches;
    invoke-virtual {v2}, Lmiui/log/AppLogSwitches;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/log/AppLogSwitches;

    .line 154
    .local v4, "newAppLogSwitches":Lmiui/log/AppLogSwitches;
    if-nez v3, :cond_2f

    .line 155
    iget-object v5, v4, Lmiui/log/AppLogSwitches;->uniqueName:Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3f

    .line 157
    :cond_2f
    invoke-direct {p0, v4, v3}, Lmiui/log/LogSwitchesConfigManager;->update(Lmiui/log/AppLogSwitches;Lmiui/log/AppLogSwitches;)V

    .line 158
    iget-object v5, v4, Lmiui/log/AppLogSwitches;->logSwitches:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_3f

    .line 159
    iget-object v5, v4, Lmiui/log/AppLogSwitches;->uniqueName:Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .end local v2    # "currentAppLogSwitches":Lmiui/log/AppLogSwitches;
    .end local v3    # "appUpdates":Lmiui/log/AppLogSwitches;
    .end local v4    # "newAppLogSwitches":Lmiui/log/AppLogSwitches;
    :cond_3f
    :goto_3f
    goto :goto_d

    .line 163
    :cond_40
    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_48
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_68

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/log/AppLogSwitches;

    .line 164
    .local v2, "appUpdates":Lmiui/log/AppLogSwitches;
    iget-object v3, v2, Lmiui/log/AppLogSwitches;->uniqueName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_67

    .line 165
    iget-object v3, v2, Lmiui/log/AppLogSwitches;->uniqueName:Ljava/lang/String;

    invoke-virtual {v2}, Lmiui/log/AppLogSwitches;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/log/AppLogSwitches;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .end local v2    # "appUpdates":Lmiui/log/AppLogSwitches;
    :cond_67
    goto :goto_48

    .line 168
    :cond_68
    return-object v0
.end method

.method private blacklist merge(Ljava/util/HashMap;Lmiui/log/AppLogSwitches;)Ljava/util/HashMap;
    .registers 8
    .param p2, "globalUpdates"    # Lmiui/log/AppLogSwitches;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmiui/log/AppLogSwitches;",
            ">;",
            "Lmiui/log/AppLogSwitches;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmiui/log/AppLogSwitches;",
            ">;"
        }
    .end annotation

    .line 134
    .local p1, "current":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/AppLogSwitches;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 135
    .local v0, "newConfig":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/AppLogSwitches;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/log/AppLogSwitches;

    .line 136
    .local v2, "currentAppConfig":Lmiui/log/AppLogSwitches;
    invoke-virtual {v2}, Lmiui/log/AppLogSwitches;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/log/AppLogSwitches;

    .line 137
    .local v3, "newAppConfig":Lmiui/log/AppLogSwitches;
    invoke-direct {p0, v3, p2}, Lmiui/log/LogSwitchesConfigManager;->update(Lmiui/log/AppLogSwitches;Lmiui/log/AppLogSwitches;)V

    .line 138
    iget-object v4, v3, Lmiui/log/AppLogSwitches;->logSwitches:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_2f

    .line 139
    iget-object v4, v3, Lmiui/log/AppLogSwitches;->uniqueName:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .end local v2    # "currentAppConfig":Lmiui/log/AppLogSwitches;
    .end local v3    # "newAppConfig":Lmiui/log/AppLogSwitches;
    :cond_2f
    goto :goto_d

    .line 142
    :cond_30
    iget-object v1, p2, Lmiui/log/AppLogSwitches;->uniqueName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 143
    iget-object v1, p2, Lmiui/log/AppLogSwitches;->uniqueName:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_3d
    return-object v0
.end method

.method private blacklist revertLogSwitches(Landroid/content/Intent;)V
    .registers 13
    .param p1, "intent"    # Landroid/content/Intent;

    .line 78
    const-string v0, "allapps"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 79
    .local v0, "targetAll":Z
    const-string v2, "packages"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "packagesStr":Ljava/lang/String;
    const-string v3, "programs"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, "programsStr":Ljava/lang/String;
    const-string v4, ","

    if-nez v2, :cond_1a

    new-array v5, v1, [Ljava/lang/String;

    goto :goto_1e

    :cond_1a
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 82
    .local v5, "packages":[Ljava/lang/String;
    :goto_1e
    if-nez v3, :cond_23

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_27

    :cond_23
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "programs":[Ljava/lang/String;
    :goto_27
    if-eqz v0, :cond_34

    .line 84
    iget-object v4, p0, Lmiui/log/LogSwitchesConfigManager;->logSwitchesWriter:Lmiui/log/LogSwitchesConfigWriter;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v4, v6}, Lmiui/log/LogSwitchesConfigWriter;->write(Ljava/util/HashMap;)V

    goto :goto_96

    .line 85
    :cond_34
    array-length v4, v5

    if-gtz v4, :cond_3a

    array-length v4, v1

    if-lez v4, :cond_96

    .line 86
    :cond_3a
    iget-object v4, p0, Lmiui/log/LogSwitchesConfigManager;->logSwitchesMonitor:Lmiui/log/LogSwitchesConfigMonitor;

    invoke-virtual {v4}, Lmiui/log/LogSwitchesConfigMonitor;->retrieveCurrentLogSwitches()Ljava/util/HashMap;

    move-result-object v4

    .line 87
    .local v4, "currentConfig":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/AppLogSwitches;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 88
    .local v6, "newConfig":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/AppLogSwitches;>;"
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_91

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmiui/log/AppLogSwitches;

    .line 89
    .local v8, "appConfig":Lmiui/log/AppLogSwitches;
    iget-object v9, v8, Lmiui/log/AppLogSwitches;->packageName:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_75

    .line 90
    iget-object v9, v8, Lmiui/log/AppLogSwitches;->packageName:Ljava/lang/String;

    invoke-static {v5, v9}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_90

    .line 91
    iget-object v9, v8, Lmiui/log/AppLogSwitches;->uniqueName:Ljava/lang/String;

    invoke-virtual {v8}, Lmiui/log/AppLogSwitches;->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmiui/log/AppLogSwitches;

    invoke-virtual {v6, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_90

    .line 93
    :cond_75
    iget-object v9, v8, Lmiui/log/AppLogSwitches;->programName:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_90

    .line 94
    iget-object v9, v8, Lmiui/log/AppLogSwitches;->programName:Ljava/lang/String;

    invoke-static {v1, v9}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_90

    .line 95
    iget-object v9, v8, Lmiui/log/AppLogSwitches;->uniqueName:Ljava/lang/String;

    invoke-virtual {v8}, Lmiui/log/AppLogSwitches;->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmiui/log/AppLogSwitches;

    invoke-virtual {v6, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .end local v8    # "appConfig":Lmiui/log/AppLogSwitches;
    :cond_90
    :goto_90
    goto :goto_4d

    .line 99
    :cond_91
    iget-object v7, p0, Lmiui/log/LogSwitchesConfigManager;->logSwitchesWriter:Lmiui/log/LogSwitchesConfigWriter;

    invoke-virtual {v7, v6}, Lmiui/log/LogSwitchesConfigWriter;->write(Ljava/util/HashMap;)V

    .line 101
    .end local v4    # "currentConfig":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/AppLogSwitches;>;"
    .end local v6    # "newConfig":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/AppLogSwitches;>;"
    :cond_96
    :goto_96
    return-void
.end method

.method private blacklist switchStatusOfLogSwitches(Landroid/content/Intent;Z)V
    .registers 20
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "isOn"    # Z

    .line 104
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    const-string v0, "allapps"

    const/4 v1, 0x0

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    .line 105
    .local v14, "targetAll":Z
    const-string v0, "packages"

    invoke-virtual {v13, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 106
    .local v15, "packagesStr":Ljava/lang/String;
    const-string v0, "programs"

    invoke-virtual {v13, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 107
    .local v11, "programsStr":Ljava/lang/String;
    const-string v0, "tags"

    invoke-virtual {v13, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 108
    .local v10, "tagsStr":Ljava/lang/String;
    const-string v0, "groups"

    invoke-virtual {v13, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 109
    .local v9, "groupsStr":Ljava/lang/String;
    const-string v0, ","

    if-nez v15, :cond_2a

    new-array v2, v1, [Ljava/lang/String;

    goto :goto_2e

    :cond_2a
    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "packages":[Ljava/lang/String;
    :goto_2e
    if-nez v11, :cond_33

    new-array v3, v1, [Ljava/lang/String;

    goto :goto_37

    :cond_33
    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    :goto_37
    move-object v8, v3

    .line 111
    .local v8, "programs":[Ljava/lang/String;
    if-nez v10, :cond_3d

    new-array v3, v1, [Ljava/lang/String;

    goto :goto_41

    :cond_3d
    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    :goto_41
    move-object v7, v3

    .line 112
    .local v7, "tags":[Ljava/lang/String;
    if-nez v9, :cond_47

    new-array v0, v1, [Ljava/lang/String;

    goto :goto_4b

    :cond_47
    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_4b
    move-object v6, v0

    .line 114
    .local v6, "groups":[Ljava/lang/String;
    array-length v0, v7

    if-nez v0, :cond_53

    array-length v0, v6

    if-nez v0, :cond_53

    .line 115
    return-void

    .line 118
    :cond_53
    iget-object v0, v12, Lmiui/log/LogSwitchesConfigManager;->logSwitchesMonitor:Lmiui/log/LogSwitchesConfigMonitor;

    invoke-virtual {v0}, Lmiui/log/LogSwitchesConfigMonitor;->retrieveCurrentLogSwitches()Ljava/util/HashMap;

    move-result-object v5

    .line 120
    .local v5, "currentAppLogSwitches":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/AppLogSwitches;>;"
    if-eqz v14, :cond_76

    .line 121
    new-instance v0, Lmiui/log/AppLogSwitches;

    const/4 v1, 0x1

    move/from16 v4, p2

    invoke-direct {v12, v7, v6, v4}, Lmiui/log/LogSwitchesConfigManager;->buildLogSwitches([Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/HashMap;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v0, v1, v4, v4, v3}, Lmiui/log/AppLogSwitches;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 122
    .local v0, "globalUpdates":Lmiui/log/AppLogSwitches;
    invoke-direct {v12, v5, v0}, Lmiui/log/LogSwitchesConfigManager;->merge(Ljava/util/HashMap;Lmiui/log/AppLogSwitches;)Ljava/util/HashMap;

    move-result-object v0

    .line 123
    .local v0, "newAppLogSwitches":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/AppLogSwitches;>;"
    move-object v13, v5

    move-object v1, v6

    move-object v3, v7

    move-object v5, v10

    move-object/from16 v16, v11

    move-object v6, v0

    move-object v0, v9

    goto :goto_a9

    .line 124
    .end local v0    # "newAppLogSwitches":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/AppLogSwitches;>;"
    :cond_76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v4, v0

    .line 125
    .local v4, "appLevelUpdates":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/AppLogSwitches;>;"
    const/4 v1, 0x1

    move-object/from16 v0, p0

    move-object v3, v7

    move-object/from16 v16, v7

    move-object v7, v4

    .end local v4    # "appLevelUpdates":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/AppLogSwitches;>;"
    .local v7, "appLevelUpdates":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/AppLogSwitches;>;"
    .local v16, "tags":[Ljava/lang/String;
    move-object v4, v6

    move-object v13, v5

    .end local v5    # "currentAppLogSwitches":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/AppLogSwitches;>;"
    .local v13, "currentAppLogSwitches":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/AppLogSwitches;>;"
    move/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lmiui/log/LogSwitchesConfigManager;->buildAppLogSwitches(Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 126
    const/4 v0, 0x0

    move-object v1, v6

    .end local v6    # "groups":[Ljava/lang/String;
    .local v1, "groups":[Ljava/lang/String;
    move-object/from16 v6, p0

    move-object v4, v7

    move-object/from16 v3, v16

    .end local v7    # "appLevelUpdates":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/AppLogSwitches;>;"
    .end local v16    # "tags":[Ljava/lang/String;
    .local v3, "tags":[Ljava/lang/String;
    .restart local v4    # "appLevelUpdates":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/AppLogSwitches;>;"
    move v7, v0

    move-object v0, v9

    .end local v9    # "groupsStr":Ljava/lang/String;
    .local v0, "groupsStr":Ljava/lang/String;
    move-object v9, v3

    move-object v5, v10

    .end local v10    # "tagsStr":Ljava/lang/String;
    .local v5, "tagsStr":Ljava/lang/String;
    move-object v10, v1

    move-object/from16 v16, v11

    .end local v11    # "programsStr":Ljava/lang/String;
    .local v16, "programsStr":Ljava/lang/String;
    move/from16 v11, p2

    invoke-direct/range {v6 .. v11}, Lmiui/log/LogSwitchesConfigManager;->buildAppLogSwitches(Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 127
    invoke-direct {v12, v13, v4}, Lmiui/log/LogSwitchesConfigManager;->merge(Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v6

    .line 129
    .end local v4    # "appLevelUpdates":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/AppLogSwitches;>;"
    .local v6, "newAppLogSwitches":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/AppLogSwitches;>;"
    :goto_a9
    iget-object v4, v12, Lmiui/log/LogSwitchesConfigManager;->logSwitchesWriter:Lmiui/log/LogSwitchesConfigWriter;

    invoke-virtual {v4, v6}, Lmiui/log/LogSwitchesConfigWriter;->write(Ljava/util/HashMap;)V

    .line 130
    return-void
.end method

.method private blacklist update(Lmiui/log/AppLogSwitches;Lmiui/log/AppLogSwitches;)V
    .registers 8
    .param p1, "current"    # Lmiui/log/AppLogSwitches;
    .param p2, "updates"    # Lmiui/log/AppLogSwitches;

    .line 172
    iget-object v0, p2, Lmiui/log/AppLogSwitches;->logSwitches:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/log/LogSwitch;

    .line 173
    .local v1, "updateSwitch":Lmiui/log/LogSwitch;
    iget-object v2, p1, Lmiui/log/AppLogSwitches;->logSwitches:Ljava/util/HashMap;

    iget-object v3, v1, Lmiui/log/LogSwitch;->uniqueName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/log/LogSwitch;

    .line 174
    .local v2, "currentSwitch":Lmiui/log/LogSwitch;
    if-nez v2, :cond_2a

    .line 175
    iget-object v3, p1, Lmiui/log/AppLogSwitches;->logSwitches:Ljava/util/HashMap;

    iget-object v4, v1, Lmiui/log/LogSwitch;->uniqueName:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_37

    .line 176
    :cond_2a
    iget-boolean v3, v1, Lmiui/log/LogSwitch;->isOn:Z

    iget-boolean v4, v2, Lmiui/log/LogSwitch;->isOn:Z

    if-eq v3, v4, :cond_37

    .line 177
    iget-object v3, p1, Lmiui/log/AppLogSwitches;->logSwitches:Ljava/util/HashMap;

    iget-object v4, v1, Lmiui/log/LogSwitch;->uniqueName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .end local v1    # "updateSwitch":Lmiui/log/LogSwitch;
    .end local v2    # "currentSwitch":Lmiui/log/LogSwitch;
    :cond_37
    :goto_37
    goto :goto_a

    .line 180
    :cond_38
    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist startMonitoring(ZZ)V
    .registers 4
    .param p1, "createLogSwitchesFileIfNotExisted"    # Z
    .param p2, "synchronizedReadInitialLogSwitches"    # Z

    monitor-enter p0

    .line 47
    :try_start_1
    iget-object v0, p0, Lmiui/log/LogSwitchesConfigManager;->logSwitchesMonitor:Lmiui/log/LogSwitchesConfigMonitor;

    invoke-virtual {v0}, Lmiui/log/LogSwitchesConfigMonitor;->isWatching()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_12

    if-eqz v0, :cond_b

    .line 48
    monitor-exit p0

    return-void

    .line 49
    :cond_b
    :try_start_b
    iget-object v0, p0, Lmiui/log/LogSwitchesConfigManager;->logSwitchesMonitor:Lmiui/log/LogSwitchesConfigMonitor;

    invoke-virtual {v0, p1, p2}, Lmiui/log/LogSwitchesConfigMonitor;->startMonitoring(ZZ)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_12

    .line 50
    monitor-exit p0

    return-void

    .line 46
    .end local p0    # "this":Lmiui/log/LogSwitchesConfigManager;
    .end local p1    # "createLogSwitchesFileIfNotExisted":Z
    .end local p2    # "synchronizedReadInitialLogSwitches":Z
    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public blacklist updateLogSwitches(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 65
    if-nez p1, :cond_3

    .line 66
    return-void

    .line 68
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "miui.intent.action.REVERT_MIUILOG_SWITCHES"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 69
    invoke-direct {p0, p1}, Lmiui/log/LogSwitchesConfigManager;->revertLogSwitches(Landroid/content/Intent;)V

    goto :goto_34

    .line 70
    :cond_13
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "miui.intent.action.SWITCH_ON_MIUILOGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 71
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lmiui/log/LogSwitchesConfigManager;->switchStatusOfLogSwitches(Landroid/content/Intent;Z)V

    goto :goto_34

    .line 72
    :cond_24
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "miui.intent.action.SWITCH_OFF_MIUILOGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/log/LogSwitchesConfigManager;->switchStatusOfLogSwitches(Landroid/content/Intent;Z)V

    .line 75
    :cond_34
    :goto_34
    return-void
.end method

.method public declared-synchronized blacklist updatePackageName(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 53
    :try_start_1
    iget-object v0, p0, Lmiui/log/LogSwitchesConfigManager;->logSwitchesMonitor:Lmiui/log/LogSwitchesConfigMonitor;

    invoke-virtual {v0, p1}, Lmiui/log/LogSwitchesConfigMonitor;->updatePackageName(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 54
    monitor-exit p0

    return-void

    .line 52
    .end local p0    # "this":Lmiui/log/LogSwitchesConfigManager;
    .end local p1    # "packageName":Ljava/lang/String;
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist updateProgramName()V
    .registers 2

    monitor-enter p0

    .line 61
    :try_start_1
    iget-object v0, p0, Lmiui/log/LogSwitchesConfigManager;->logSwitchesMonitor:Lmiui/log/LogSwitchesConfigMonitor;

    invoke-virtual {v0}, Lmiui/log/LogSwitchesConfigMonitor;->updateProgramName()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 62
    monitor-exit p0

    return-void

    .line 60
    .end local p0    # "this":Lmiui/log/LogSwitchesConfigManager;
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist updateProgramName(Ljava/lang/String;)V
    .registers 3
    .param p1, "programName"    # Ljava/lang/String;

    monitor-enter p0

    .line 57
    :try_start_1
    iget-object v0, p0, Lmiui/log/LogSwitchesConfigManager;->logSwitchesMonitor:Lmiui/log/LogSwitchesConfigMonitor;

    invoke-virtual {v0, p1}, Lmiui/log/LogSwitchesConfigMonitor;->updateProgramName(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 58
    monitor-exit p0

    return-void

    .line 56
    .end local p0    # "this":Lmiui/log/LogSwitchesConfigManager;
    .end local p1    # "programName":Ljava/lang/String;
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method
