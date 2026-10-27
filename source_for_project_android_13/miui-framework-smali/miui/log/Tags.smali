.class public final Lmiui/log/Tags;
.super Ljava/lang/Object;
.source "Tags.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getAndroidTag(Ljava/lang/String;)Lmiui/log/AndroidTag;
    .registers 2
    .param p0, "fieldFullPath"    # Ljava/lang/String;

    .line 14
    invoke-static {p0}, Lmiui/log/AndroidTags;->get(Ljava/lang/String;)Lmiui/log/AndroidTag;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getMiuiTag(I)Lmiui/log/MiuiTag;
    .registers 2
    .param p0, "tagID"    # I

    .line 30
    invoke-static {p0}, Lmiui/log/MiuiTags;->get(I)Lmiui/log/MiuiTag;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getMiuiTag(Ljava/lang/String;)Lmiui/log/MiuiTag;
    .registers 2
    .param p0, "tagName"    # Ljava/lang/String;

    .line 34
    invoke-static {p0}, Lmiui/log/MiuiTags;->get(Ljava/lang/String;)Lmiui/log/MiuiTag;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getTagGroup(Ljava/lang/String;)Lmiui/log/TagGroup;
    .registers 2
    .param p0, "groupName"    # Ljava/lang/String;

    .line 62
    invoke-static {p0}, Lmiui/log/TagGroups;->get(Ljava/lang/String;)Lmiui/log/TagGroup;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist isAndroidTagOn(Ljava/lang/String;)Z
    .registers 2
    .param p0, "fieldFullPath"    # Ljava/lang/String;

    .line 18
    invoke-static {p0}, Lmiui/log/AndroidTags;->isOn(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isMiuiTagOn(I)Z
    .registers 2
    .param p0, "tagID"    # I

    .line 38
    invoke-static {p0}, Lmiui/log/MiuiTags;->isOn(I)Z

    move-result v0

    return v0
.end method

.method public static blacklist isMiuiTagOn(Ljava/lang/String;)Z
    .registers 2
    .param p0, "tagName"    # Ljava/lang/String;

    .line 42
    invoke-static {p0}, Lmiui/log/MiuiTags;->isOn(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isTagGroupOn(Ljava/lang/String;)Z
    .registers 2
    .param p0, "groupName"    # Ljava/lang/String;

    .line 66
    invoke-static {p0}, Lmiui/log/TagGroups;->isOn(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist switchOffAndroidTag(Ljava/lang/String;)V
    .registers 1
    .param p0, "fieldFullPath"    # Ljava/lang/String;

    .line 26
    invoke-static {p0}, Lmiui/log/AndroidTags;->switchOff(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static blacklist switchOffMiuiTag(I)V
    .registers 1
    .param p0, "tagID"    # I

    .line 54
    invoke-static {p0}, Lmiui/log/MiuiTags;->switchOff(I)V

    .line 55
    return-void
.end method

.method public static blacklist switchOffMiuiTag(Ljava/lang/String;)V
    .registers 1
    .param p0, "tagName"    # Ljava/lang/String;

    .line 58
    invoke-static {p0}, Lmiui/log/MiuiTags;->switchOff(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static declared-synchronized blacklist switchOffTagGroup(Ljava/lang/String;)V
    .registers 2
    .param p0, "groupName"    # Ljava/lang/String;

    const-class v0, Lmiui/log/Tags;

    monitor-enter v0

    .line 74
    :try_start_3
    invoke-static {p0}, Lmiui/log/TagGroups;->switchOff(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    .line 75
    monitor-exit v0

    return-void

    .line 73
    .end local p0    # "groupName":Ljava/lang/String;
    :catchall_8
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static blacklist switchOnAndroidTag(Ljava/lang/String;)V
    .registers 1
    .param p0, "fieldFullPath"    # Ljava/lang/String;

    .line 22
    invoke-static {p0}, Lmiui/log/AndroidTags;->switchOn(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static blacklist switchOnMiuiTag(I)V
    .registers 1
    .param p0, "tagID"    # I

    .line 46
    invoke-static {p0}, Lmiui/log/MiuiTags;->switchOn(I)V

    .line 47
    return-void
.end method

.method public static blacklist switchOnMiuiTag(Ljava/lang/String;)V
    .registers 1
    .param p0, "tagName"    # Ljava/lang/String;

    .line 50
    invoke-static {p0}, Lmiui/log/MiuiTags;->switchOn(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static declared-synchronized blacklist switchOnTagGroup(Ljava/lang/String;)V
    .registers 2
    .param p0, "groupName"    # Ljava/lang/String;

    const-class v0, Lmiui/log/Tags;

    monitor-enter v0

    .line 70
    :try_start_3
    invoke-static {p0}, Lmiui/log/TagGroups;->switchOn(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    .line 71
    monitor-exit v0

    return-void

    .line 69
    .end local p0    # "groupName":Ljava/lang/String;
    :catchall_8
    move-exception p0

    monitor-exit v0

    throw p0
.end method
