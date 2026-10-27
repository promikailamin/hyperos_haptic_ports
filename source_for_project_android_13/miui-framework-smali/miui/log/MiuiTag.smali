.class public final Lmiui/log/MiuiTag;
.super Ljava/lang/Object;
.source "MiuiTag.java"

# interfaces
.implements Lmiui/log/ILogTag;


# instance fields
.field public final blacklist defaultOn:Z

.field public final blacklist id:I

.field private blacklist isTagOn:Z

.field public final blacklist name:Ljava/lang/String;

.field private blacklist onNumber:I


# direct methods
.method constructor blacklist <init>(ILjava/lang/String;Z)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defaultOn"    # Z

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lmiui/log/MiuiTag;->id:I

    .line 17
    iput-object p2, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    .line 18
    iput-boolean p3, p0, Lmiui/log/MiuiTag;->defaultOn:Z

    .line 19
    iput-boolean p3, p0, Lmiui/log/MiuiTag;->isTagOn:Z

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lmiui/log/MiuiTag;->onNumber:I

    .line 21
    return-void
.end method


# virtual methods
.method public blacklist isOn()Z
    .registers 2

    .line 24
    iget-boolean v0, p0, Lmiui/log/MiuiTag;->isTagOn:Z

    return v0
.end method

.method public declared-synchronized blacklist switchOff()V
    .registers 3

    monitor-enter p0

    .line 37
    :try_start_1
    iget v0, p0, Lmiui/log/MiuiTag;->onNumber:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmiui/log/MiuiTag;->onNumber:I

    .line 38
    if-nez v0, :cond_e

    .line 39
    iget-boolean v0, p0, Lmiui/log/MiuiTag;->defaultOn:Z

    iput-boolean v0, p0, Lmiui/log/MiuiTag;->isTagOn:Z

    goto :goto_14

    .line 40
    .end local p0    # "this":Lmiui/log/MiuiTag;
    :cond_e
    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/log/MiuiTag;->isTagOn:Z
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 43
    :cond_14
    :goto_14
    monitor-exit p0

    return-void

    .line 36
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist switchOn()V
    .registers 3

    monitor-enter p0

    .line 28
    :try_start_1
    iget v0, p0, Lmiui/log/MiuiTag;->onNumber:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lmiui/log/MiuiTag;->onNumber:I

    .line 29
    if-nez v0, :cond_e

    .line 30
    iget-boolean v0, p0, Lmiui/log/MiuiTag;->defaultOn:Z

    iput-boolean v0, p0, Lmiui/log/MiuiTag;->isTagOn:Z

    goto :goto_12

    .line 31
    .end local p0    # "this":Lmiui/log/MiuiTag;
    :cond_e
    if-ne v0, v1, :cond_12

    .line 32
    iput-boolean v1, p0, Lmiui/log/MiuiTag;->isTagOn:Z
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 34
    :cond_12
    :goto_12
    monitor-exit p0

    return-void

    .line 27
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method
