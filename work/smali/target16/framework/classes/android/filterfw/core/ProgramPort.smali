.class public Landroid/filterfw/core/ProgramPort;
.super Landroid/filterfw/core/FieldPort;
.source "ProgramPort.java"


# instance fields
.field protected greylist-max-o mVarName:Ljava/lang/String;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/filterfw/core/Filter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Z)V
    .registers 6

    .line 34
    invoke-direct {p0, p1, p2, p4, p5}, Landroid/filterfw/core/FieldPort;-><init>(Landroid/filterfw/core/Filter;Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 35
    iput-object p3, p0, Landroid/filterfw/core/ProgramPort;->mVarName:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Program "

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

.method public declared-synchronized greylist-max-o transfer(Landroid/filterfw/core/FilterContext;)V
    .registers 4

    monitor-enter p0

    .line 45
    :try_start_1
    iget-boolean p1, p0, Landroid/filterfw/core/ProgramPort;->mValueWaiting:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_6a

    if-eqz p1, :cond_68

    .line 47
    :try_start_5
    iget-object p1, p0, Landroid/filterfw/core/ProgramPort;->mField:Ljava/lang/reflect/Field;

    iget-object v0, p0, Landroid/filterfw/core/ProgramPort;->mFilter:Landroid/filterfw/core/Filter;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 48
    if-eqz p1, :cond_1b

    .line 49
    check-cast p1, Landroid/filterfw/core/Program;

    .line 50
    iget-object v0, p0, Landroid/filterfw/core/ProgramPort;->mVarName:Ljava/lang/String;

    iget-object v1, p0, Landroid/filterfw/core/ProgramPort;->mValue:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/filterfw/core/ProgramPort;->mValueWaiting:Z
    :try_end_1b
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_1b} :catch_42
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_1b} :catch_1c
    .catchall {:try_start_5 .. :try_end_1b} :catchall_6a

    .line 59
    :cond_1b
    goto :goto_68

    .line 56
    :catch_1c
    move-exception p1

    .line 57
    :try_start_1d
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Non Program field \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/filterfw/core/ProgramPort;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' annotated with ProgramParameter!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :catch_42
    move-exception p1

    .line 54
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Access to program field \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/filterfw/core/ProgramPort;->mField:Ljava/lang/reflect/Field;

    .line 55
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' was denied!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_68
    .catchall {:try_start_1d .. :try_end_68} :catchall_6a

    .line 61
    :cond_68
    :goto_68
    monitor-exit p0

    return-void

    .line 44
    :catchall_6a
    move-exception p1

    :try_start_6b
    monitor-exit p0
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    throw p1
.end method
