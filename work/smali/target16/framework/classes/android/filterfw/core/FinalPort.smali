.class public Landroid/filterfw/core/FinalPort;
.super Landroid/filterfw/core/FieldPort;
.source "FinalPort.java"


# direct methods
.method public constructor greylist-max-o <init>(Landroid/filterfw/core/Filter;Ljava/lang/String;Ljava/lang/reflect/Field;Z)V
    .registers 5

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/filterfw/core/FieldPort;-><init>(Landroid/filterfw/core/Filter;Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 29
    return-void
.end method


# virtual methods
.method protected declared-synchronized greylist-max-o setFieldFrame(Landroid/filterfw/core/Frame;Z)V
    .registers 4

    monitor-enter p0

    .line 33
    :try_start_1
    invoke-virtual {p0}, Landroid/filterfw/core/FinalPort;->assertPortIsOpen()V

    .line 34
    invoke-virtual {p0, p1, p2}, Landroid/filterfw/core/FinalPort;->checkFrameType(Landroid/filterfw/core/Frame;Z)V

    .line 35
    iget-object v0, p0, Landroid/filterfw/core/FinalPort;->mFilter:Landroid/filterfw/core/Filter;

    invoke-virtual {v0}, Landroid/filterfw/core/Filter;->getStatus()I

    move-result v0

    if-nez v0, :cond_18

    .line 38
    invoke-super {p0, p1, p2}, Landroid/filterfw/core/FieldPort;->setFieldFrame(Landroid/filterfw/core/Frame;Z)V

    .line 39
    const/4 p1, 0x0

    invoke-super {p0, p1}, Landroid/filterfw/core/FieldPort;->transfer(Landroid/filterfw/core/FilterContext;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_37

    .line 41
    monitor-exit p0

    return-void

    .line 36
    :cond_18
    :try_start_18
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Attempting to modify "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "!"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :catchall_37
    move-exception p1

    monitor-exit p0
    :try_end_39
    .catchall {:try_start_18 .. :try_end_39} :catchall_37

    throw p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "final "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/filterfw/core/FieldPort;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
