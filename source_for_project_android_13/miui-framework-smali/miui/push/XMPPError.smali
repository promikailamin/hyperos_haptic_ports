.class public Lmiui/push/XMPPError;
.super Ljava/lang/Object;
.source "XMPPError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/push/XMPPError$Condition;
    }
.end annotation


# instance fields
.field private blacklist applicationExtensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/push/CommonPacketExtension;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist code:I

.field private blacklist condition:Ljava/lang/String;

.field private blacklist message:Ljava/lang/String;

.field private blacklist reason:Ljava/lang/String;

.field private blacklist type:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 3
    .param p1, "code"    # I

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    .line 212
    iput p1, p0, Lmiui/push/XMPPError;->code:I

    .line 213
    iput-object v0, p0, Lmiui/push/XMPPError;->message:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;)V
    .registers 4
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    .line 225
    iput p1, p0, Lmiui/push/XMPPError;->code:I

    .line 226
    iput-object p2, p0, Lmiui/push/XMPPError;->message:Ljava/lang/String;

    .line 227
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 8
    .param p1, "code"    # I
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "condition"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lmiui/push/CommonPacketExtension;",
            ">;)V"
        }
    .end annotation

    .line 242
    .local p6, "extension":Ljava/util/List;, "Ljava/util/List<Lmiui/push/CommonPacketExtension;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    .line 243
    iput p1, p0, Lmiui/push/XMPPError;->code:I

    .line 244
    iput-object p2, p0, Lmiui/push/XMPPError;->type:Ljava/lang/String;

    .line 245
    iput-object p3, p0, Lmiui/push/XMPPError;->reason:Ljava/lang/String;

    .line 246
    iput-object p4, p0, Lmiui/push/XMPPError;->condition:Ljava/lang/String;

    .line 247
    iput-object p5, p0, Lmiui/push/XMPPError;->message:Ljava/lang/String;

    .line 248
    iput-object p6, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    .line 249
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    .line 252
    const-string v0, "ext_err_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmiui/push/XMPPError;->code:I

    .line 253
    const-string v0, "ext_err_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 254
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/XMPPError;->type:Ljava/lang/String;

    .line 256
    :cond_1c
    const-string v0, "ext_err_cond"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/XMPPError;->condition:Ljava/lang/String;

    .line 257
    const-string v0, "ext_err_reason"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/XMPPError;->reason:Ljava/lang/String;

    .line 258
    const-string v0, "ext_err_msg"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/XMPPError;->message:Ljava/lang/String;

    .line 259
    const-string v0, "ext_exts"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 260
    .local v0, "extBundles":[Landroid/os/Parcelable;
    if-eqz v0, :cond_5b

    .line 261
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    .line 262
    array-length v1, v0

    const/4 v2, 0x0

    :goto_46
    if-ge v2, v1, :cond_5b

    aget-object v3, v0, v2

    .line 263
    .local v3, "p":Landroid/os/Parcelable;
    move-object v4, v3

    check-cast v4, Landroid/os/Bundle;

    .line 264
    .local v4, "b":Landroid/os/Bundle;
    invoke-static {v4}, Lmiui/push/CommonPacketExtension;->parseFromBundle(Landroid/os/Bundle;)Lmiui/push/CommonPacketExtension;

    move-result-object v5

    .line 265
    .local v5, "ext":Lmiui/push/CommonPacketExtension;
    if-eqz v5, :cond_58

    .line 266
    iget-object v6, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    .end local v3    # "p":Landroid/os/Parcelable;
    .end local v4    # "b":Landroid/os/Bundle;
    .end local v5    # "ext":Lmiui/push/CommonPacketExtension;
    :cond_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 270
    :cond_5b
    return-void
.end method

.method public constructor blacklist <init>(Lmiui/push/XMPPError$Condition;)V
    .registers 3
    .param p1, "condition"    # Lmiui/push/XMPPError$Condition;

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    .line 184
    invoke-direct {p0, p1}, Lmiui/push/XMPPError;->init(Lmiui/push/XMPPError$Condition;)V

    .line 185
    iput-object v0, p0, Lmiui/push/XMPPError;->message:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public constructor blacklist <init>(Lmiui/push/XMPPError$Condition;Ljava/lang/String;)V
    .registers 4
    .param p1, "condition"    # Lmiui/push/XMPPError$Condition;
    .param p2, "messageText"    # Ljava/lang/String;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    .line 200
    invoke-direct {p0, p1}, Lmiui/push/XMPPError;->init(Lmiui/push/XMPPError$Condition;)V

    .line 201
    iput-object p2, p0, Lmiui/push/XMPPError;->message:Ljava/lang/String;

    .line 202
    return-void
.end method

.method private blacklist init(Lmiui/push/XMPPError$Condition;)V
    .registers 3
    .param p1, "condition"    # Lmiui/push/XMPPError$Condition;

    .line 280
    invoke-static {p1}, Lmiui/push/XMPPError$Condition;->-$$Nest$fgetvalue(Lmiui/push/XMPPError$Condition;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/XMPPError;->condition:Ljava/lang/String;

    .line 281
    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist addExtension(Lmiui/push/CommonPacketExtension;)V
    .registers 3
    .param p1, "extension"    # Lmiui/push/CommonPacketExtension;

    monitor-enter p0

    .line 439
    :try_start_1
    iget-object v0, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    if-nez v0, :cond_c

    .line 440
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    .line 442
    .end local p0    # "this":Lmiui/push/XMPPError;
    :cond_c
    iget-object v0, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 443
    monitor-exit p0

    return-void

    .line 438
    .end local p1    # "extension":Lmiui/push/CommonPacketExtension;
    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public blacklist getCode()I
    .registers 2

    .line 311
    iget v0, p0, Lmiui/push/XMPPError;->code:I

    return v0
.end method

.method public blacklist getCondition()Ljava/lang/String;
    .registers 2

    .line 289
    iget-object v0, p0, Lmiui/push/XMPPError;->condition:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized blacklist getExtension(Ljava/lang/String;Ljava/lang/String;)Lmiui/push/PacketExtension;
    .registers 7
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;

    monitor-enter p0

    .line 422
    :try_start_1
    iget-object v0, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_34

    if-eqz p1, :cond_34

    if-nez p2, :cond_b

    goto :goto_34

    .line 425
    :cond_b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/push/PacketExtension;

    .line 426
    .local v2, "ext":Lmiui/push/PacketExtension;
    invoke-interface {v2}, Lmiui/push/PacketExtension;->getElementName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Lmiui/push/PacketExtension;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_36

    if-eqz v3, :cond_31

    .line 427
    monitor-exit p0

    return-object v2

    .line 429
    .end local v2    # "ext":Lmiui/push/PacketExtension;
    .end local p0    # "this":Lmiui/push/XMPPError;
    :cond_31
    goto :goto_f

    .line 430
    :cond_32
    monitor-exit p0

    return-object v1

    .line 423
    :cond_34
    :goto_34
    monitor-exit p0

    return-object v1

    .line 421
    .end local p1    # "elementName":Ljava/lang/String;
    .end local p2    # "namespace":Ljava/lang/String;
    :catchall_36
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist getExtensions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/push/CommonPacketExtension;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 407
    :try_start_1
    iget-object v0, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    if-nez v0, :cond_b

    .line 408
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_11

    monitor-exit p0

    return-object v0

    .line 410
    .end local p0    # "this":Lmiui/push/XMPPError;
    :cond_b
    :try_start_b
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_11

    monitor-exit p0

    return-object v0

    .line 406
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist getMessage()Ljava/lang/String;
    .registers 2

    .line 320
    iget-object v0, p0, Lmiui/push/XMPPError;->message:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getReason()Ljava/lang/String;
    .registers 2

    .line 293
    iget-object v0, p0, Lmiui/push/XMPPError;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getType()Ljava/lang/String;
    .registers 2

    .line 302
    iget-object v0, p0, Lmiui/push/XMPPError;->type:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized blacklist setExtension(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiui/push/CommonPacketExtension;",
            ">;)V"
        }
    .end annotation

    .local p1, "extension":Ljava/util/List;, "Ljava/util/List<Lmiui/push/CommonPacketExtension;>;"
    monitor-enter p0

    .line 451
    :try_start_1
    iput-object p1, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 452
    monitor-exit p0

    return-void

    .line 450
    .end local p0    # "this":Lmiui/push/XMPPError;
    .end local p1    # "extension":Ljava/util/List;, "Ljava/util/List<Lmiui/push/CommonPacketExtension;>;"
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public blacklist toBundle()Landroid/os/Bundle;
    .registers 8

    .line 324
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 325
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lmiui/push/XMPPError;->type:Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 326
    const-string v2, "ext_err_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :cond_e
    iget v1, p0, Lmiui/push/XMPPError;->code:I

    const-string v2, "ext_err_code"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 329
    iget-object v1, p0, Lmiui/push/XMPPError;->reason:Ljava/lang/String;

    if-eqz v1, :cond_1e

    .line 330
    const-string v2, "ext_err_reason"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :cond_1e
    iget-object v1, p0, Lmiui/push/XMPPError;->condition:Ljava/lang/String;

    if-eqz v1, :cond_27

    .line 333
    const-string v2, "ext_err_cond"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :cond_27
    iget-object v1, p0, Lmiui/push/XMPPError;->message:Ljava/lang/String;

    if-eqz v1, :cond_30

    .line 336
    const-string v2, "ext_err_msg"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :cond_30
    iget-object v1, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    if-eqz v1, :cond_5e

    .line 339
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/os/Bundle;

    .line 340
    .local v1, "extBundle":[Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 341
    .local v2, "i":I
    iget-object v3, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_41
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_59

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/push/CommonPacketExtension;

    .line 342
    .local v4, "ext":Lmiui/push/CommonPacketExtension;
    invoke-virtual {v4}, Lmiui/push/CommonPacketExtension;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    .line 343
    .local v5, "subBundle":Landroid/os/Bundle;
    if-eqz v5, :cond_58

    .line 344
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "i":I
    .local v6, "i":I
    aput-object v5, v1, v2

    move v2, v6

    .line 346
    .end local v4    # "ext":Lmiui/push/CommonPacketExtension;
    .end local v5    # "subBundle":Landroid/os/Bundle;
    .end local v6    # "i":I
    .restart local v2    # "i":I
    :cond_58
    goto :goto_41

    .line 347
    :cond_59
    const-string v3, "ext_exts"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 349
    .end local v1    # "extBundle":[Landroid/os/Bundle;
    .end local v2    # "i":I
    :cond_5e
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 389
    .local v0, "txt":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lmiui/push/XMPPError;->condition:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 390
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    :cond_c
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmiui/push/XMPPError;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    iget-object v1, p0, Lmiui/push/XMPPError;->message:Ljava/lang/String;

    if-eqz v1, :cond_2c

    .line 394
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/push/XMPPError;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    :cond_2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist toXML()Ljava/lang/String;
    .registers 5

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 359
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v1, "<error code=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmiui/push/XMPPError;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    iget-object v1, p0, Lmiui/push/XMPPError;->type:Ljava/lang/String;

    if-eqz v1, :cond_27

    .line 361
    const-string v1, " type=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    iget-object v1, p0, Lmiui/push/XMPPError;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    :cond_27
    iget-object v1, p0, Lmiui/push/XMPPError;->reason:Ljava/lang/String;

    if-eqz v1, :cond_38

    .line 366
    const-string v1, " reason=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    iget-object v1, p0, Lmiui/push/XMPPError;->reason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    :cond_38
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    iget-object v1, p0, Lmiui/push/XMPPError;->condition:Ljava/lang/String;

    if-eqz v1, :cond_51

    .line 372
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/push/XMPPError;->condition:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    const-string v1, " xmlns=\"urn:ietf:params:xml:ns:xmpp-stanzas\"/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    :cond_51
    iget-object v1, p0, Lmiui/push/XMPPError;->message:Ljava/lang/String;

    if-eqz v1, :cond_64

    .line 376
    const-string v1, "<text xml:lang=\"en\" xmlns=\"urn:ietf:params:xml:ns:xmpp-stanzas\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    iget-object v1, p0, Lmiui/push/XMPPError;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    const-string v1, "</text>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    :cond_64
    invoke-virtual {p0}, Lmiui/push/XMPPError;->getExtensions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_80

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/push/PacketExtension;

    .line 381
    .local v2, "element":Lmiui/push/PacketExtension;
    invoke-interface {v2}, Lmiui/push/PacketExtension;->toXML()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .end local v2    # "element":Lmiui/push/PacketExtension;
    goto :goto_6c

    .line 383
    :cond_80
    const-string v1, "</error>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
