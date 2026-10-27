.class public Landroid/content/LoggingContentInterface;
.super Ljava/lang/Object;
.source "LoggingContentInterface.java"

# interfaces
.implements Landroid/content/ContentInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/LoggingContentInterface$Logger;
    }
.end annotation


# instance fields
.field private final blacklist delegate:Landroid/content/ContentInterface;

.field private final blacklist tag:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgettag(Landroid/content/LoggingContentInterface;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/content/LoggingContentInterface;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/content/ContentInterface;)V
    .registers 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Landroid/content/LoggingContentInterface;->tag:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    .line 49
    return-void
.end method


# virtual methods
.method public blacklist applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .line 275
    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const-string v1, "applyBatch"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    :try_start_b
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1, p2}, Landroid/content/ContentInterface;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/ContentProviderResult;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_17} :catch_1d
    .catchall {:try_start_b .. :try_end_17} :catchall_1b

    .line 282
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    .line 277
    return-object p1

    .line 275
    :catchall_1b
    move-exception p1

    goto :goto_22

    .line 278
    :catch_1d
    move-exception p1

    .line 279
    :try_start_1e
    invoke-virtual {v0, p1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    throw p1
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_1b

    .line 275
    :goto_22
    :try_start_22
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    goto :goto_2a

    :catchall_26
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2a
    throw p1
.end method

.method public blacklist bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 196
    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const-string v1, "bulkInsert"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    :try_start_b
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1, p2}, Landroid/content/ContentInterface;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1f} :catch_25
    .catchall {:try_start_b .. :try_end_1f} :catchall_23

    .line 203
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    .line 198
    return p1

    .line 196
    :catchall_23
    move-exception p1

    goto :goto_2a

    .line 199
    :catch_25
    move-exception p1

    .line 200
    :try_start_26
    invoke-virtual {v0, p1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    throw p1
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_23

    .line 196
    :goto_2a
    :try_start_2a
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    goto :goto_32

    :catchall_2e
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_32
    throw p1
.end method

.method public blacklist call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 288
    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const-string v1, "call"

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    :try_start_b
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/content/ContentInterface;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_17} :catch_1d
    .catchall {:try_start_b .. :try_end_17} :catchall_1b

    .line 295
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    .line 290
    return-object p1

    .line 288
    :catchall_1b
    move-exception p1

    goto :goto_22

    .line 291
    :catch_1d
    move-exception p1

    .line 292
    :try_start_1e
    invoke-virtual {v0, p1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    throw p1
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_1b

    .line 288
    :goto_22
    :try_start_22
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    goto :goto_2a

    :catchall_26
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2a
    throw p1
.end method

.method public blacklist canonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 132
    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const-string v1, "canonicalize"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    :try_start_b
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1}, Landroid/content/ContentInterface;->canonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_17} :catch_1d
    .catchall {:try_start_b .. :try_end_17} :catchall_1b

    .line 139
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    .line 134
    return-object p1

    .line 132
    :catchall_1b
    move-exception p1

    goto :goto_22

    .line 135
    :catch_1d
    move-exception p1

    .line 136
    :try_start_1e
    invoke-virtual {v0, p1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    throw p1
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_1b

    .line 132
    :goto_22
    :try_start_22
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    goto :goto_2a

    :catchall_26
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2a
    throw p1
.end method

.method public blacklist checkUriPermission(Landroid/net/Uri;II)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 170
    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p1, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "checkUriPermission"

    invoke-direct {v0, p0, v2, v1}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    :try_start_13
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/ContentInterface;->checkUriPermission(Landroid/net/Uri;II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_27} :catch_2d
    .catchall {:try_start_13 .. :try_end_27} :catchall_2b

    .line 177
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    .line 172
    return p1

    .line 170
    :catchall_2b
    move-exception p1

    goto :goto_32

    .line 173
    :catch_2d
    move-exception p1

    .line 174
    :try_start_2e
    invoke-virtual {v0, p1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    throw p1
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_2b

    .line 170
    :goto_32
    :try_start_32
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    goto :goto_3a

    :catchall_36
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3a
    throw p1
.end method

.method public blacklist delete(Landroid/net/Uri;Landroid/os/Bundle;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 208
    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const-string v1, "delete"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    :try_start_b
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1, p2}, Landroid/content/ContentInterface;->delete(Landroid/net/Uri;Landroid/os/Bundle;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1f} :catch_25
    .catchall {:try_start_b .. :try_end_1f} :catchall_23

    .line 215
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    .line 210
    return p1

    .line 208
    :catchall_23
    move-exception p1

    goto :goto_2a

    .line 211
    :catch_25
    move-exception p1

    .line 212
    :try_start_26
    invoke-virtual {v0, p1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    throw p1
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_23

    .line 208
    :goto_2a
    :try_start_2a
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    goto :goto_32

    :catchall_2e
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_32
    throw p1
.end method

.method public blacklist getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const-string v1, "getStreamTypes"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    :try_start_b
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1, p2}, Landroid/content/ContentInterface;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_17} :catch_1d
    .catchall {:try_start_b .. :try_end_17} :catchall_1b

    .line 127
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    .line 122
    return-object p1

    .line 120
    :catchall_1b
    move-exception p1

    goto :goto_22

    .line 123
    :catch_1d
    move-exception p1

    .line 124
    :try_start_1e
    invoke-virtual {v0, p1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    throw p1
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_1b

    .line 120
    :goto_22
    :try_start_22
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    goto :goto_2a

    :catchall_26
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2a
    throw p1
.end method

.method public blacklist getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const-string v1, "getType"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    :try_start_b
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1}, Landroid/content/ContentInterface;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_17} :catch_1d
    .catchall {:try_start_b .. :try_end_17} :catchall_1b

    .line 114
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    .line 109
    return-object p1

    .line 107
    :catchall_1b
    move-exception p1

    goto :goto_22

    .line 110
    :catch_1d
    move-exception p1

    .line 111
    :try_start_1e
    invoke-virtual {v0, p1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    throw p1
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_1b

    .line 107
    :goto_22
    :try_start_22
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    goto :goto_2a

    :catchall_26
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2a
    throw p1
.end method

.method public blacklist insert(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 183
    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const-string v1, "insert"

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    :try_start_b
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/ContentInterface;->insert(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_17} :catch_1d
    .catchall {:try_start_b .. :try_end_17} :catchall_1b

    .line 190
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    .line 185
    return-object p1

    .line 183
    :catchall_1b
    move-exception p1

    goto :goto_22

    .line 186
    :catch_1d
    move-exception p1

    .line 187
    :try_start_1e
    invoke-virtual {v0, p1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    throw p1
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_1b

    .line 183
    :goto_22
    :try_start_22
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    goto :goto_2a

    :catchall_26
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2a
    throw p1
.end method

.method public blacklist openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 247
    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const-string/jumbo v1, "openAssetFile"

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    :try_start_c
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/ContentInterface;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/AssetFileDescriptor;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_18} :catch_1e
    .catchall {:try_start_c .. :try_end_18} :catchall_1c

    .line 254
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    .line 249
    return-object p1

    .line 247
    :catchall_1c
    move-exception p1

    goto :goto_23

    .line 250
    :catch_1e
    move-exception p1

    .line 251
    :try_start_1f
    invoke-virtual {v0, p1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    throw p1
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_1c

    .line 247
    :goto_23
    :try_start_23
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_27

    goto :goto_2b

    :catchall_27
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2b
    throw p1
.end method

.method public blacklist openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 234
    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const-string/jumbo v1, "openFile"

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    :try_start_c
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/ContentInterface;->openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_18} :catch_1e
    .catchall {:try_start_c .. :try_end_18} :catchall_1c

    .line 241
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    .line 236
    return-object p1

    .line 234
    :catchall_1c
    move-exception p1

    goto :goto_23

    .line 237
    :catch_1e
    move-exception p1

    .line 238
    :try_start_1f
    invoke-virtual {v0, p1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    throw p1
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_1c

    .line 234
    :goto_23
    :try_start_23
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_27

    goto :goto_2b

    :catchall_27
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2b
    throw p1
.end method

.method public blacklist openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 261
    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const-string/jumbo v1, "openTypedAssetFile"

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    :try_start_c
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/content/ContentInterface;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/AssetFileDescriptor;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_18} :catch_1e
    .catchall {:try_start_c .. :try_end_18} :catchall_1c

    .line 268
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    .line 263
    return-object p1

    .line 261
    :catchall_1c
    move-exception p1

    goto :goto_23

    .line 264
    :catch_1e
    move-exception p1

    .line 265
    :try_start_1f
    invoke-virtual {v0, p1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    throw p1
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_1c

    .line 261
    :goto_23
    :try_start_23
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_27

    goto :goto_2b

    :catchall_27
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2b
    throw p1
.end method

.method public blacklist query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const-string/jumbo v1, "query"

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    :try_start_c
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/content/ContentInterface;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/database/Cursor;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_18} :catch_1e
    .catchall {:try_start_c .. :try_end_18} :catchall_1c

    .line 102
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    .line 97
    return-object p1

    .line 95
    :catchall_1c
    move-exception p1

    goto :goto_23

    .line 98
    :catch_1e
    move-exception p1

    .line 99
    :try_start_1f
    invoke-virtual {v0, p1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    throw p1
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_1c

    .line 95
    :goto_23
    :try_start_23
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_27

    goto :goto_2b

    :catchall_27
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2b
    throw p1
.end method

.method public blacklist refresh(Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const-string/jumbo v1, "refresh"

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    :try_start_c
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/ContentInterface;->refresh(Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_20} :catch_26
    .catchall {:try_start_c .. :try_end_20} :catchall_24

    .line 164
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    .line 159
    return p1

    .line 157
    :catchall_24
    move-exception p1

    goto :goto_2b

    .line 160
    :catch_26
    move-exception p1

    .line 161
    :try_start_27
    invoke-virtual {v0, p1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    throw p1
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_24

    .line 157
    :goto_2b
    :try_start_2b
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2f

    goto :goto_33

    :catchall_2f
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_33
    throw p1
.end method

.method public blacklist uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 144
    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const-string/jumbo v1, "uncanonicalize"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    :try_start_c
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1}, Landroid/content/ContentInterface;->uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_18} :catch_1e
    .catchall {:try_start_c .. :try_end_18} :catchall_1c

    .line 151
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    .line 146
    return-object p1

    .line 144
    :catchall_1c
    move-exception p1

    goto :goto_23

    .line 147
    :catch_1e
    move-exception p1

    .line 148
    :try_start_1f
    invoke-virtual {v0, p1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    throw p1
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_1c

    .line 144
    :goto_23
    :try_start_23
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_27

    goto :goto_2b

    :catchall_27
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2b
    throw p1
.end method

.method public blacklist update(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 221
    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const-string/jumbo v1, "update"

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    :try_start_c
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/ContentInterface;->update(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_20} :catch_26
    .catchall {:try_start_c .. :try_end_20} :catchall_24

    .line 228
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    .line 223
    return p1

    .line 221
    :catchall_24
    move-exception p1

    goto :goto_2b

    .line 224
    :catch_26
    move-exception p1

    .line 225
    :try_start_27
    invoke-virtual {v0, p1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    throw p1
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_24

    .line 221
    :goto_2b
    :try_start_2b
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2f

    goto :goto_33

    :catchall_2f
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_33
    throw p1
.end method
