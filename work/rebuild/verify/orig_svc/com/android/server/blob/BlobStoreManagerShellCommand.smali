.class public Lcom/android/server/blob/BlobStoreManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "BlobStoreManagerShellCommand.java"


# instance fields
.field public final mService:Lcom/android/server/blob/BlobStoreManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/blob/BlobStoreManagerService;)V
    .registers 2

    .line 30
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/server/blob/BlobStoreManagerShellCommand;->mService:Lcom/android/server/blob/BlobStoreManagerService;

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 5

    if-nez p1, :cond_8

    const/4 p1, 0x0

    .line 37
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 39
    :cond_8
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_70

    goto :goto_4f

    :sswitch_18
    const-string v1, "idle-maintenance"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto :goto_4f

    :cond_21
    const/4 v2, 0x4

    goto :goto_4f

    :sswitch_23
    const-string/jumbo v1, "query-blob-existence"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    goto :goto_4f

    :cond_2d
    const/4 v2, 0x3

    goto :goto_4f

    :sswitch_2f
    const-string v1, "clear-all-blobs"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    goto :goto_4f

    :cond_38
    const/4 v2, 0x2

    goto :goto_4f

    :sswitch_3a
    const-string v1, "clear-all-sessions"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    goto :goto_4f

    :cond_43
    const/4 v2, 0x1

    goto :goto_4f

    :sswitch_45
    const-string v1, "delete-blob"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    goto :goto_4f

    :cond_4e
    const/4 v2, 0x0

    :goto_4f
    packed-switch v2, :pswitch_data_86

    .line 52
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 48
    :pswitch_57
    invoke-virtual {p0, v0}, Lcom/android/server/blob/BlobStoreManagerShellCommand;->runIdleMaintenance(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 50
    :pswitch_5c
    invoke-virtual {p0, v0}, Lcom/android/server/blob/BlobStoreManagerShellCommand;->runQueryBlobExistence(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 44
    :pswitch_61
    invoke-virtual {p0, v0}, Lcom/android/server/blob/BlobStoreManagerShellCommand;->runClearAllBlobs(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 42
    :pswitch_66
    invoke-virtual {p0, v0}, Lcom/android/server/blob/BlobStoreManagerShellCommand;->runClearAllSessions(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 46
    :pswitch_6b
    invoke-virtual {p0, v0}, Lcom/android/server/blob/BlobStoreManagerShellCommand;->runDeleteBlob(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    :sswitch_data_70
    .sparse-switch
        -0x45a66181 -> :sswitch_45
        -0x39e20d37 -> :sswitch_3a
        -0xf634e36 -> :sswitch_2f
        0x2a7987b7 -> :sswitch_23
        0x6ef5269a -> :sswitch_18
    .end sparse-switch

    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_6b
        :pswitch_66
        :pswitch_61
        :pswitch_5c
        :pswitch_57
    .end packed-switch
.end method

.method public onHelp()V
    .registers 4

    .line 108
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 109
    const-string v0, "BlobStore service (blob_store) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    const-string v0, "help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 113
    const-string v0, "clear-all-sessions [-u | --user USER_ID]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    const-string v0, "    Remove all sessions."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    const-string v0, "    Options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    const-string v1, "      -u or --user: specify which user\'s sessions to be removed."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    const-string v1, "                    If not specified, sessions in all users are removed."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 119
    const-string v1, "clear-all-blobs [-u | --user USER_ID]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 120
    const-string v1, "    Remove all blobs."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 122
    const-string v1, "      -u or --user: specify which user\'s blobs to be removed."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    const-string v1, "                    If not specified, blobs in all users are removed."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 124
    const-string v2, "delete-blob [-u | --user USER_ID] [--digest DIGEST] [--expiry EXPIRY_TIME] [--label LABEL] [--tag TAG]"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 126
    const-string v2, "    Delete a blob."

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 128
    const-string v0, "      -u or --user: specify which user\'s blobs to be removed;"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 130
    const-string v0, "      --digest: Base64 encoded digest of the blob to delete."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 131
    const-string v0, "      --expiry: Expiry time of the blob to delete, in milliseconds."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 132
    const-string v0, "      --label: Label of the blob to delete."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 133
    const-string v0, "      --tag: Tag of the blob to delete."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    const-string v0, "idle-maintenance"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 135
    const-string v0, "    Run idle maintenance which takes care of removing stale data."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    const-string/jumbo v0, "query-blob-existence [-b BLOB_ID] [-u | --user USER_ID]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 137
    const-string v0, "    Prints 1 if blob exists, otherwise 0."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final parseOptions(Ljava/io/PrintWriter;Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;)I
    .registers 7

    .line 143
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d3

    .line 144
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_e0

    :goto_12
    move v1, v3

    goto :goto_6a

    :sswitch_14
    const-string v1, "--user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_12

    :cond_1d
    const/4 v1, 0x7

    goto :goto_6a

    :sswitch_1f
    const-string v1, "--algo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    goto :goto_12

    :cond_28
    const/4 v1, 0x6

    goto :goto_6a

    :sswitch_2a
    const-string v1, "--expiry"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    goto :goto_12

    :cond_33
    const/4 v1, 0x5

    goto :goto_6a

    :sswitch_35
    const-string v1, "--digest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    goto :goto_12

    :cond_3e
    const/4 v1, 0x4

    goto :goto_6a

    :sswitch_40
    const-string v1, "--tag"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    goto :goto_12

    :cond_49
    const/4 v1, 0x3

    goto :goto_6a

    :sswitch_4b
    const-string v1, "-u"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_54

    goto :goto_12

    :cond_54
    const/4 v1, 0x2

    goto :goto_6a

    :sswitch_56
    const-string v1, "-b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f

    goto :goto_12

    :cond_5f
    const/4 v1, 0x1

    goto :goto_6a

    :sswitch_61
    const-string v2, "--label"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6a

    goto :goto_12

    :cond_6a
    :goto_6a
    packed-switch v1, :pswitch_data_102

    .line 168
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Error: unknown option \'"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 150
    :pswitch_87
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->algorithm:Ljava/lang/String;

    goto/16 :goto_0

    .line 159
    :pswitch_8f
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p2, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->expiryTimeMillis:J

    goto/16 :goto_0

    .line 153
    :pswitch_9b
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p2, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->digest:[B

    goto/16 :goto_0

    .line 162
    :pswitch_ab
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->tag:Ljava/lang/String;

    goto/16 :goto_0

    .line 147
    :pswitch_b3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->userId:I

    goto/16 :goto_0

    .line 165
    :pswitch_bf
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p2, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->blobId:J

    goto/16 :goto_0

    .line 156
    :pswitch_cb
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->label:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 172
    :cond_d3
    iget p0, p2, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->userId:I

    const/4 p1, -0x2

    if-ne p0, p1, :cond_de

    .line 173
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p0

    iput p0, p2, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->userId:I

    :cond_de
    return v1

    nop

    :sswitch_data_e0
    .sparse-switch
        -0x609e02ac -> :sswitch_61
        0x5d5 -> :sswitch_56
        0x5e8 -> :sswitch_4b
        0x29055fa -> :sswitch_40
        0x3fa9eb64 -> :sswitch_35
        0x42364ad3 -> :sswitch_2a
        0x4f71eff3 -> :sswitch_1f
        0x4f7b216b -> :sswitch_14
    .end sparse-switch

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_cb
        :pswitch_bf
        :pswitch_b3
        :pswitch_ab
        :pswitch_9b
        :pswitch_8f
        :pswitch_87
        :pswitch_b3
    .end packed-switch
.end method

.method public final runClearAllBlobs(Ljava/io/PrintWriter;)I
    .registers 4

    .line 69
    new-instance v0, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;-><init>(Lcom/android/server/blob/BlobStoreManagerShellCommand-IA;)V

    const/4 v1, -0x1

    .line 70
    iput v1, v0, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->userId:I

    .line 72
    invoke-virtual {p0, p1, v0}, Lcom/android/server/blob/BlobStoreManagerShellCommand;->parseOptions(Ljava/io/PrintWriter;Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;)I

    move-result p1

    if-gez p1, :cond_10

    return v1

    .line 76
    :cond_10
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerShellCommand;->mService:Lcom/android/server/blob/BlobStoreManagerService;

    iget p1, v0, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->userId:I

    invoke-virtual {p0, p1}, Lcom/android/server/blob/BlobStoreManagerService;->runClearAllBlobs(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runClearAllSessions(Ljava/io/PrintWriter;)I
    .registers 4

    .line 57
    new-instance v0, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;-><init>(Lcom/android/server/blob/BlobStoreManagerShellCommand-IA;)V

    const/4 v1, -0x1

    .line 58
    iput v1, v0, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->userId:I

    .line 60
    invoke-virtual {p0, p1, v0}, Lcom/android/server/blob/BlobStoreManagerShellCommand;->parseOptions(Ljava/io/PrintWriter;Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;)I

    move-result p1

    if-gez p1, :cond_10

    return v1

    .line 64
    :cond_10
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerShellCommand;->mService:Lcom/android/server/blob/BlobStoreManagerService;

    iget p1, v0, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->userId:I

    invoke-virtual {p0, p1}, Lcom/android/server/blob/BlobStoreManagerService;->runClearAllSessions(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runDeleteBlob(Ljava/io/PrintWriter;)I
    .registers 4

    .line 81
    new-instance v0, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;-><init>(Lcom/android/server/blob/BlobStoreManagerShellCommand-IA;)V

    .line 83
    invoke-virtual {p0, p1, v0}, Lcom/android/server/blob/BlobStoreManagerShellCommand;->parseOptions(Ljava/io/PrintWriter;Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;)I

    move-result p1

    if-gez p1, :cond_e

    const/4 p0, -0x1

    return p0

    .line 87
    :cond_e
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerShellCommand;->mService:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-virtual {v0}, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->getBlobHandle()Landroid/app/blob/BlobHandle;

    move-result-object p1

    iget v0, v0, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->userId:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/blob/BlobStoreManagerService;->deleteBlob(Landroid/app/blob/BlobHandle;I)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runIdleMaintenance(Ljava/io/PrintWriter;)I
    .registers 2

    .line 92
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerShellCommand;->mService:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService;->runIdleMaintenance()V

    const/4 p0, 0x0

    return p0
.end method

.method public final runQueryBlobExistence(Ljava/io/PrintWriter;)I
    .registers 5

    .line 97
    new-instance v0, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;-><init>(Lcom/android/server/blob/BlobStoreManagerShellCommand-IA;)V

    .line 98
    invoke-virtual {p0, p1, v0}, Lcom/android/server/blob/BlobStoreManagerShellCommand;->parseOptions(Ljava/io/PrintWriter;Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;)I

    move-result v1

    if-gez v1, :cond_e

    const/4 p0, -0x1

    return p0

    .line 102
    :cond_e
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerShellCommand;->mService:Lcom/android/server/blob/BlobStoreManagerService;

    iget-wide v1, v0, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->blobId:J

    iget v0, v0, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->userId:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/blob/BlobStoreManagerService;->isBlobAvailable(JI)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    const/4 p0, 0x0

    return p0
.end method
