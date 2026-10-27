.class public Lcom/android/server/pm/verify/domain/DomainVerificationShell;
.super Ljava/lang/Object;
.source "DomainVerificationShell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->mCallback:Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;

    .line 51
    return-void
.end method

.method private getRemainingArgs(Lcom/android/modules/utils/BasicShellCommandHandler;)Ljava/util/ArrayList;
    .registers 5
    .param p1, "commandHandler"    # Lcom/android/modules/utils/BasicShellCommandHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/modules/utils/BasicShellCommandHandler;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 494
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 496
    .local v0, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_5
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArg()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "arg":Ljava/lang/String;
    if-eqz v1, :cond_10

    .line 497
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 499
    :cond_10
    return-object v0
.end method

.method private parseEnabled(Ljava/lang/String;)Z
    .registers 6
    .param p1, "arg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 513
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_44

    :cond_f
    goto :goto_25

    :sswitch_10
    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v3

    goto :goto_26

    :sswitch_1a
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v2

    goto :goto_26

    :goto_25
    const/4 v0, -0x1

    :goto_26
    packed-switch v0, :pswitch_data_4e

    .line 519
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid boolean"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 517
    :pswitch_42
    return v2

    .line 515
    :pswitch_43
    return v3

    :sswitch_data_44
    .sparse-switch
        0x36758e -> :sswitch_1a
        0x5cb1923 -> :sswitch_10
    .end sparse-switch

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_43
        :pswitch_42
    .end packed-switch
.end method

.method private runGetAppLinkOwners(Lcom/android/modules/utils/BasicShellCommandHandler;)Z
    .registers 12
    .param p1, "commandHandler"    # Lcom/android/modules/utils/BasicShellCommandHandler;

    .line 434
    const/4 v0, 0x0

    .line 435
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 437
    .local v1, "userId":Ljava/lang/Integer;
    :goto_2
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "option":Ljava/lang/String;
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_68

    .line 438
    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_f2

    :cond_13
    goto :goto_27

    :sswitch_14
    const-string v4, "--user"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    move v4, v5

    goto :goto_28

    :sswitch_1e
    const-string v6, "--package"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    goto :goto_28

    :goto_27
    move v4, v2

    :goto_28
    packed-switch v4, :pswitch_data_fc

    .line 450
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: unexpected option: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 452
    return v5

    .line 443
    :pswitch_46
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 444
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 445
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v4, "Error: no package specified"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 446
    return v5

    .line 440
    :pswitch_5a
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 441
    nop

    .line 452
    :cond_67
    goto :goto_2

    .line 456
    :cond_68
    invoke-direct {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->getRemainingArgs(Lcom/android/modules/utils/BasicShellCommandHandler;)Ljava/util/ArrayList;

    move-result-object v2

    .line 457
    .local v2, "domains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_82

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_82

    .line 458
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    .line 459
    const-string v6, "Error: no package name or domain specified"

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 460
    return v5

    .line 463
    :cond_82
    if-eqz v1, :cond_93

    .line 464
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string/jumbo v7, "runSetAppLinksAllowed"

    invoke-direct {p0, v6, v7}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->translateUserId(ILjava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 467
    :cond_93
    new-instance v6, Landroid/util/IndentingPrintWriter;

    .line 468
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v7

    const/16 v8, 0x78

    const-string v9, "  "

    invoke-direct {v6, v7, v9, v8}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 470
    .local v6, "writer":Landroid/util/IndentingPrintWriter;
    :try_start_a0
    invoke-virtual {v6}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 471
    if-eqz v0, :cond_d4

    .line 472
    const-string v7, "all"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_ab
    .catchall {:try_start_a0 .. :try_end_ab} :catchall_e7

    if-eqz v7, :cond_ae

    .line 473
    const/4 v0, 0x0

    .line 477
    :cond_ae
    :try_start_ae
    iget-object v7, p0, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->mCallback:Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;

    invoke-interface {v7, v6, v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;->printOwnersForPackage(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_b3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_ae .. :try_end_b3} :catch_b4
    .catchall {:try_start_ae .. :try_end_b3} :catchall_e7

    .line 482
    goto :goto_d4

    .line 478
    :catch_b4
    move-exception v4

    .line 479
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_b5
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error: package not found: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 480
    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_cf
    .catchall {:try_start_b5 .. :try_end_cf} :catchall_e7

    .line 481
    nop

    .line 489
    invoke-virtual {v6}, Landroid/util/IndentingPrintWriter;->close()V

    .line 481
    return v5

    .line 484
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_d4
    :goto_d4
    :try_start_d4
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_df

    .line 485
    iget-object v5, p0, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->mCallback:Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;

    invoke-interface {v5, v6, v2, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;->printOwnersForDomains(Landroid/util/IndentingPrintWriter;Ljava/util/List;Ljava/lang/Integer;)V

    .line 487
    :cond_df
    invoke-virtual {v6}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_e2
    .catchall {:try_start_d4 .. :try_end_e2} :catchall_e7

    .line 488
    nop

    .line 489
    invoke-virtual {v6}, Landroid/util/IndentingPrintWriter;->close()V

    .line 488
    return v4

    .line 467
    :catchall_e7
    move-exception v4

    :try_start_e8
    invoke-virtual {v6}, Landroid/util/IndentingPrintWriter;->close()V
    :try_end_eb
    .catchall {:try_start_e8 .. :try_end_eb} :catchall_ec

    goto :goto_f0

    :catchall_ec
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_f0
    throw v4

    nop

    :sswitch_data_f2
    .sparse-switch
        0x22819aa6 -> :sswitch_1e
        0x4f7b216b -> :sswitch_14
    .end sparse-switch

    :pswitch_data_fc
    .packed-switch 0x0
        :pswitch_5a
        :pswitch_46
    .end packed-switch
.end method

.method private runGetAppLinks(Lcom/android/modules/utils/BasicShellCommandHandler;)Z
    .registers 11
    .param p1, "commandHandler"    # Lcom/android/modules/utils/BasicShellCommandHandler;

    .line 284
    const/4 v0, 0x0

    .line 287
    .local v0, "userId":Ljava/lang/Integer;
    :goto_1
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "option":Ljava/lang/String;
    const/4 v3, 0x0

    if-eqz v1, :cond_39

    .line 288
    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 289
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 291
    :cond_1e
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: unknown option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 292
    return v3

    .line 296
    :cond_39
    if-nez v0, :cond_3d

    const/4 v1, 0x0

    goto :goto_4c

    :cond_3d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string/jumbo v4, "runGetAppLinks"

    invoke-direct {p0, v1, v4}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->translateUserId(ILjava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_4c
    move-object v0, v1

    .line 298
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 300
    .local v1, "packageName":Ljava/lang/String;
    new-instance v4, Landroid/util/IndentingPrintWriter;

    .line 301
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    const/16 v6, 0x78

    const-string v7, "  "

    invoke-direct {v4, v5, v7, v6}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 303
    .local v4, "writer":Landroid/util/IndentingPrintWriter;
    :try_start_5e
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_95

    .line 305
    :try_start_61
    iget-object v5, p0, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->mCallback:Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;

    invoke-interface {v5, v4, v1, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;->printState(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_66
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_61 .. :try_end_66} :catch_6f
    .catchall {:try_start_61 .. :try_end_66} :catchall_95

    .line 310
    nop

    .line 311
    :try_start_67
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_95

    .line 312
    const/4 v3, 0x1

    .line 313
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->close()V

    .line 312
    return v3

    .line 306
    :catch_6f
    move-exception v5

    .line 307
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_70
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error: package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " unavailable"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_90
    .catchall {:try_start_70 .. :try_end_90} :catchall_95

    .line 309
    nop

    .line 313
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->close()V

    .line 309
    return v3

    .line 300
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_95
    move-exception v3

    :try_start_96
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->close()V
    :try_end_99
    .catchall {:try_start_96 .. :try_end_99} :catchall_9a

    goto :goto_9e

    :catchall_9a
    move-exception v5

    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9e
    throw v3
.end method

.method private runResetAppLinks(Lcom/android/modules/utils/BasicShellCommandHandler;)Z
    .registers 8
    .param p1, "commandHandler"    # Lcom/android/modules/utils/BasicShellCommandHandler;

    .line 318
    const/4 v0, 0x0

    .line 321
    .local v0, "userId":Ljava/lang/Integer;
    :goto_1
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "option":Ljava/lang/String;
    const/4 v3, 0x0

    if-eqz v1, :cond_39

    .line 322
    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 323
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 325
    :cond_1e
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: unknown option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 326
    return v3

    .line 330
    :cond_39
    if-nez v0, :cond_3d

    const/4 v1, 0x0

    goto :goto_4c

    :cond_3d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string/jumbo v4, "runResetAppLinks"

    invoke-direct {p0, v1, v4}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->translateUserId(ILjava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_4c
    move-object v0, v1

    .line 333
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->peekNextArg()Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, "pkgNameArg":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 335
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "Error: no package specified"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 336
    return v3

    .line 337
    :cond_61
    const-string v3, "all"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 338
    const/4 v3, 0x0

    .local v3, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_73

    .line 340
    .end local v3    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6b
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->peekRemainingArgs()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 343
    .restart local v3    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_73
    if-eqz v0, :cond_7f

    .line 344
    iget-object v4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->mCallback:Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v3, v5}, Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;->clearUserStates(Ljava/util/List;I)V

    goto :goto_84

    .line 346
    :cond_7f
    iget-object v4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->mCallback:Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;

    invoke-interface {v4, v3}, Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;->clearDomainVerificationState(Ljava/util/List;)V

    .line 349
    :goto_84
    const/4 v4, 0x1

    return v4
.end method

.method private runSetAppLinks(Lcom/android/modules/utils/BasicShellCommandHandler;)Z
    .registers 12
    .param p1, "commandHandler"    # Lcom/android/modules/utils/BasicShellCommandHandler;

    .line 152
    const/4 v0, 0x0

    .line 155
    .local v0, "packageName":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "option":Ljava/lang/String;
    const/4 v3, 0x0

    if-eqz v1, :cond_31

    .line 156
    const-string v1, "--package"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 157
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 159
    :cond_16
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: unknown option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 160
    return v3

    .line 164
    :cond_31
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 165
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v4, "Error: no package specified"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 166
    return v3

    .line 167
    :cond_41
    const-string v1, "all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 168
    const/4 v0, 0x0

    .line 171
    :cond_4a
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 173
    .local v4, "state":Ljava/lang/String;
    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x1

    sparse-switch v6, :sswitch_data_116

    :cond_57
    goto :goto_a7

    :sswitch_58
    const-string v6, "STATE_DENIED"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_57

    const/4 v5, 0x6

    goto :goto_a7

    :sswitch_62
    const-string v6, "STATE_NO_RESPONSE"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_57

    move v5, v3

    goto :goto_a7

    :sswitch_6c
    const-string v6, "STATE_SUCCESS"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_57

    const/4 v5, 0x2

    goto :goto_a7

    :sswitch_76
    const-string v6, "3"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_57

    const/4 v5, 0x7

    goto :goto_a7

    :sswitch_80
    const-string v6, "2"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_57

    const/4 v5, 0x5

    goto :goto_a7

    :sswitch_8a
    const-string v6, "1"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_57

    const/4 v5, 0x3

    goto :goto_a7

    :sswitch_94
    const-string v6, "0"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_57

    move v5, v7

    goto :goto_a7

    :sswitch_9e
    const-string v6, "STATE_APPROVED"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_57

    const/4 v5, 0x4

    :goto_a7
    packed-switch v5, :pswitch_data_138

    .line 191
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid state option: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 192
    return v3

    .line 188
    :pswitch_c5
    const/4 v5, 0x3

    .line 189
    .local v5, "stateInt":I
    goto :goto_cd

    .line 184
    .end local v5    # "stateInt":I
    :pswitch_c7
    const/4 v5, 0x2

    .line 185
    .restart local v5    # "stateInt":I
    goto :goto_cd

    .line 180
    .end local v5    # "stateInt":I
    :pswitch_c9
    const/4 v5, 0x1

    .line 181
    .restart local v5    # "stateInt":I
    goto :goto_cd

    .line 176
    .end local v5    # "stateInt":I
    :pswitch_cb
    const/4 v5, 0x0

    .line 177
    .restart local v5    # "stateInt":I
    nop

    .line 195
    :goto_cd
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->getRemainingArgs(Lcom/android/modules/utils/BasicShellCommandHandler;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 196
    .local v6, "domains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v6}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_e6

    .line 197
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v7, "No domains specified"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 198
    return v3

    .line 201
    :cond_e6
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-ne v8, v7, :cond_f3

    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f3

    .line 202
    const/4 v6, 0x0

    .line 206
    :cond_f3
    :try_start_f3
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->mCallback:Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;

    invoke-interface {v1, v0, v5, v6}, Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;->setDomainVerificationStatusInternal(Ljava/lang/String;ILandroid/util/ArraySet;)V
    :try_end_f8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f3 .. :try_end_f8} :catch_fa

    .line 211
    nop

    .line 212
    return v7

    .line 208
    :catch_fa
    move-exception v1

    .line 209
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package not found: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 210
    return v3

    :sswitch_data_116
    .sparse-switch
        -0x6077d53b -> :sswitch_9e
        0x30 -> :sswitch_94
        0x31 -> :sswitch_8a
        0x32 -> :sswitch_80
        0x33 -> :sswitch_76
        0xf723e15 -> :sswitch_6c
        0x1cc39e31 -> :sswitch_62
        0x1fd8ef29 -> :sswitch_58
    .end sparse-switch

    :pswitch_data_138
    .packed-switch 0x0
        :pswitch_cb
        :pswitch_cb
        :pswitch_c9
        :pswitch_c9
        :pswitch_c7
        :pswitch_c7
        :pswitch_c5
        :pswitch_c5
    .end packed-switch
.end method

.method private runSetAppLinksAllowed(Lcom/android/modules/utils/BasicShellCommandHandler;)Z
    .registers 12
    .param p1, "commandHandler"    # Lcom/android/modules/utils/BasicShellCommandHandler;

    .line 378
    const/4 v0, 0x0

    .line 379
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 381
    .local v1, "userId":Ljava/lang/Integer;
    :goto_2
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "option":Ljava/lang/String;
    const/4 v4, 0x0

    if-eqz v2, :cond_47

    .line 382
    const-string v2, "--package"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 383
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArg()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 384
    :cond_17
    const-string v2, "--user"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 385
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2

    .line 387
    :cond_2c
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: unexpected option: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 388
    return v4

    .line 392
    :cond_47
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 393
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v5, "Error: no package specified"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 394
    return v4

    .line 395
    :cond_57
    const-string v2, "all"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 396
    const/4 v0, 0x0

    .line 399
    :cond_60
    if-nez v1, :cond_6c

    .line 400
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v5, "Error: user ID not specified"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 401
    return v4

    .line 404
    :cond_6c
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 405
    .local v2, "allowedArg":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_80

    .line 406
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    const-string v6, "Error: allowed setting not specified"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 407
    return v4

    .line 412
    :cond_80
    :try_start_80
    invoke-direct {p0, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->parseEnabled(Ljava/lang/String;)Z

    move-result v5
    :try_end_84
    .catch Ljava/lang/IllegalArgumentException; {:try_start_80 .. :try_end_84} :catch_bc

    .line 417
    .local v5, "allowed":Z
    nop

    .line 419
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string/jumbo v7, "runSetAppLinksAllowed"

    invoke-direct {p0, v6, v7}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->translateUserId(ILjava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 422
    :try_start_94
    iget-object v6, p0, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->mCallback:Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;

    .line 423
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 422
    invoke-interface {v6, v0, v5, v7}, Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;->setDomainVerificationLinkHandlingAllowedInternal(Ljava/lang/String;ZI)V
    :try_end_9d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_94 .. :try_end_9d} :catch_a0

    .line 427
    nop

    .line 429
    const/4 v4, 0x1

    return v4

    .line 424
    :catch_a0
    move-exception v6

    .line 425
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package not found: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 426
    return v4

    .line 413
    .end local v5    # "allowed":Z
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_bc
    move-exception v5

    .line 414
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error: invalid allowed setting: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 415
    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 416
    return v4
.end method

.method private runSetAppLinksUserState(Lcom/android/modules/utils/BasicShellCommandHandler;)Z
    .registers 13
    .param p1, "commandHandler"    # Lcom/android/modules/utils/BasicShellCommandHandler;

    .line 217
    const/4 v0, 0x0

    .line 218
    .local v0, "userId":Ljava/lang/Integer;
    const/4 v1, 0x0

    .line 221
    .local v1, "packageName":Ljava/lang/String;
    :goto_2
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "option":Ljava/lang/String;
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_59

    .line 222
    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_10c

    :cond_13
    goto :goto_27

    :sswitch_14
    const-string v4, "--user"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    move v4, v5

    goto :goto_28

    :sswitch_1e
    const-string v6, "--package"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    goto :goto_28

    :goto_27
    move v4, v2

    :goto_28
    packed-switch v4, :pswitch_data_116

    .line 230
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: unknown option: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 231
    return v5

    .line 227
    :pswitch_46
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 228
    goto :goto_58

    .line 224
    :pswitch_4b
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 225
    nop

    .line 231
    :goto_58
    goto :goto_2

    .line 235
    :cond_59
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 236
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v4, "Error: no package specified"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 237
    return v5

    .line 240
    :cond_69
    if-nez v0, :cond_75

    .line 241
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v4, "Error: User ID not specified"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 242
    return v5

    .line 245
    :cond_75
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string/jumbo v6, "runSetAppLinksUserState"

    invoke-direct {p0, v2, v6}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->translateUserId(ILjava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 247
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 248
    .local v2, "enabledArg":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_98

    .line 249
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v6, "Error: enabled param not specified"

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 250
    return v5

    .line 255
    :cond_98
    :try_start_98
    invoke-direct {p0, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->parseEnabled(Ljava/lang/String;)Z

    move-result v6
    :try_end_9c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_98 .. :try_end_9c} :catch_ec

    .line 260
    .local v6, "enabled":Z
    nop

    .line 262
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->getRemainingArgs(Lcom/android/modules/utils/BasicShellCommandHandler;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 263
    .local v7, "domains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v7}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_b6

    .line 264
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v8, "No domains specified"

    invoke-virtual {v4, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 265
    return v5

    .line 268
    :cond_b6
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-ne v8, v4, :cond_c5

    const-string v8, "all"

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c5

    .line 269
    const/4 v7, 0x0

    .line 273
    :cond_c5
    :try_start_c5
    iget-object v8, p0, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->mCallback:Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v8, v9, v1, v6, v7}, Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;->setDomainVerificationUserSelectionInternal(ILjava/lang/String;ZLandroid/util/ArraySet;)V
    :try_end_ce
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c5 .. :try_end_ce} :catch_d0

    .line 278
    nop

    .line 279
    return v4

    .line 275
    :catch_d0
    move-exception v4

    .line 276
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package not found: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 277
    return v5

    .line 256
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6    # "enabled":Z
    .end local v7    # "domains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catch_ec
    move-exception v4

    .line 257
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error: invalid enabled param: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 258
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 259
    return v5

    :sswitch_data_10c
    .sparse-switch
        0x22819aa6 -> :sswitch_1e
        0x4f7b216b -> :sswitch_14
    .end sparse-switch

    :pswitch_data_116
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_46
    .end packed-switch
.end method

.method private runVerifyAppLinks(Lcom/android/modules/utils/BasicShellCommandHandler;)Z
    .registers 7
    .param p1, "commandHandler"    # Lcom/android/modules/utils/BasicShellCommandHandler;

    .line 354
    const/4 v0, 0x0

    .line 356
    .local v0, "reVerify":Z
    :goto_1
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "option":Ljava/lang/String;
    if-eqz v1, :cond_2e

    .line 357
    const-string v1, "--re-verify"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 358
    const/4 v0, 0x1

    goto :goto_1

    .line 360
    :cond_12
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 361
    const/4 v1, 0x0

    return v1

    .line 365
    :cond_2e
    const/4 v1, 0x0

    .line 366
    .local v1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 367
    .local v3, "pkgNameArg":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3d

    .line 368
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 371
    :cond_3d
    iget-object v4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->mCallback:Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;

    invoke-interface {v4, v1, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;->verifyPackages(Ljava/util/List;Z)V

    .line 373
    const/4 v4, 0x1

    return v4
.end method

.method private translateUserId(ILjava/lang/String;)I
    .registers 10
    .param p1, "userId"    # I
    .param p2, "logContext"    # Ljava/lang/String;

    .line 503
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-string/jumbo v6, "pm command"

    move v2, p1

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public printHelp(Ljava/io/PrintWriter;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 54
    const-string v0, "  get-app-links [--user <USER_ID>] [<PACKAGE>]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 55
    const-string v0, "    Prints the domain verification state for the given package, or for all"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 56
    const-string v0, "    packages if none is specified. State codes are defined as follows:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 57
    const-string v0, "        - none: nothing has been recorded for this domain"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 58
    const-string v0, "        - verified: the domain has been successfully verified"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 59
    const-string v0, "        - approved: force approved, usually through shell"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 60
    const-string v0, "        - denied: force denied, usually through shell"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 61
    const-string v0, "        - migrated: preserved verification from a legacy response"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 62
    const-string v0, "        - restored: preserved verification from a user data restore"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 63
    const-string v0, "        - legacy_failure: rejected by a legacy verifier, unknown reason"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 64
    const-string v0, "        - system_configured: automatically approved by the device config"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    const-string v0, "        - >= 1024: Custom error code which is specific to the device verifier"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 66
    const-string v0, "      --user <USER_ID>: include user selections (includes all domains, not"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 67
    const-string v0, "        just autoVerify ones)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    const-string v0, "  reset-app-links [--user <USER_ID>] [<PACKAGE>]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 69
    const-string v0, "    Resets domain verification state for the given package, or for all"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 70
    const-string v0, "    packages if none is specified."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 71
    const-string v0, "      --user <USER_ID>: clear user selection state instead; note this means"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    const-string v0, "        domain verification state will NOT be cleared"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 73
    const-string v0, "      <PACKAGE>: the package to reset, or \"all\" to reset all packages"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 74
    const-string v0, "  verify-app-links [--re-verify] [<PACKAGE>]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    const-string v0, "    Broadcasts a verification request for the given package, or for all"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    const-string v0, "    packages if none is specified. Only sends if the package has previously"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    const-string v0, "    not recorded a response."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    const-string v0, "      --re-verify: send even if the package has recorded a response"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    const-string v0, "  set-app-links [--package <PACKAGE>] <STATE> <DOMAINS>..."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    const-string v0, "    Manually set the state of a domain for a package. The domain must be"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    const-string v0, "    declared by the package as autoVerify for this to work. This command"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    const-string v0, "    will not report a failure for domains that could not be applied."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    const-string v0, "      --package <PACKAGE>: the package to set, or \"all\" to set all packages"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    const-string v1, "      <STATE>: the code to set the domains to, valid values are:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    const-string v1, "        STATE_NO_RESPONSE (0): reset as if no response was ever recorded."

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    const-string v1, "        STATE_SUCCESS (1): treat domain as successfully verified by domain."

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    const-string v1, "          verification agent. Note that the domain verification agent can"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    const-string v1, "          override this."

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    const-string v1, "        STATE_APPROVED (2): treat domain as always approved, preventing the"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    const-string v1, "           domain verification agent from changing it."

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    const-string v1, "        STATE_DENIED (3): treat domain as always denied, preveting the domain"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    const-string v1, "          verification agent from changing it."

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    const-string v1, "      <DOMAINS>: space separated list of domains to change, or \"all\" to"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    const-string v2, "        change every domain."

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    const-string v3, "  set-app-links-user-selection --user <USER_ID> [--package <PACKAGE>]"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    const-string v3, "      <ENABLED> <DOMAINS>..."

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    const-string v4, "    Manually set the state of a host user selection for a package. The domain"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    const-string v4, "    must be declared by the package for this to work. This command will not"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    const-string v4, "    report a failure for domains that could not be applied."

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    const-string v4, "      --user <USER_ID>: the user to change selections for"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    const-string v5, "      --package <PACKAGE>: the package to set"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    const-string v5, "      <ENABLED>: whether or not to approve the domain"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    const-string v1, "  set-app-links-allowed --user <USER_ID> [--package <PACKAGE>] <ALLOWED>"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 107
    const-string v1, "    Toggle the auto verified link handling setting for a package."

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    const-string v0, "        packages will be reset if no one package is specified."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    const-string v0, "      <ALLOWED>: true to allow the package to open auto verified links, false"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 112
    const-string v0, "        to disable"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    const-string v0, "  get-app-link-owners [--user <USER_ID>] [--package <PACKAGE>] [<DOMAINS>]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    const-string v0, "    Print the owners for a specific domain for a given user in low to high"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    const-string v0, "    priority order."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    const-string v0, "      --user <USER_ID>: the user to query for"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    const-string v0, "      --package <PACKAGE>: optionally also print for all web domains declared"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    const-string v0, "        by a package, or \"all\" to print all packages"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    const-string v0, "      --<DOMAINS>: space separated list of domains to query for"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public runCommand(Lcom/android/modules/utils/BasicShellCommandHandler;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 4
    .param p1, "commandHandler"    # Lcom/android/modules/utils/BasicShellCommandHandler;
    .param p2, "command"    # Ljava/lang/String;

    .line 129
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_98

    :cond_7
    goto :goto_53

    :sswitch_8
    const-string/jumbo v0, "verify-app-links"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_54

    :sswitch_13
    const-string v0, "get-app-link-owners"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto :goto_54

    :sswitch_1d
    const-string/jumbo v0, "reset-app-links"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_54

    :sswitch_28
    const-string/jumbo v0, "set-app-links"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_54

    :sswitch_33
    const-string/jumbo v0, "set-app-links-allowed"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto :goto_54

    :sswitch_3e
    const-string/jumbo v0, "set-app-links-user-selection"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_54

    :sswitch_49
    const-string v0, "get-app-links"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_54

    :goto_53
    const/4 v0, -0x1

    :goto_54
    packed-switch v0, :pswitch_data_b6

    .line 146
    const/4 v0, 0x0

    return-object v0

    .line 143
    :pswitch_59
    invoke-direct {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->runGetAppLinkOwners(Lcom/android/modules/utils/BasicShellCommandHandler;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 141
    :pswitch_62
    invoke-direct {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->runSetAppLinksAllowed(Lcom/android/modules/utils/BasicShellCommandHandler;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 139
    :pswitch_6b
    invoke-direct {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->runSetAppLinksUserState(Lcom/android/modules/utils/BasicShellCommandHandler;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 137
    :pswitch_74
    invoke-direct {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->runSetAppLinks(Lcom/android/modules/utils/BasicShellCommandHandler;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 135
    :pswitch_7d
    invoke-direct {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->runVerifyAppLinks(Lcom/android/modules/utils/BasicShellCommandHandler;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 133
    :pswitch_86
    invoke-direct {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->runResetAppLinks(Lcom/android/modules/utils/BasicShellCommandHandler;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 131
    :pswitch_8f
    invoke-direct {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->runGetAppLinks(Lcom/android/modules/utils/BasicShellCommandHandler;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :sswitch_data_98
    .sparse-switch
        -0x7f8f40aa -> :sswitch_49
        -0x7cbfd22b -> :sswitch_3e
        -0x6e528fc3 -> :sswitch_33
        -0x516af29e -> :sswitch_28
        -0x313515f1 -> :sswitch_1d
        0x45339730 -> :sswitch_13
        0x4f30e8b9 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_b6
    .packed-switch 0x0
        :pswitch_8f
        :pswitch_86
        :pswitch_7d
        :pswitch_74
        :pswitch_6b
        :pswitch_62
        :pswitch_59
    .end packed-switch
.end method
