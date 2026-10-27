.class public Lcom/android/server/accessibility/BrailleDisplayConnection$1;
.super Ljava/lang/Object;
.source "BrailleDisplayConnection.java"

# interfaces
.implements Lcom/android/server/accessibility/BrailleDisplayConnection$BrailleDisplayScanner;


# instance fields
.field public final synthetic val$nativeInterface:Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;


# direct methods
.method public static synthetic $r8$lambda$gAVzAwZTottxrrE8vfjrQ-KdaEM(Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;Ljava/lang/Integer;)[B
    .registers 3

    .line 499
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;->getHidrawDescSize(I)I

    move-result v0

    if-lez v0, :cond_13

    .line 501
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1, v0}, Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;->getHidrawDesc(II)[B

    move-result-object p0

    return-object p0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;)V
    .registers 2

    .line 470
    iput-object p1, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$1;->val$nativeInterface:Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceBusType(Ljava/nio/file/Path;)I
    .registers 4

    .line 515
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    iget-object v0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$1;->val$nativeInterface:Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/accessibility/BrailleDisplayConnection$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/android/server/accessibility/BrailleDisplayConnection$1$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/BrailleDisplayConnection$1;->readFromFileDescriptor(Ljava/nio/file/Path;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_1a

    .line 517
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1a
    const/4 p0, -0x1

    return p0
.end method

.method public getDeviceReportDescriptor(Ljava/nio/file/Path;)[B
    .registers 4

    .line 497
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    iget-object v0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$1;->val$nativeInterface:Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;

    new-instance v1, Lcom/android/server/accessibility/BrailleDisplayConnection$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/server/accessibility/BrailleDisplayConnection$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/BrailleDisplayConnection$1;->readFromFileDescriptor(Ljava/nio/file/Path;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public getHidrawNodePaths(Ljava/nio/file/Path;)Ljava/util/Collection;
    .registers 4

    .line 475
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 476
    :try_start_5
    const-string v0, "hidraw*"

    invoke-static {p1, v0}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/DirectoryStream;

    move-result-object p1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_b} :catch_30

    .line 478
    :try_start_b
    invoke-interface {p1}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/file/Path;

    .line 479
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_1f

    goto :goto_f

    :catchall_1f
    move-exception p0

    goto :goto_25

    .line 482
    :cond_21
    :try_start_21
    invoke-interface {p1}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_30

    return-object p0

    :goto_25
    if-eqz p1, :cond_2f

    .line 476
    :try_start_27
    invoke-interface {p1}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2b

    goto :goto_2f

    :catchall_2b
    move-exception p1

    :try_start_2c
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2f
    :goto_2f
    throw p0
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_30} :catch_30

    :catch_30
    const/4 p0, 0x0

    return-object p0
.end method

.method public getName(Ljava/nio/file/Path;)Ljava/lang/String;
    .registers 4

    .line 522
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    iget-object v0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$1;->val$nativeInterface:Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/accessibility/BrailleDisplayConnection$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/android/server/accessibility/BrailleDisplayConnection$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/BrailleDisplayConnection$1;->readFromFileDescriptor(Ljava/nio/file/Path;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getUniqueId(Ljava/nio/file/Path;)Ljava/lang/String;
    .registers 4

    .line 509
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    iget-object v0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$1;->val$nativeInterface:Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/accessibility/BrailleDisplayConnection$1$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/android/server/accessibility/BrailleDisplayConnection$1$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/BrailleDisplayConnection$1;->readFromFileDescriptor(Ljava/nio/file/Path;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final readFromFileDescriptor(Ljava/nio/file/Path;Ljava/util/function/Function;)Ljava/lang/Object;
    .registers 3

    .line 488
    :try_start_0
    new-instance p0, Ljava/io/FileInputStream;

    invoke-interface {p1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_27

    .line 489
    :try_start_9
    invoke-virtual {p0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_1d

    .line 490
    :try_start_19
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_27

    return-object p1

    :catchall_1d
    move-exception p1

    .line 488
    :try_start_1e
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    goto :goto_26

    :catchall_22
    move-exception p0

    :try_start_23
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_26
    throw p1
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_27} :catch_27

    :catch_27
    const/4 p0, 0x0

    return-object p0
.end method
