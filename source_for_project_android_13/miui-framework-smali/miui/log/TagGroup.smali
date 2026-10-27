.class public final Lmiui/log/TagGroup;
.super Ljava/lang/Object;
.source "TagGroup.java"

# interfaces
.implements Lmiui/log/ILogTag;


# instance fields
.field private final blacklist androidTags:[Ljava/lang/String;

.field private blacklist isGroupOn:Z

.field private final blacklist miuiTags:[Ljava/lang/String;

.field public final blacklist name:Ljava/lang/String;

.field private blacklist onNumber:I


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "miuiTags"    # [Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/log/TagGroup;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "miuiTags"    # [Ljava/lang/String;
    .param p3, "androidTags"    # [Ljava/lang/String;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lmiui/log/TagGroup;->name:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    if-nez p2, :cond_b

    new-array v1, v0, [Ljava/lang/String;

    goto :goto_c

    :cond_b
    move-object v1, p2

    :goto_c
    iput-object v1, p0, Lmiui/log/TagGroup;->miuiTags:[Ljava/lang/String;

    .line 22
    if-nez p3, :cond_13

    new-array v1, v0, [Ljava/lang/String;

    goto :goto_14

    :cond_13
    move-object v1, p3

    :goto_14
    iput-object v1, p0, Lmiui/log/TagGroup;->androidTags:[Ljava/lang/String;

    .line 23
    iput-boolean v0, p0, Lmiui/log/TagGroup;->isGroupOn:Z

    .line 24
    iput v0, p0, Lmiui/log/TagGroup;->onNumber:I

    .line 25
    return-void
.end method


# virtual methods
.method public blacklist isOn()Z
    .registers 2

    .line 28
    iget-boolean v0, p0, Lmiui/log/TagGroup;->isGroupOn:Z

    return v0
.end method

.method public declared-synchronized blacklist switchOff()V
    .registers 7

    monitor-enter p0

    .line 52
    :try_start_1
    iget v0, p0, Lmiui/log/TagGroup;->onNumber:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmiui/log/TagGroup;->onNumber:I

    .line 53
    const/4 v1, 0x0

    .line 54
    .local v1, "needSwitchOffTags":Z
    const/4 v2, 0x0

    if-nez v0, :cond_f

    .line 55
    iput-boolean v2, p0, Lmiui/log/TagGroup;->isGroupOn:Z

    .line 56
    const/4 v1, 0x1

    goto :goto_15

    .line 57
    .end local p0    # "this":Lmiui/log/TagGroup;
    :cond_f
    const/4 v3, -0x1

    if-ne v0, v3, :cond_15

    .line 58
    iput-boolean v2, p0, Lmiui/log/TagGroup;->isGroupOn:Z

    .line 59
    const/4 v1, 0x1

    .line 61
    :cond_15
    :goto_15
    if-eqz v1, :cond_32

    .line 62
    iget-object v0, p0, Lmiui/log/TagGroup;->miuiTags:[Ljava/lang/String;

    array-length v3, v0

    move v4, v2

    :goto_1b
    if-ge v4, v3, :cond_25

    aget-object v5, v0, v4

    .line 63
    .local v5, "miuiTag":Ljava/lang/String;
    invoke-static {v5}, Lmiui/log/MiuiTags;->switchOff(Ljava/lang/String;)V

    .line 62
    .end local v5    # "miuiTag":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 65
    :cond_25
    iget-object v0, p0, Lmiui/log/TagGroup;->androidTags:[Ljava/lang/String;

    array-length v3, v0

    :goto_28
    if-ge v2, v3, :cond_32

    aget-object v4, v0, v2

    .line 66
    .local v4, "androidTag":Ljava/lang/String;
    invoke-static {v4}, Lmiui/log/AndroidTags;->switchOff(Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_34

    .line 65
    .end local v4    # "androidTag":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 69
    :cond_32
    monitor-exit p0

    return-void

    .line 51
    .end local v1    # "needSwitchOffTags":Z
    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist switchOn()V
    .registers 7

    monitor-enter p0

    .line 32
    :try_start_1
    iget v0, p0, Lmiui/log/TagGroup;->onNumber:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lmiui/log/TagGroup;->onNumber:I

    .line 33
    const/4 v2, 0x0

    .line 34
    .local v2, "needSwitchOnTags":Z
    const/4 v3, 0x0

    if-nez v0, :cond_f

    .line 35
    iput-boolean v3, p0, Lmiui/log/TagGroup;->isGroupOn:Z

    .line 36
    const/4 v2, 0x1

    goto :goto_14

    .line 37
    .end local p0    # "this":Lmiui/log/TagGroup;
    :cond_f
    if-ne v0, v1, :cond_14

    .line 38
    iput-boolean v1, p0, Lmiui/log/TagGroup;->isGroupOn:Z

    .line 39
    const/4 v2, 0x1

    .line 41
    :cond_14
    :goto_14
    if-eqz v2, :cond_31

    .line 42
    iget-object v0, p0, Lmiui/log/TagGroup;->androidTags:[Ljava/lang/String;

    array-length v1, v0

    move v4, v3

    :goto_1a
    if-ge v4, v1, :cond_24

    aget-object v5, v0, v4

    .line 43
    .local v5, "androidTag":Ljava/lang/String;
    invoke-static {v5}, Lmiui/log/AndroidTags;->switchOn(Ljava/lang/String;)V

    .line 42
    .end local v5    # "androidTag":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 45
    :cond_24
    iget-object v0, p0, Lmiui/log/TagGroup;->miuiTags:[Ljava/lang/String;

    array-length v1, v0

    :goto_27
    if-ge v3, v1, :cond_31

    aget-object v4, v0, v3

    .line 46
    .local v4, "miuiTag":Ljava/lang/String;
    invoke-static {v4}, Lmiui/log/MiuiTags;->switchOn(Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_33

    .line 45
    .end local v4    # "miuiTag":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 49
    :cond_31
    monitor-exit p0

    return-void

    .line 31
    .end local v2    # "needSwitchOnTags":Z
    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0
.end method
