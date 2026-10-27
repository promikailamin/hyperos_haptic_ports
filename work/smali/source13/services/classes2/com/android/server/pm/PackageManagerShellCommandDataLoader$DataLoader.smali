.class Lcom/android/server/pm/PackageManagerShellCommandDataLoader$DataLoader;
.super Ljava/lang/Object;
.source "PackageManagerShellCommandDataLoader.java"

# interfaces
.implements Landroid/service/dataloader/DataLoaderService$DataLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerShellCommandDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataLoader"
.end annotation


# instance fields
.field private mConnector:Landroid/service/dataloader/DataLoaderService$FileSystemConnector;

.field private mParams:Landroid/content/pm/DataLoaderParams;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$DataLoader;->mParams:Landroid/content/pm/DataLoaderParams;

    .line 247
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$DataLoader;->mConnector:Landroid/service/dataloader/DataLoaderService$FileSystemConnector;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerShellCommandDataLoader$DataLoader-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$DataLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/content/pm/DataLoaderParams;Landroid/service/dataloader/DataLoaderService$FileSystemConnector;)Z
    .registers 4
    .param p1, "dataLoaderParams"    # Landroid/content/pm/DataLoaderParams;
    .param p2, "connector"    # Landroid/service/dataloader/DataLoaderService$FileSystemConnector;

    .line 252
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$DataLoader;->mParams:Landroid/content/pm/DataLoaderParams;

    .line 253
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$DataLoader;->mConnector:Landroid/service/dataloader/DataLoaderService$FileSystemConnector;

    .line 254
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepareImage(Ljava/util/Collection;Ljava/util/Collection;)Z
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/content/pm/InstallationFile;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 260
    .local p1, "addedFiles":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/InstallationFile;>;"
    .local p2, "removedFiles":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$DataLoader;->mParams:Landroid/content/pm/DataLoaderParams;

    invoke-virtual {v0}, Landroid/content/pm/DataLoaderParams;->getArguments()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->lookupShellCommand(Ljava/lang/String;)Landroid/os/ShellCommand;

    move-result-object v2

    .line 261
    .local v2, "shellCommand":Landroid/os/ShellCommand;
    const/4 v3, 0x0

    const-string v4, "PackageManagerShellCommandDataLoader"

    if-nez v2, :cond_17

    .line 262
    const-string v0, "Missing shell command."

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return v3

    .line 266
    :cond_17
    :try_start_17
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_aa

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/InstallationFile;

    .line 267
    .local v5, "file":Landroid/content/pm/InstallationFile;
    invoke-virtual {v5}, Landroid/content/pm/InstallationFile;->getMetadata()[B

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->fromByteArray([B)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    move-result-object v6

    .line 268
    .local v6, "metadata":Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;
    if-nez v6, :cond_4c

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid metadata for file: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    return v3

    .line 272
    :cond_4c
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->getMode()B

    move-result v7
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_50} :catch_ac

    packed-switch v7, :pswitch_data_b4

    .line 290
    goto :goto_8f

    .line 279
    :pswitch_54
    const/4 v7, 0x0

    .line 281
    .local v7, "incomingFd":Landroid/os/ParcelFileDescriptor;
    :try_start_55
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->getData()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->getLocalFilePFD(Landroid/os/ShellCommand;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v15
    :try_end_5d
    .catchall {:try_start_55 .. :try_end_5d} :catchall_74

    .line 282
    .end local v7    # "incomingFd":Landroid/os/ParcelFileDescriptor;
    .local v15, "incomingFd":Landroid/os/ParcelFileDescriptor;
    :try_start_5d
    iget-object v9, v1, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$DataLoader;->mConnector:Landroid/service/dataloader/DataLoaderService$FileSystemConnector;

    invoke-virtual {v5}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    move-result-object v10

    const-wide/16 v11, 0x0

    invoke-virtual {v15}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v13

    invoke-virtual/range {v9 .. v15}, Landroid/service/dataloader/DataLoaderService$FileSystemConnector;->writeData(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V
    :try_end_6c
    .catchall {:try_start_5d .. :try_end_6c} :catchall_71

    .line 285
    :try_start_6c
    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 286
    nop

    .line 287
    goto :goto_8e

    .line 285
    :catchall_71
    move-exception v0

    move-object v7, v15

    goto :goto_75

    .end local v15    # "incomingFd":Landroid/os/ParcelFileDescriptor;
    .restart local v7    # "incomingFd":Landroid/os/ParcelFileDescriptor;
    :catchall_74
    move-exception v0

    :goto_75
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 286
    nop

    .end local v2    # "shellCommand":Landroid/os/ShellCommand;
    .end local p0    # "this":Lcom/android/server/pm/PackageManagerShellCommandDataLoader$DataLoader;
    .end local p1    # "addedFiles":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/InstallationFile;>;"
    .end local p2    # "removedFiles":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    throw v0

    .line 274
    .end local v7    # "incomingFd":Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "shellCommand":Landroid/os/ShellCommand;
    .restart local p0    # "this":Lcom/android/server/pm/PackageManagerShellCommandDataLoader$DataLoader;
    .restart local p1    # "addedFiles":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/InstallationFile;>;"
    .restart local p2    # "removedFiles":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :pswitch_7a
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->getStdInPFD(Landroid/os/ShellCommand;)Landroid/os/ParcelFileDescriptor;

    move-result-object v14

    .line 275
    .local v14, "inFd":Landroid/os/ParcelFileDescriptor;
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$DataLoader;->mConnector:Landroid/service/dataloader/DataLoaderService$FileSystemConnector;

    invoke-virtual {v5}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    move-result-object v9

    const-wide/16 v10, 0x0

    invoke-virtual {v5}, Landroid/content/pm/InstallationFile;->getLengthBytes()J

    move-result-wide v12

    invoke-virtual/range {v8 .. v14}, Landroid/service/dataloader/DataLoaderService$FileSystemConnector;->writeData(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V

    .line 276
    nop

    .line 293
    .end local v5    # "file":Landroid/content/pm/InstallationFile;
    .end local v6    # "metadata":Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;
    .end local v14    # "inFd":Landroid/os/ParcelFileDescriptor;
    :goto_8e
    goto :goto_1b

    .line 290
    .restart local v5    # "file":Landroid/content/pm/InstallationFile;
    .restart local v6    # "metadata":Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;
    :goto_8f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported metadata mode: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->getMode()B

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_a9} :catch_ac

    .line 291
    return v3

    .line 294
    .end local v5    # "file":Landroid/content/pm/InstallationFile;
    .end local v6    # "metadata":Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;
    :cond_aa
    const/4 v0, 0x1

    return v0

    .line 295
    :catch_ac
    move-exception v0

    .line 296
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "Exception while streaming files"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 297
    return v3

    nop

    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_7a
        :pswitch_54
    .end packed-switch
.end method
