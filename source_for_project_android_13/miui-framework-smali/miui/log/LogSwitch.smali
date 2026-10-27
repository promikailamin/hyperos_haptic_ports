.class public Lmiui/log/LogSwitch;
.super Ljava/lang/Object;
.source "LogSwitch.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final blacklist isOn:Z

.field public final blacklist tagGroupName:Ljava/lang/String;

.field public final blacklist tagName:Ljava/lang/String;

.field public final blacklist uniqueName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "tagGroupName"    # Ljava/lang/String;
    .param p3, "isOn"    # Z

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lmiui/log/LogSwitch;->tagName:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lmiui/log/LogSwitch;->tagGroupName:Ljava/lang/String;

    .line 19
    iput-boolean p3, p0, Lmiui/log/LogSwitch;->isOn:Z

    .line 20
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tag_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/log/LogSwitch;->uniqueName:Ljava/lang/String;

    goto :goto_3a

    .line 23
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "group_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/log/LogSwitch;->uniqueName:Ljava/lang/String;

    .line 25
    :goto_3a
    return-void
.end method

.method public static blacklist parseLogSwitch(Ljava/lang/String;)Lmiui/log/LogSwitch;
    .registers 9
    .param p0, "logSwitchStr"    # Ljava/lang/String;

    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 48
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_d

    .line 49
    return-object v1

    .line 51
    :cond_d
    const-string v0, "\\s+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "switchParts":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x3

    if-eq v2, v3, :cond_18

    .line 53
    return-object v1

    .line 55
    :cond_18
    const/4 v2, 0x0

    aget-object v3, v0, v2

    const-string v4, "Tag"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "on"

    const/4 v5, 0x2

    const-string v6, ""

    const/4 v7, 0x1

    if-eqz v3, :cond_3f

    .line 56
    new-instance v1, Lmiui/log/LogSwitch;

    aget-object v2, v0, v7

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aget-object v3, v0, v5

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {v1, v2, v6, v3}, Lmiui/log/LogSwitch;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v1

    .line 57
    :cond_3f
    aget-object v2, v0, v2

    const-string v3, "Group"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 58
    new-instance v1, Lmiui/log/LogSwitch;

    aget-object v2, v0, v7

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aget-object v3, v0, v5

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {v1, v6, v2, v3}, Lmiui/log/LogSwitch;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v1

    .line 60
    :cond_5f
    return-object v1
.end method

.method public static blacklist parseLogSwitches(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 8
    .param p0, "logSwitchesStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmiui/log/LogSwitch;",
            ">;"
        }
    .end annotation

    .line 65
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "logSwitchStrs":[Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 67
    .local v1, "logSwitches":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/LogSwitch;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_1f

    aget-object v4, v0, v3

    .line 68
    .local v4, "logSwitchStr":Ljava/lang/String;
    invoke-static {v4}, Lmiui/log/LogSwitch;->parseLogSwitch(Ljava/lang/String;)Lmiui/log/LogSwitch;

    move-result-object v5

    .line 69
    .local v5, "logSwitch":Lmiui/log/LogSwitch;
    if-eqz v5, :cond_1c

    .line 70
    iget-object v6, v5, Lmiui/log/LogSwitch;->uniqueName:Ljava/lang/String;

    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .end local v4    # "logSwitchStr":Ljava/lang/String;
    .end local v5    # "logSwitch":Lmiui/log/LogSwitch;
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 73
    :cond_1f
    return-object v1
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 40
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 41
    :catch_5
    move-exception v0

    .line 42
    .local v0, "ex":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 29
    iget-boolean v0, p0, Lmiui/log/LogSwitch;->isOn:Z

    if-eqz v0, :cond_7

    const-string v0, "on"

    goto :goto_9

    :cond_7
    const-string v0, "off"

    .line 30
    .local v0, "statusStr":Ljava/lang/String;
    :goto_9
    iget-object v1, p0, Lmiui/log/LogSwitch;->tagName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, " "

    if-nez v1, :cond_31

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tag "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lmiui/log/LogSwitch;->tagName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 33
    :cond_31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "group "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lmiui/log/LogSwitch;->tagGroupName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
