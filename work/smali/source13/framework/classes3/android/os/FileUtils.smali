.class public final Landroid/os/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/FileUtils$MemoryPipe;,
        Landroid/os/FileUtils$ProgressListener;,
        Landroid/os/FileUtils$NoImagePreloadHolder;
    }
.end annotation


# static fields
.field private static final blacklist CAMERA_DIR_LOWER_CASE:Ljava/lang/String;

.field private static final greylist-max-o COPY_CHECKPOINT_BYTES:J = 0x80000L

.field public static final greylist-max-o S_IRGRP:I = 0x20

.field public static final greylist-max-o S_IROTH:I = 0x4

.field public static final greylist-max-o S_IRUSR:I = 0x100

.field public static final greylist-max-o S_IRWXG:I = 0x38

.field public static final greylist-max-o S_IRWXO:I = 0x7

.field public static final greylist-max-o S_IRWXU:I = 0x1c0

.field public static final greylist-max-o S_IWGRP:I = 0x10

.field public static final greylist-max-o S_IWOTH:I = 0x2

.field public static final greylist-max-o S_IWUSR:I = 0x80

.field public static final greylist-max-o S_IXGRP:I = 0x8

.field public static final greylist-max-o S_IXOTH:I = 0x1

.field public static final greylist-max-o S_IXUSR:I = 0x40

.field private static final greylist-max-o TAG:Ljava/lang/String; = "FileUtils"

.field private static blacklist sEnableCopyOptimizations:Z

.field private static volatile blacklist sMediaProviderAppId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/storage/emulated/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/dcim/camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/FileUtils;->CAMERA_DIR_LOWER_CASE:Ljava/lang/String;

    .line 135
    const/4 v0, 0x1

    sput-boolean v0, Landroid/os/FileUtils;->sEnableCopyOptimizations:Z

    .line 136
    const/4 v0, -0x1

    sput v0, Landroid/os/FileUtils;->sMediaProviderAppId:I

    return-void
.end method

.method private constructor greylist <init>()V
    .registers 1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    return-void
.end method

.method private static greylist-max-o buildFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .param p0, "parent"    # Ljava/io/File;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ext"    # Ljava/lang/String;

    .line 1267
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1268
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    .line 1270
    :cond_c
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static blacklist buildNonUniqueFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .param p0, "parent"    # Ljava/io/File;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;

    .line 1179
    invoke-static {p1, p2}, Landroid/os/FileUtils;->splitFileName(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1180
    .local v0, "parts":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {p0, v1, v2}, Landroid/os/FileUtils;->buildFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o buildUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .param p0, "parent"    # Ljava/io/File;
    .param p1, "displayName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1195
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1196
    .local v0, "lastDot":I
    if-ltz v0, :cond_14

    .line 1197
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1198
    .local v1, "name":Ljava/lang/String;
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "ext":Ljava/lang/String;
    goto :goto_16

    .line 1200
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "ext":Ljava/lang/String;
    :cond_14
    move-object v1, p1

    .line 1201
    .restart local v1    # "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1204
    .restart local v2    # "ext":Ljava/lang/String;
    :goto_16
    invoke-static {p0, v1, v2}, Landroid/os/FileUtils;->buildUniqueFileWithExtension(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    return-object v3
.end method

.method public static greylist-max-o buildUniqueFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .param p0, "parent"    # Ljava/io/File;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1173
    invoke-static {p1, p2}, Landroid/os/FileUtils;->splitFileName(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1174
    .local v0, "parts":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {p0, v1, v2}, Landroid/os/FileUtils;->buildUniqueFileWithExtension(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method private static greylist-max-o buildUniqueFileWithExtension(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 7
    .param p0, "parent"    # Ljava/io/File;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ext"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1145
    invoke-static {p0, p1, p2}, Landroid/os/FileUtils;->buildFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1148
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 1149
    .local v1, "n":I
    :goto_5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 1150
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "n":I
    .local v2, "n":I
    const/16 v3, 0x20

    if-ge v1, v3, :cond_34

    .line 1153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p2}, Landroid/os/FileUtils;->buildFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    move v1, v2

    goto :goto_5

    .line 1151
    :cond_34
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v3, "Failed to create unique file"

    invoke-direct {v1, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1156
    .end local v2    # "n":I
    .restart local v1    # "n":I
    :cond_3c
    return-object v0
.end method

.method public static greylist-max-o buildValidExtFilename(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "name"    # Ljava/lang/String;

    .line 1016
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_47

    const-string v0, "."

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    const-string v0, ".."

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_47

    .line 1019
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1020
    .local v0, "res":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_21
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3d

    .line 1021
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1022
    .local v2, "c":C
    invoke-static {v2}, Landroid/os/FileUtils;->isValidExtFilenameChar(C)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1023
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3a

    .line 1025
    :cond_35
    const/16 v3, 0x5f

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1020
    .end local v2    # "c":C
    :goto_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 1028
    .end local v1    # "i":I
    :cond_3d
    const/16 v1, 0xff

    invoke-static {v0, v1}, Landroid/os/FileUtils;->trimFilename(Ljava/lang/StringBuilder;I)V

    .line 1029
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1017
    .end local v0    # "res":Ljava/lang/StringBuilder;
    :cond_47
    :goto_47
    const-string v0, "(invalid)"

    return-object v0
.end method

.method public static greylist-max-o buildValidFatFilename(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "name"    # Ljava/lang/String;

    .line 1069
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_47

    const-string v0, "."

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    const-string v0, ".."

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_47

    .line 1072
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1073
    .local v0, "res":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_21
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3d

    .line 1074
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1075
    .local v2, "c":C
    invoke-static {v2}, Landroid/os/FileUtils;->isValidFatFilenameChar(C)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1076
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3a

    .line 1078
    :cond_35
    const/16 v3, 0x5f

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1073
    .end local v2    # "c":C
    :goto_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 1083
    .end local v1    # "i":I
    :cond_3d
    const/16 v1, 0xff

    invoke-static {v0, v1}, Landroid/os/FileUtils;->trimFilename(Ljava/lang/StringBuilder;I)V

    .line 1084
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1070
    .end local v0    # "res":Ljava/lang/StringBuilder;
    :cond_47
    :goto_47
    const-string v0, "(invalid)"

    return-object v0
.end method

.method public static greylist-max-o bytesToFile(Ljava/lang/String;[B)V
    .registers 6
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "content"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 739
    const-string v0, "/proc/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 740
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWritesMask()I

    move-result v0

    .line 741
    .local v0, "oldMask":I
    :try_start_c
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_26

    .line 742
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_11
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_1c

    .line 743
    :try_start_14
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_26

    .line 744
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 745
    nop

    .line 746
    .end local v0    # "oldMask":I
    goto :goto_36

    .line 741
    .restart local v0    # "oldMask":I
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catchall_1c
    move-exception v2

    :try_start_1d
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_21

    goto :goto_25

    :catchall_21
    move-exception v3

    :try_start_22
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "oldMask":I
    .end local p0    # "filename":Ljava/lang/String;
    .end local p1    # "content":[B
    :goto_25
    throw v2
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_26

    .line 744
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "oldMask":I
    .restart local p0    # "filename":Ljava/lang/String;
    .restart local p1    # "content":[B
    :catchall_26
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 745
    throw v1

    .line 747
    .end local v0    # "oldMask":I
    :cond_2b
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 748
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_30
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_37

    .line 749
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 751
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    :goto_36
    return-void

    .line 747
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    :catchall_37
    move-exception v1

    :try_start_38
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_40

    :catchall_3c
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_40
    throw v1
.end method

.method public static greylist-max-r checksumCrc32(Ljava/io/File;)J
    .registers 7
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 779
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 780
    .local v0, "checkSummer":Ljava/util/zip/CRC32;
    const/4 v1, 0x0

    .line 783
    .local v1, "cis":Ljava/util/zip/CheckedInputStream;
    :try_start_6
    new-instance v2, Ljava/util/zip/CheckedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3, v0}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    move-object v1, v2

    .line 784
    const/16 v2, 0x80

    new-array v2, v2, [B

    .line 785
    .local v2, "buf":[B
    :goto_15
    invoke-virtual {v1, v2}, Ljava/util/zip/CheckedInputStream;->read([B)I

    move-result v3

    if-ltz v3, :cond_1c

    goto :goto_15

    .line 788
    :cond_1c
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v3
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_27

    .line 790
    nop

    .line 792
    :try_start_21
    invoke-virtual {v1}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_25

    .line 794
    goto :goto_26

    .line 793
    :catch_25
    move-exception v5

    .line 788
    :goto_26
    return-wide v3

    .line 790
    .end local v2    # "buf":[B
    :catchall_27
    move-exception v2

    if-eqz v1, :cond_2f

    .line 792
    :try_start_2a
    invoke-virtual {v1}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2e

    .line 794
    goto :goto_2f

    .line 793
    :catch_2e
    move-exception v3

    .line 796
    :cond_2f
    :goto_2f
    throw v2
.end method

.method public static whitelist closeQuietly(Ljava/io/FileDescriptor;)V
    .registers 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1376
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 1377
    return-void
.end method

.method public static whitelist closeQuietly(Ljava/lang/AutoCloseable;)V
    .registers 1
    .param p0, "closeable"    # Ljava/lang/AutoCloseable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1362
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1363
    return-void
.end method

.method public static greylist-max-o contains(Ljava/io/File;Ljava/io/File;)Z
    .registers 4
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "file"    # Ljava/io/File;

    .line 938
    if-eqz p0, :cond_12

    if-nez p1, :cond_5

    goto :goto_12

    .line 939
    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 938
    :cond_12
    :goto_12
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist-max-o contains(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0, "dirPath"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;

    .line 953
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 954
    const/4 v0, 0x1

    return v0

    .line 956
    :cond_8
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 957
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 959
    :cond_21
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist contains(Ljava/util/Collection;Ljava/io/File;)Z
    .registers 5
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    .line 918
    .local p0, "dirs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/File;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 919
    .local v1, "dir":Ljava/io/File;
    invoke-static {v1, p1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 920
    const/4 v0, 0x1

    return v0

    .line 922
    .end local v1    # "dir":Ljava/io/File;
    :cond_18
    goto :goto_4

    .line 923
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist-max-o contains([Ljava/io/File;Ljava/io/File;)Z
    .registers 7
    .param p0, "dirs"    # [Ljava/io/File;
    .param p1, "file"    # Ljava/io/File;

    .line 908
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_12

    aget-object v3, p0, v2

    .line 909
    .local v3, "dir":Ljava/io/File;
    invoke-static {v3, p1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 910
    const/4 v0, 0x1

    return v0

    .line 908
    .end local v3    # "dir":Ljava/io/File;
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 913
    :cond_12
    return v1
.end method

.method public static blacklist convertToModernFd(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;
    .registers 6
    .param p0, "fd"    # Ljava/io/FileDescriptor;

    .line 1502
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    .line 1503
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {v0}, Landroid/os/FileUtils;->getMediaProviderAppId(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_14

    .line 1506
    return-object v3

    .line 1509
    :cond_14
    :try_start_14
    invoke-static {p0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_18} :catch_2e

    .line 1510
    .local v1, "dupFd":Landroid/os/ParcelFileDescriptor;
    :try_start_18
    invoke-static {v0, v1}, Landroid/provider/MediaStore;->getOriginalMediaFormatFileDescriptor(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_22

    .line 1511
    if-eqz v1, :cond_21

    :try_start_1e
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_2e

    .line 1510
    :cond_21
    return-object v2

    .line 1509
    :catchall_22
    move-exception v2

    if-eqz v1, :cond_2d

    :try_start_25
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    goto :goto_2d

    :catchall_29
    move-exception v4

    :try_start_2a
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "context":Landroid/content/Context;
    .end local p0    # "fd":Ljava/io/FileDescriptor;
    :cond_2d
    :goto_2d
    throw v2
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2e} :catch_2e

    .line 1511
    .end local v1    # "dupFd":Landroid/os/ParcelFileDescriptor;
    .restart local v0    # "context":Landroid/content/Context;
    .restart local p0    # "fd":Ljava/io/FileDescriptor;
    :catch_2e
    move-exception v1

    .line 1513
    .local v1, "e":Ljava/lang/Exception;
    return-object v3
.end method

.method public static greylist-max-o copy(Ljava/io/File;Ljava/io/File;)J
    .registers 4
    .param p0, "from"    # Ljava/io/File;
    .param p1, "to"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 371
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0, v0}, Landroid/os/FileUtils;->copy(Ljava/io/File;Ljava/io/File;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist copy(Ljava/io/File;Ljava/io/File;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J
    .registers 9
    .param p0, "from"    # Ljava/io/File;
    .param p1, "to"    # Ljava/io/File;
    .param p2, "signal"    # Landroid/os/CancellationSignal;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "listener"    # Landroid/os/FileUtils$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 389
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 390
    .local v0, "in":Ljava/io/FileInputStream;
    :try_start_5
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_1f

    .line 391
    .local v1, "out":Ljava/io/FileOutputStream;
    :try_start_a
    invoke-static {v0, v1, p2, p3, p4}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J

    move-result-wide v2
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_15

    .line 392
    :try_start_e
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_1f

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 391
    return-wide v2

    .line 389
    :catchall_15
    move-exception v2

    :try_start_16
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    goto :goto_1e

    :catchall_1a
    move-exception v3

    :try_start_1b
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "in":Ljava/io/FileInputStream;
    .end local p0    # "from":Ljava/io/File;
    .end local p1    # "to":Ljava/io/File;
    .end local p2    # "signal":Landroid/os/CancellationSignal;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "listener":Landroid/os/FileUtils$ProgressListener;
    :goto_1e
    throw v2
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_1f

    .end local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "in":Ljava/io/FileInputStream;
    .restart local p0    # "from":Ljava/io/File;
    .restart local p1    # "to":Ljava/io/File;
    .restart local p2    # "signal":Landroid/os/CancellationSignal;
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "listener":Landroid/os/FileUtils$ProgressListener;
    :catchall_1f
    move-exception v1

    :try_start_20
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_24

    goto :goto_28

    :catchall_24
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_28
    throw v1
.end method

.method public static whitelist copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)J
    .registers 4
    .param p0, "in"    # Ljava/io/FileDescriptor;
    .param p1, "out"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 442
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0, v0}, Landroid/os/FileUtils;->copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;JLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J
    .registers 12
    .param p0, "in"    # Ljava/io/FileDescriptor;
    .param p1, "out"    # Ljava/io/FileDescriptor;
    .param p2, "count"    # J
    .param p4, "signal"    # Landroid/os/CancellationSignal;
    .param p5, "executor"    # Ljava/util/concurrent/Executor;
    .param p6, "listener"    # Landroid/os/FileUtils$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 478
    sget-boolean v0, Landroid/os/FileUtils;->sEnableCopyOptimizations:Z

    if-eqz v0, :cond_53

    .line 480
    :try_start_4
    invoke-static {p0}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v0

    .line 481
    .local v0, "st_in":Landroid/system/StructStat;
    invoke-static {p1}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v1

    .line 482
    .local v1, "st_out":Landroid/system/StructStat;
    iget v2, v0, Landroid/system/StructStat;->st_mode:I

    invoke-static {v2}, Landroid/system/OsConstants;->S_ISREG(I)Z

    move-result v2

    if-eqz v2, :cond_36

    iget v2, v1, Landroid/system/StructStat;->st_mode:I

    invoke-static {v2}, Landroid/system/OsConstants;->S_ISREG(I)Z

    move-result v2
    :try_end_1a
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_1a} :catch_4d

    if-eqz v2, :cond_36

    .line 484
    :try_start_1c
    invoke-static/range {p0 .. p6}, Landroid/os/FileUtils;->copyInternalSendfile(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;JLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J

    move-result-wide v2
    :try_end_20
    .catch Landroid/system/ErrnoException; {:try_start_1c .. :try_end_20} :catch_21

    return-wide v2

    .line 485
    :catch_21
    move-exception v2

    .line 486
    .local v2, "e":Landroid/system/ErrnoException;
    :try_start_22
    iget v3, v2, Landroid/system/ErrnoException;->errno:I

    sget v4, Landroid/system/OsConstants;->EINVAL:I

    if-eq v3, v4, :cond_31

    iget v3, v2, Landroid/system/ErrnoException;->errno:I

    sget v4, Landroid/system/OsConstants;->ENOSYS:I

    if-ne v3, v4, :cond_2f

    goto :goto_31

    .line 494
    :cond_2f
    nop

    .end local p0    # "in":Ljava/io/FileDescriptor;
    .end local p1    # "out":Ljava/io/FileDescriptor;
    .end local p2    # "count":J
    .end local p4    # "signal":Landroid/os/CancellationSignal;
    .end local p5    # "executor":Ljava/util/concurrent/Executor;
    .end local p6    # "listener":Landroid/os/FileUtils$ProgressListener;
    throw v2

    .line 491
    .restart local p0    # "in":Ljava/io/FileDescriptor;
    .restart local p1    # "out":Ljava/io/FileDescriptor;
    .restart local p2    # "count":J
    .restart local p4    # "signal":Landroid/os/CancellationSignal;
    .restart local p5    # "executor":Ljava/util/concurrent/Executor;
    .restart local p6    # "listener":Landroid/os/FileUtils$ProgressListener;
    :cond_31
    :goto_31
    invoke-static/range {p0 .. p6}, Landroid/os/FileUtils;->copyInternalUserspace(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;JLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J

    move-result-wide v3

    return-wide v3

    .line 496
    .end local v2    # "e":Landroid/system/ErrnoException;
    :cond_36
    iget v2, v0, Landroid/system/StructStat;->st_mode:I

    invoke-static {v2}, Landroid/system/OsConstants;->S_ISFIFO(I)Z

    move-result v2

    if-nez v2, :cond_48

    iget v2, v1, Landroid/system/StructStat;->st_mode:I

    invoke-static {v2}, Landroid/system/OsConstants;->S_ISFIFO(I)Z

    move-result v2

    if-eqz v2, :cond_47

    goto :goto_48

    .line 501
    .end local v0    # "st_in":Landroid/system/StructStat;
    .end local v1    # "st_out":Landroid/system/StructStat;
    :cond_47
    goto :goto_53

    .line 497
    .restart local v0    # "st_in":Landroid/system/StructStat;
    .restart local v1    # "st_out":Landroid/system/StructStat;
    :cond_48
    :goto_48
    invoke-static/range {p0 .. p6}, Landroid/os/FileUtils;->copyInternalSplice(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;JLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J

    move-result-wide v2
    :try_end_4c
    .catch Landroid/system/ErrnoException; {:try_start_22 .. :try_end_4c} :catch_4d

    return-wide v2

    .line 499
    .end local v0    # "st_in":Landroid/system/StructStat;
    .end local v1    # "st_out":Landroid/system/StructStat;
    :catch_4d
    move-exception v0

    .line 500
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 505
    .end local v0    # "e":Landroid/system/ErrnoException;
    :cond_53
    :goto_53
    invoke-static/range {p0 .. p6}, Landroid/os/FileUtils;->copyInternalUserspace(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;JLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J
    .registers 12
    .param p0, "in"    # Ljava/io/FileDescriptor;
    .param p1, "out"    # Ljava/io/FileDescriptor;
    .param p2, "signal"    # Landroid/os/CancellationSignal;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "listener"    # Landroid/os/FileUtils$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 459
    const-wide v2, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Landroid/os/FileUtils;->copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;JLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .registers 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 404
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0, v0}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist copy(Ljava/io/InputStream;Ljava/io/OutputStream;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J
    .registers 7
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "signal"    # Landroid/os/CancellationSignal;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "listener"    # Landroid/os/FileUtils$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 421
    sget-boolean v0, Landroid/os/FileUtils;->sEnableCopyOptimizations:Z

    if-eqz v0, :cond_1f

    .line 422
    instance-of v0, p0, Ljava/io/FileInputStream;

    if-eqz v0, :cond_1f

    instance-of v0, p1, Ljava/io/FileOutputStream;

    if-eqz v0, :cond_1f

    .line 423
    move-object v0, p0

    check-cast v0, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v0, v1, p2, p3, p4}, Landroid/os/FileUtils;->copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J

    move-result-wide v0

    return-wide v0

    .line 429
    :cond_1f
    invoke-static {p0, p1, p2, p3, p4}, Landroid/os/FileUtils;->copyInternalUserspace(Ljava/io/InputStream;Ljava/io/OutputStream;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static greylist copyFile(Ljava/io/File;Ljava/io/File;)Z
    .registers 4
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 287
    :try_start_0
    invoke-static {p0, p1}, Landroid/os/FileUtils;->copyFileOrThrow(Ljava/io/File;Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    .line 288
    const/4 v0, 0x1

    return v0

    .line 289
    :catch_5
    move-exception v0

    .line 290
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return v1
.end method

.method public static greylist-max-o copyFileOrThrow(Ljava/io/File;Ljava/io/File;)V
    .registers 5
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 322
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 323
    .local v0, "in":Ljava/io/InputStream;
    :try_start_5
    invoke-static {v0, p1}, Landroid/os/FileUtils;->copyToFileOrThrow(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_c

    .line 324
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 325
    .end local v0    # "in":Ljava/io/InputStream;
    return-void

    .line 322
    .restart local v0    # "in":Ljava/io/InputStream;
    :catchall_c
    move-exception v1

    :try_start_d
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_11

    goto :goto_15

    :catchall_11
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_15
    throw v1
.end method

.method public static blacklist copyInternalSendfile(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;JLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J
    .registers 26
    .param p0, "in"    # Ljava/io/FileDescriptor;
    .param p1, "out"    # Ljava/io/FileDescriptor;
    .param p2, "count"    # J
    .param p4, "signal"    # Landroid/os/CancellationSignal;
    .param p5, "executor"    # Ljava/util/concurrent/Executor;
    .param p6, "listener"    # Landroid/os/FileUtils$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 558
    move-object/from16 v0, p5

    move-object/from16 v1, p6

    const-wide/16 v2, 0x0

    .line 559
    .local v2, "progress":J
    const-wide/16 v4, 0x0

    move-wide v6, v4

    move-wide v4, v2

    move-wide/from16 v2, p2

    .line 562
    .end local p2    # "count":J
    .local v2, "count":J
    .local v4, "progress":J
    .local v6, "checkpoint":J
    :cond_c
    :goto_c
    const/4 v8, 0x0

    const-wide/32 v9, 0x80000

    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    invoke-static {v14, v13, v8, v11, v12}, Landroid/system/Os;->sendfile(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/system/Int64Ref;J)J

    move-result-wide v11

    move-wide v15, v11

    .local v15, "t":J
    const-wide/16 v17, 0x0

    cmp-long v8, v11, v17

    if-eqz v8, :cond_3f

    .line 563
    add-long/2addr v4, v15

    .line 564
    add-long/2addr v6, v15

    .line 565
    sub-long/2addr v2, v15

    .line 567
    cmp-long v8, v6, v9

    if-ltz v8, :cond_c

    .line 568
    if-eqz p4, :cond_2f

    .line 569
    invoke-virtual/range {p4 .. p4}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 571
    :cond_2f
    if-eqz v0, :cond_3c

    if-eqz v1, :cond_3c

    .line 572
    move-wide v8, v4

    .line 573
    .local v8, "progressSnapshot":J
    new-instance v10, Landroid/os/FileUtils$$ExternalSyntheticLambda2;

    invoke-direct {v10, v1, v8, v9}, Landroid/os/FileUtils$$ExternalSyntheticLambda2;-><init>(Landroid/os/FileUtils$ProgressListener;J)V

    invoke-interface {v0, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 577
    .end local v8    # "progressSnapshot":J
    :cond_3c
    const-wide/16 v6, 0x0

    goto :goto_c

    .line 580
    :cond_3f
    if-eqz v0, :cond_4c

    if-eqz v1, :cond_4c

    .line 581
    move-wide v8, v4

    .line 582
    .restart local v8    # "progressSnapshot":J
    new-instance v10, Landroid/os/FileUtils$$ExternalSyntheticLambda3;

    invoke-direct {v10, v1, v8, v9}, Landroid/os/FileUtils$$ExternalSyntheticLambda3;-><init>(Landroid/os/FileUtils$ProgressListener;J)V

    invoke-interface {v0, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 586
    .end local v8    # "progressSnapshot":J
    :cond_4c
    return-wide v4
.end method

.method public static blacklist copyInternalSplice(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;JLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J
    .registers 26
    .param p0, "in"    # Ljava/io/FileDescriptor;
    .param p1, "out"    # Ljava/io/FileDescriptor;
    .param p2, "count"    # J
    .param p4, "signal"    # Landroid/os/CancellationSignal;
    .param p5, "executor"    # Ljava/util/concurrent/Executor;
    .param p6, "listener"    # Landroid/os/FileUtils$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 517
    move-object/from16 v0, p5

    move-object/from16 v1, p6

    const-wide/16 v2, 0x0

    .line 518
    .local v2, "progress":J
    const-wide/16 v4, 0x0

    move-wide v6, v4

    move-wide v4, v2

    move-wide/from16 v2, p2

    .line 521
    .end local p2    # "count":J
    .local v2, "count":J
    .local v4, "progress":J
    .local v6, "checkpoint":J
    :cond_c
    :goto_c
    const/4 v9, 0x0

    const/4 v11, 0x0

    const-wide/32 v14, 0x80000

    invoke-static {v2, v3, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    sget v8, Landroid/system/OsConstants;->SPLICE_F_MOVE:I

    sget v10, Landroid/system/OsConstants;->SPLICE_F_MORE:I

    or-int v16, v8, v10

    move-object/from16 v8, p0

    move-object/from16 v10, p1

    move-wide/from16 v17, v14

    move/from16 v14, v16

    invoke-static/range {v8 .. v14}, Landroid/system/Os;->splice(Ljava/io/FileDescriptor;Landroid/system/Int64Ref;Ljava/io/FileDescriptor;Landroid/system/Int64Ref;JI)J

    move-result-wide v8

    move-wide v10, v8

    .local v10, "t":J
    const-wide/16 v12, 0x0

    cmp-long v8, v8, v12

    if-eqz v8, :cond_4a

    .line 523
    add-long/2addr v4, v10

    .line 524
    add-long/2addr v6, v10

    .line 525
    sub-long/2addr v2, v10

    .line 527
    cmp-long v8, v6, v17

    if-ltz v8, :cond_c

    .line 528
    if-eqz p4, :cond_3a

    .line 529
    invoke-virtual/range {p4 .. p4}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 531
    :cond_3a
    if-eqz v0, :cond_47

    if-eqz v1, :cond_47

    .line 532
    move-wide v8, v4

    .line 533
    .local v8, "progressSnapshot":J
    new-instance v12, Landroid/os/FileUtils$$ExternalSyntheticLambda4;

    invoke-direct {v12, v1, v8, v9}, Landroid/os/FileUtils$$ExternalSyntheticLambda4;-><init>(Landroid/os/FileUtils$ProgressListener;J)V

    invoke-interface {v0, v12}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 537
    .end local v8    # "progressSnapshot":J
    :cond_47
    const-wide/16 v6, 0x0

    goto :goto_c

    .line 540
    :cond_4a
    if-eqz v0, :cond_57

    if-eqz v1, :cond_57

    .line 541
    move-wide v8, v4

    .line 542
    .restart local v8    # "progressSnapshot":J
    new-instance v12, Landroid/os/FileUtils$$ExternalSyntheticLambda5;

    invoke-direct {v12, v1, v8, v9}, Landroid/os/FileUtils$$ExternalSyntheticLambda5;-><init>(Landroid/os/FileUtils$ProgressListener;J)V

    invoke-interface {v0, v12}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 546
    .end local v8    # "progressSnapshot":J
    :cond_57
    return-wide v4
.end method

.method public static blacklist copyInternalUserspace(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;JLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J
    .registers 9
    .param p0, "in"    # Ljava/io/FileDescriptor;
    .param p1, "out"    # Ljava/io/FileDescriptor;
    .param p2, "count"    # J
    .param p4, "signal"    # Landroid/os/CancellationSignal;
    .param p5, "executor"    # Ljava/util/concurrent/Executor;
    .param p6, "listener"    # Landroid/os/FileUtils$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 603
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1d

    .line 604
    new-instance v0, Lcom/android/internal/util/SizedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1, p2, p3}, Lcom/android/internal/util/SizedInputStream;-><init>(Ljava/io/InputStream;J)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-static {v0, v1, p4, p5, p6}, Landroid/os/FileUtils;->copyInternalUserspace(Ljava/io/InputStream;Ljava/io/OutputStream;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J

    move-result-wide v0

    return-wide v0

    .line 607
    :cond_1d
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-static {v0, v1, p4, p5, p6}, Landroid/os/FileUtils;->copyInternalUserspace(Ljava/io/InputStream;Ljava/io/OutputStream;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static greylist-max-o copyInternalUserspace(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/os/FileUtils$ProgressListener;Landroid/os/CancellationSignal;J)J
    .registers 13
    .param p0, "in"    # Ljava/io/FileDescriptor;
    .param p1, "out"    # Ljava/io/FileDescriptor;
    .param p2, "listener"    # Landroid/os/FileUtils$ProgressListener;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .param p4, "count"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 595
    new-instance v5, Landroid/app/PendingIntent$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Landroid/app/PendingIntent$$ExternalSyntheticLambda1;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p4

    move-object v4, p3

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Landroid/os/FileUtils;->copyInternalUserspace(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;JLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist copyInternalUserspace(Ljava/io/InputStream;Ljava/io/OutputStream;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J
    .registers 14
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "signal"    # Landroid/os/CancellationSignal;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "listener"    # Landroid/os/FileUtils$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 617
    const-wide/16 v0, 0x0

    .line 618
    .local v0, "progress":J
    const-wide/16 v2, 0x0

    .line 619
    .local v2, "checkpoint":J
    const/16 v4, 0x2000

    new-array v4, v4, [B

    .line 622
    .local v4, "buffer":[B
    :cond_8
    :goto_8
    invoke-virtual {p0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v6, v5

    .local v6, "t":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_34

    .line 623
    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 625
    int-to-long v7, v6

    add-long/2addr v0, v7

    .line 626
    int-to-long v7, v6

    add-long/2addr v2, v7

    .line 628
    const-wide/32 v7, 0x80000

    cmp-long v5, v2, v7

    if-ltz v5, :cond_8

    .line 629
    if-eqz p2, :cond_24

    .line 630
    invoke-virtual {p2}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 632
    :cond_24
    if-eqz p3, :cond_31

    if-eqz p4, :cond_31

    .line 633
    move-wide v7, v0

    .line 634
    .local v7, "progressSnapshot":J
    new-instance v5, Landroid/os/FileUtils$$ExternalSyntheticLambda0;

    invoke-direct {v5, p4, v7, v8}, Landroid/os/FileUtils$$ExternalSyntheticLambda0;-><init>(Landroid/os/FileUtils$ProgressListener;J)V

    invoke-interface {p3, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 638
    .end local v7    # "progressSnapshot":J
    :cond_31
    const-wide/16 v2, 0x0

    goto :goto_8

    .line 641
    :cond_34
    if-eqz p3, :cond_41

    if-eqz p4, :cond_41

    .line 642
    move-wide v7, v0

    .line 643
    .restart local v7    # "progressSnapshot":J
    new-instance v5, Landroid/os/FileUtils$$ExternalSyntheticLambda1;

    invoke-direct {v5, p4, v7, v8}, Landroid/os/FileUtils$$ExternalSyntheticLambda1;-><init>(Landroid/os/FileUtils$ProgressListener;J)V

    invoke-interface {p3, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 647
    .end local v7    # "progressSnapshot":J
    :cond_41
    return-wide v0
.end method

.method public static greylist-max-o copyPermissions(Ljava/io/File;Ljava/io/File;)V
    .registers 6
    .param p0, "from"    # Ljava/io/File;
    .param p1, "to"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v0

    .line 231
    .local v0, "stat":Landroid/system/StructStat;
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Landroid/system/StructStat;->st_mode:I

    invoke-static {v1, v2}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 232
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Landroid/system/StructStat;->st_uid:I

    iget v3, v0, Landroid/system/StructStat;->st_gid:I

    invoke-static {v1, v2, v3}, Landroid/system/Os;->chown(Ljava/lang/String;II)V
    :try_end_1c
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_1c} :catch_1e

    .line 235
    .end local v0    # "stat":Landroid/system/StructStat;
    nop

    .line 236
    return-void

    .line 233
    :catch_1e
    move-exception v0

    .line 234
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public static greylist copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    .registers 4
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "destFile"    # Ljava/io/File;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 335
    :try_start_0
    invoke-static {p0, p1}, Landroid/os/FileUtils;->copyToFileOrThrow(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    .line 336
    const/4 v0, 0x1

    return v0

    .line 337
    :catch_5
    move-exception v0

    .line 338
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return v1
.end method

.method public static greylist-max-o copyToFileOrThrow(Ljava/io/InputStream;Ljava/io/File;)V
    .registers 5
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "destFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 348
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 349
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 351
    :cond_9
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 352
    .local v0, "out":Ljava/io/FileOutputStream;
    :try_start_e
    invoke-static {p0, v0}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_23

    .line 354
    :try_start_11
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1}, Landroid/system/Os;->fsync(Ljava/io/FileDescriptor;)V
    :try_end_18
    .catch Landroid/system/ErrnoException; {:try_start_11 .. :try_end_18} :catch_1d
    .catchall {:try_start_11 .. :try_end_18} :catchall_23

    .line 357
    nop

    .line 358
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 359
    .end local v0    # "out":Ljava/io/FileOutputStream;
    return-void

    .line 355
    .restart local v0    # "out":Ljava/io/FileOutputStream;
    :catch_1d
    move-exception v1

    .line 356
    .local v1, "e":Landroid/system/ErrnoException;
    :try_start_1e
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    .end local v0    # "out":Ljava/io/FileOutputStream;
    .end local p0    # "in":Ljava/io/InputStream;
    .end local p1    # "destFile":Ljava/io/File;
    throw v2
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_23

    .line 351
    .end local v1    # "e":Landroid/system/ErrnoException;
    .restart local v0    # "out":Ljava/io/FileOutputStream;
    .restart local p0    # "in":Ljava/io/InputStream;
    .restart local p1    # "destFile":Ljava/io/File;
    :catchall_23
    move-exception v1

    :try_start_24
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_28

    goto :goto_2c

    :catchall_28
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2c
    throw v1
.end method

.method public static greylist-max-o createDir(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .param p0, "baseDir"    # Ljava/io/File;
    .param p1, "name"    # Ljava/lang/String;

    .line 1305
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1307
    .local v0, "dir":Ljava/io/File;
    invoke-static {v0}, Landroid/os/FileUtils;->createDir(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_d

    move-object v1, v0

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return-object v1
.end method

.method public static blacklist createDir(Ljava/io/File;)Z
    .registers 2
    .param p0, "dir"    # Ljava/io/File;

    .line 1318
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1319
    const/4 v0, 0x1

    return v0

    .line 1322
    :cond_8
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1323
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0

    .line 1326
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist-max-r deleteContents(Ljava/io/File;)Z
    .registers 8
    .param p0, "dir"    # Ljava/io/File;

    .line 974
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 975
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x1

    .line 976
    .local v1, "success":Z
    if-eqz v0, :cond_3a

    .line 977
    array-length v2, v0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_3a

    aget-object v4, v0, v3

    .line 978
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 979
    invoke-static {v4}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 981
    :cond_18
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_37

    .line 982
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to delete "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "FileUtils"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    const/4 v1, 0x0

    .line 977
    .end local v4    # "file":Ljava/io/File;
    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 987
    :cond_3a
    return v1
.end method

.method public static greylist-max-o deleteContentsAndDir(Ljava/io/File;)Z
    .registers 2
    .param p0, "dir"    # Ljava/io/File;

    .line 964
    invoke-static {p0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 965
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0

    .line 967
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist-max-r deleteOlderFiles(Ljava/io/File;IJ)Z
    .registers 12
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "minCount"    # I
    .param p2, "minAgeMs"    # J

    .line 865
    if-ltz p1, :cond_4f

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_4f

    .line 869
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 870
    .local v0, "files":[Ljava/io/File;
    if-nez v0, :cond_10

    const/4 v1, 0x0

    return v1

    .line 873
    :cond_10
    new-instance v1, Landroid/os/FileUtils$1;

    invoke-direct {v1}, Landroid/os/FileUtils$1;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 881
    const/4 v1, 0x0

    .line 882
    .local v1, "deleted":Z
    move v2, p1

    .local v2, "i":I
    :goto_1a
    array-length v3, v0

    if-ge v2, v3, :cond_4e

    .line 883
    aget-object v3, v0, v2

    .line 886
    .local v3, "file":Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 887
    .local v4, "age":J
    cmp-long v6, v4, p2

    if-lez v6, :cond_4b

    .line 888
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 889
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deleted old file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "FileUtils"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    const/4 v1, 0x1

    .line 882
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "age":J
    :cond_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 894
    .end local v2    # "i":I
    :cond_4e
    return v1

    .line 866
    .end local v0    # "files":[Ljava/io/File;
    .end local v1    # "deleted":Z
    :cond_4f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Constraints must be positive or 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist digest(Ljava/io/File;Ljava/lang/String;)[B
    .registers 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 810
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 811
    .local v0, "in":Ljava/io/FileInputStream;
    :try_start_5
    invoke-static {v0, p1}, Landroid/os/FileUtils;->digest(Ljava/io/InputStream;Ljava/lang/String;)[B

    move-result-object v1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    .line 812
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 811
    return-object v1

    .line 810
    :catchall_d
    move-exception v1

    :try_start_e
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_12

    goto :goto_16

    :catchall_12
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_16
    throw v1
.end method

.method public static blacklist digest(Ljava/io/FileDescriptor;Ljava/lang/String;)[B
    .registers 3
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 840
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-static {v0, p1}, Landroid/os/FileUtils;->digestInternalUserspace(Ljava/io/InputStream;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static blacklist digest(Ljava/io/InputStream;Ljava/lang/String;)[B
    .registers 3
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 827
    invoke-static {p0, p1}, Landroid/os/FileUtils;->digestInternalUserspace(Ljava/io/InputStream;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private static blacklist digestInternalUserspace(Ljava/io/InputStream;Ljava/lang/String;)[B
    .registers 7
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 845
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 846
    .local v0, "digest":Ljava/security/MessageDigest;
    new-instance v1, Ljava/security/DigestInputStream;

    invoke-direct {v1, p0, v0}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    .line 847
    .local v1, "digestStream":Ljava/security/DigestInputStream;
    const/16 v2, 0x2000

    :try_start_b
    new-array v2, v2, [B

    .line 848
    .local v2, "buffer":[B
    :goto_d
    invoke-virtual {v1, v2}, Ljava/security/DigestInputStream;->read([B)I

    move-result v3
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_1d

    const/4 v4, -0x1

    if-eq v3, v4, :cond_15

    goto :goto_d

    .line 850
    .end local v2    # "buffer":[B
    :cond_15
    invoke-virtual {v1}, Ljava/security/DigestInputStream;->close()V

    .line 851
    .end local v1    # "digestStream":Ljava/security/DigestInputStream;
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    return-object v1

    .line 846
    .restart local v1    # "digestStream":Ljava/security/DigestInputStream;
    :catchall_1d
    move-exception v2

    :try_start_1e
    invoke-virtual {v1}, Ljava/security/DigestInputStream;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    goto :goto_26

    :catchall_22
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_26
    throw v2
.end method

.method private static blacklist getMediaProviderAppId(Landroid/content/Context;)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 1518
    sget v0, Landroid/os/FileUtils;->sMediaProviderAppId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 1519
    sget v0, Landroid/os/FileUtils;->sMediaProviderAppId:I

    return v0

    .line 1522
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1523
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x1c0000

    const-string/jumbo v4, "media"

    invoke-virtual {v2, v4, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    .line 1527
    .local v2, "provider":Landroid/content/pm/ProviderInfo;
    if-nez v2, :cond_1c

    .line 1528
    return v1

    .line 1531
    :cond_1c
    iget-object v1, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    sput v1, Landroid/os/FileUtils;->sMediaProviderAppId:I

    .line 1532
    sget v1, Landroid/os/FileUtils;->sMediaProviderAppId:I

    return v1
.end method

.method public static greylist-max-o getUid(Ljava/lang/String;)I
    .registers 3
    .param p0, "path"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 245
    :try_start_0
    invoke-static {p0}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v0

    iget v0, v0, Landroid/system/StructStat;->st_uid:I
    :try_end_6
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 246
    :catch_7
    move-exception v0

    .line 247
    .local v0, "e":Landroid/system/ErrnoException;
    const/4 v1, -0x1

    return v1
.end method

.method public static greylist isFilenameSafe(Ljava/io/File;)Z
    .registers 3
    .param p0, "file"    # Ljava/io/File;

    .line 660
    sget-object v0, Landroid/os/FileUtils$NoImagePreloadHolder;->SAFE_FILENAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o isValidExtFilename(Ljava/lang/String;)Z
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 1006
    if-eqz p0, :cond_e

    invoke-static {p0}, Landroid/os/FileUtils;->buildValidExtFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static greylist-max-o isValidExtFilenameChar(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 991
    sparse-switch p0, :sswitch_data_8

    .line 996
    const/4 v0, 0x1

    return v0

    .line 994
    :sswitch_5
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x0 -> :sswitch_5
        0x2f -> :sswitch_5
    .end sparse-switch
.end method

.method public static greylist-max-o isValidFatFilename(Ljava/lang/String;)Z
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 1059
    if-eqz p0, :cond_e

    invoke-static {p0}, Landroid/os/FileUtils;->buildValidFatFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static greylist-max-o isValidFatFilenameChar(C)Z
    .registers 3
    .param p0, "c"    # C

    .line 1033
    const/4 v0, 0x0

    if-ltz p0, :cond_8

    const/16 v1, 0x1f

    if-gt p0, v1, :cond_8

    .line 1034
    return v0

    .line 1036
    :cond_8
    sparse-switch p0, :sswitch_data_e

    .line 1049
    const/4 v0, 0x1

    return v0

    .line 1047
    :sswitch_d
    return v0

    :sswitch_data_e
    .sparse-switch
        0x22 -> :sswitch_d
        0x2a -> :sswitch_d
        0x2f -> :sswitch_d
        0x3a -> :sswitch_d
        0x3c -> :sswitch_d
        0x3e -> :sswitch_d
        0x3f -> :sswitch_d
        0x5c -> :sswitch_d
        0x7c -> :sswitch_d
        0x7f -> :sswitch_d
    .end sparse-switch
.end method

.method static synthetic blacklist lambda$copyInternalSendfile$2(Landroid/os/FileUtils$ProgressListener;J)V
    .registers 3
    .param p0, "listener"    # Landroid/os/FileUtils$ProgressListener;
    .param p1, "progressSnapshot"    # J

    .line 574
    invoke-interface {p0, p1, p2}, Landroid/os/FileUtils$ProgressListener;->onProgress(J)V

    .line 575
    return-void
.end method

.method static synthetic blacklist lambda$copyInternalSendfile$3(Landroid/os/FileUtils$ProgressListener;J)V
    .registers 3
    .param p0, "listener"    # Landroid/os/FileUtils$ProgressListener;
    .param p1, "progressSnapshot"    # J

    .line 583
    invoke-interface {p0, p1, p2}, Landroid/os/FileUtils$ProgressListener;->onProgress(J)V

    .line 584
    return-void
.end method

.method static synthetic blacklist lambda$copyInternalSplice$0(Landroid/os/FileUtils$ProgressListener;J)V
    .registers 3
    .param p0, "listener"    # Landroid/os/FileUtils$ProgressListener;
    .param p1, "progressSnapshot"    # J

    .line 534
    invoke-interface {p0, p1, p2}, Landroid/os/FileUtils$ProgressListener;->onProgress(J)V

    .line 535
    return-void
.end method

.method static synthetic blacklist lambda$copyInternalSplice$1(Landroid/os/FileUtils$ProgressListener;J)V
    .registers 3
    .param p0, "listener"    # Landroid/os/FileUtils$ProgressListener;
    .param p1, "progressSnapshot"    # J

    .line 543
    invoke-interface {p0, p1, p2}, Landroid/os/FileUtils$ProgressListener;->onProgress(J)V

    .line 544
    return-void
.end method

.method static synthetic blacklist lambda$copyInternalUserspace$4(Landroid/os/FileUtils$ProgressListener;J)V
    .registers 3
    .param p0, "listener"    # Landroid/os/FileUtils$ProgressListener;
    .param p1, "progressSnapshot"    # J

    .line 635
    invoke-interface {p0, p1, p2}, Landroid/os/FileUtils$ProgressListener;->onProgress(J)V

    .line 636
    return-void
.end method

.method static synthetic blacklist lambda$copyInternalUserspace$5(Landroid/os/FileUtils$ProgressListener;J)V
    .registers 3
    .param p0, "listener"    # Landroid/os/FileUtils$ProgressListener;
    .param p1, "progressSnapshot"    # J

    .line 644
    invoke-interface {p0, p1, p2}, Landroid/os/FileUtils$ProgressListener;->onProgress(J)V

    .line 645
    return-void
.end method

.method public static greylist-max-o listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;
    .registers 2
    .param p0, "dir"    # Ljava/io/File;

    .line 1282
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    goto :goto_d

    .line 1283
    :cond_b
    sget-object v0, Lcom/android/internal/util/ArrayUtils;->EMPTY_FILE:[Ljava/io/File;

    .line 1282
    :goto_d
    return-object v0
.end method

.method public static greylist-max-o listFilesOrEmpty(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;
    .registers 3
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "filter"    # Ljava/io/FilenameFilter;

    .line 1288
    if-eqz p0, :cond_b

    invoke-virtual {p0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    goto :goto_d

    .line 1289
    :cond_b
    sget-object v0, Lcom/android/internal/util/ArrayUtils;->EMPTY_FILE:[Ljava/io/File;

    .line 1288
    :goto_d
    return-object v0
.end method

.method public static greylist-max-o listOrEmpty(Ljava/io/File;)[Ljava/lang/String;
    .registers 2
    .param p0, "dir"    # Ljava/io/File;

    .line 1276
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 1277
    :cond_b
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 1276
    :goto_d
    return-object v0
.end method

.method private static native blacklist nativeSyncAll()V
.end method

.method public static greylist-max-o newFileOrNull(Ljava/lang/String;)Ljava/io/File;
    .registers 2
    .param p0, "path"    # Ljava/lang/String;

    .line 1294
    if-eqz p0, :cond_8

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0
.end method

.method public static greylist readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p0, "file"    # Ljava/io/File;
    .param p1, "max"    # I
    .param p2, "ellipsis"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 674
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 678
    .local v0, "input":Ljava/io/InputStream;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 680
    .local v1, "bis":Ljava/io/BufferedInputStream;
    :try_start_a
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_100

    .line 681
    .local v2, "size":J
    const-string v4, ""

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    if-gtz p1, :cond_aa

    cmp-long v8, v2, v5

    if-lez v8, :cond_1d

    if-nez p1, :cond_1d

    goto/16 :goto_aa

    .line 689
    :cond_1d
    if-gez p1, :cond_8a

    .line 691
    const/4 v5, 0x0

    .line 692
    .local v5, "rolled":Z
    const/4 v6, 0x0

    .line 693
    .local v6, "last":[B
    const/4 v8, 0x0

    .line 695
    .local v8, "data":[B
    :cond_22
    if-eqz v6, :cond_25

    const/4 v5, 0x1

    .line 696
    :cond_25
    move-object v9, v6

    .local v9, "tmp":[B
    move-object v6, v8

    move-object v8, v9

    .line 697
    if-nez v8, :cond_2e

    neg-int v10, p1

    :try_start_2b
    new-array v10, v10, [B

    move-object v8, v10

    .line 698
    :cond_2e
    invoke-virtual {v1, v8}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v10

    move v9, v10

    .line 699
    .local v9, "len":I
    array-length v10, v8
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_100

    if-eq v9, v10, :cond_22

    .line 701
    if-nez v6, :cond_41

    if-gtz v9, :cond_41

    .line 721
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 722
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 701
    return-object v4

    .line 702
    :cond_41
    if-nez v6, :cond_4f

    :try_start_43
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v8, v7, v9}, Ljava/lang/String;-><init>([BII)V
    :try_end_48
    .catchall {:try_start_43 .. :try_end_48} :catchall_100

    .line 721
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 722
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 702
    return-object v4

    .line 703
    :cond_4f
    if-lez v9, :cond_5c

    .line 704
    const/4 v5, 0x1

    .line 705
    :try_start_52
    array-length v4, v6

    sub-int/2addr v4, v9

    invoke-static {v6, v9, v6, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 706
    array-length v4, v6

    sub-int/2addr v4, v9

    invoke-static {v8, v7, v6, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 708
    :cond_5c
    if-eqz p2, :cond_7e

    if-nez v5, :cond_61

    goto :goto_7e

    .line 709
    :cond_61
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_77
    .catchall {:try_start_52 .. :try_end_77} :catchall_100

    .line 721
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 722
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 709
    return-object v4

    .line 708
    :cond_7e
    :goto_7e
    :try_start_7e
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([B)V
    :try_end_83
    .catchall {:try_start_7e .. :try_end_83} :catchall_100

    .line 721
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 722
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 708
    return-object v4

    .line 711
    .end local v5    # "rolled":Z
    .end local v6    # "last":[B
    .end local v8    # "data":[B
    .end local v9    # "len":I
    :cond_8a
    :try_start_8a
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 713
    .local v4, "contents":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x400

    new-array v5, v5, [B

    .line 715
    .local v5, "data":[B
    :cond_93
    invoke-virtual {v1, v5}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    .line 716
    .local v6, "len":I
    if-lez v6, :cond_9c

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 717
    :cond_9c
    array-length v8, v5

    if-eq v6, v8, :cond_93

    .line 718
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_a3
    .catchall {:try_start_8a .. :try_end_a3} :catchall_100

    .line 721
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 722
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 718
    return-object v7

    .line 682
    .end local v4    # "contents":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "data":[B
    .end local v6    # "len":I
    :cond_aa
    :goto_aa
    cmp-long v5, v2, v5

    if-lez v5, :cond_b6

    if-eqz p1, :cond_b5

    int-to-long v5, p1

    cmp-long v5, v2, v5

    if-gez v5, :cond_b6

    :cond_b5
    long-to-int p1, v2

    .line 683
    :cond_b6
    add-int/lit8 v5, p1, 0x1

    :try_start_b8
    new-array v5, v5, [B

    .line 684
    .restart local v5    # "data":[B
    invoke-virtual {v1, v5}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6
    :try_end_be
    .catchall {:try_start_b8 .. :try_end_be} :catchall_100

    .line 685
    .local v6, "length":I
    if-gtz v6, :cond_c7

    .line 721
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 722
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 685
    return-object v4

    .line 686
    :cond_c7
    if-gt v6, p1, :cond_d5

    :try_start_c9
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5, v7, v6}, Ljava/lang/String;-><init>([BII)V
    :try_end_ce
    .catchall {:try_start_c9 .. :try_end_ce} :catchall_100

    .line 721
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 722
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 686
    return-object v4

    .line 687
    :cond_d5
    if-nez p2, :cond_e3

    :try_start_d7
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5, v7, p1}, Ljava/lang/String;-><init>([BII)V
    :try_end_dc
    .catchall {:try_start_d7 .. :try_end_dc} :catchall_100

    .line 721
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 722
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 687
    return-object v4

    .line 688
    :cond_e3
    :try_start_e3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v5, v7, p1}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_f9
    .catchall {:try_start_e3 .. :try_end_f9} :catchall_100

    .line 721
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 722
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 688
    return-object v4

    .line 721
    .end local v2    # "size":J
    .end local v5    # "data":[B
    .end local v6    # "length":I
    :catchall_100
    move-exception v2

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 722
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 723
    throw v2
.end method

.method public static greylist-max-o rewriteAfterRename(Ljava/io/File;Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .registers 5
    .param p0, "beforeDir"    # Ljava/io/File;
    .param p1, "afterDir"    # Ljava/io/File;
    .param p2, "file"    # Ljava/io/File;

    .line 1133
    const/4 v0, 0x0

    if-eqz p2, :cond_25

    if-eqz p0, :cond_25

    if-nez p1, :cond_8

    goto :goto_25

    .line 1134
    :cond_8
    invoke-static {p0, p2}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1135
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1136
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1135
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1137
    .local v0, "splice":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    .line 1139
    .end local v0    # "splice":Ljava/lang/String;
    :cond_24
    return-object v0

    .line 1133
    :cond_25
    :goto_25
    return-object v0
.end method

.method public static greylist-max-o rewriteAfterRename(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "beforeDir"    # Ljava/io/File;
    .param p1, "afterDir"    # Ljava/io/File;
    .param p2, "path"    # Ljava/lang/String;

    .line 1110
    const/4 v0, 0x0

    if-nez p2, :cond_4

    return-object v0

    .line 1111
    :cond_4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 1112
    .local v1, "result":Ljava/io/File;
    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public static greylist-max-o rewriteAfterRename(Ljava/io/File;Ljava/io/File;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .param p0, "beforeDir"    # Ljava/io/File;
    .param p1, "afterDir"    # Ljava/io/File;
    .param p2, "paths"    # [Ljava/lang/String;

    .line 1117
    if-nez p2, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 1118
    :cond_4
    array-length v0, p2

    new-array v0, v0, [Ljava/lang/String;

    .line 1119
    .local v0, "result":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v2, p2

    if-ge v1, v2, :cond_16

    .line 1120
    aget-object v2, p2, v1

    invoke-static {p0, p1, v2}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1119
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1122
    .end local v1    # "i":I
    :cond_16
    return-object v0
.end method

.method public static greylist-max-o roundStorageSize(J)J
    .registers 10
    .param p0, "size"    # J

    .line 1337
    const-wide/16 v0, 0x1

    .line 1338
    .local v0, "val":J
    const-wide/16 v2, 0x1

    .line 1339
    .local v2, "pow":J
    :cond_4
    :goto_4
    mul-long v4, v0, v2

    cmp-long v4, v4, p0

    if-gez v4, :cond_21

    .line 1340
    const/4 v4, 0x1

    shl-long/2addr v0, v4

    .line 1343
    const-wide/16 v4, 0x200

    cmp-long v4, v0, v4

    if-lez v4, :cond_4

    mul-long v4, v0, v2

    const-wide/32 v6, 0x3d090000

    cmp-long v4, v4, v6

    if-gtz v4, :cond_4

    .line 1344
    const-wide/16 v0, 0x1

    .line 1345
    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    goto :goto_4

    .line 1348
    :cond_21
    mul-long v4, v0, v2

    return-wide v4
.end method

.method public static greylist setPermissions(Ljava/io/File;III)I
    .registers 5
    .param p0, "path"    # Ljava/io/File;
    .param p1, "mode"    # I
    .param p2, "uid"    # I
    .param p3, "gid"    # I

    .line 158
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-result v0

    return v0
.end method

.method public static greylist-max-r setPermissions(Ljava/io/FileDescriptor;III)I
    .registers 8
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "mode"    # I
    .param p2, "uid"    # I
    .param p3, "gid"    # I

    .line 203
    const-string v0, "FileUtils"

    :try_start_2
    invoke-static {p0, p1}, Landroid/system/Os;->fchmod(Ljava/io/FileDescriptor;I)V
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_5} :catch_2a

    .line 207
    nop

    .line 209
    if-gez p2, :cond_a

    if-ltz p3, :cond_e

    .line 211
    :cond_a
    :try_start_a
    invoke-static {p0, p2, p3}, Landroid/system/Os;->fchown(Ljava/io/FileDescriptor;II)V
    :try_end_d
    .catch Landroid/system/ErrnoException; {:try_start_a .. :try_end_d} :catch_10

    .line 215
    nop

    .line 218
    :cond_e
    const/4 v0, 0x0

    return v0

    .line 212
    :catch_10
    move-exception v1

    .line 213
    .local v1, "e":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to fchown(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget v0, v1, Landroid/system/ErrnoException;->errno:I

    return v0

    .line 204
    .end local v1    # "e":Landroid/system/ErrnoException;
    :catch_2a
    move-exception v1

    .line 205
    .restart local v1    # "e":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to fchmod(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget v0, v1, Landroid/system/ErrnoException;->errno:I

    return v0
.end method

.method public static greylist setPermissions(Ljava/lang/String;III)I
    .registers 9
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "mode"    # I
    .param p2, "uid"    # I
    .param p3, "gid"    # I

    .line 173
    const-string v0, "): "

    const-string v1, "FileUtils"

    :try_start_4
    invoke-static {p0, p1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_7
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_7} :catch_34

    .line 177
    nop

    .line 179
    if-gez p2, :cond_c

    if-ltz p3, :cond_10

    .line 181
    :cond_c
    :try_start_c
    invoke-static {p0, p2, p3}, Landroid/system/Os;->chown(Ljava/lang/String;II)V
    :try_end_f
    .catch Landroid/system/ErrnoException; {:try_start_c .. :try_end_f} :catch_12

    .line 185
    nop

    .line 188
    :cond_10
    const/4 v0, 0x0

    return v0

    .line 182
    :catch_12
    move-exception v2

    .line 183
    .local v2, "e":Landroid/system/ErrnoException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to chown("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget v0, v2, Landroid/system/ErrnoException;->errno:I

    return v0

    .line 174
    .end local v2    # "e":Landroid/system/ErrnoException;
    :catch_34
    move-exception v2

    .line 175
    .restart local v2    # "e":Landroid/system/ErrnoException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to chmod("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget v0, v2, Landroid/system/ErrnoException;->errno:I

    return v0
.end method

.method public static greylist-max-o splitFileName(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 9
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "displayName"    # Ljava/lang/String;

    .line 1219
    const-string/jumbo v0, "vnd.android.document/directory"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 1220
    move-object v0, p1

    .line 1221
    .local v0, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "ext":Ljava/lang/String;
    goto :goto_59

    .line 1226
    .end local v0    # "name":Ljava/lang/String;
    .end local v2    # "ext":Ljava/lang/String;
    :cond_d
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1227
    .local v0, "lastDot":I
    if-ltz v0, :cond_2c

    .line 1228
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1229
    .local v2, "name":Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1230
    .local v3, "ext":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    .line 1231
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 1230
    invoke-virtual {v4, v5}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "mimeTypeFromExt":Ljava/lang/String;
    goto :goto_2f

    .line 1233
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "ext":Ljava/lang/String;
    .end local v4    # "mimeTypeFromExt":Ljava/lang/String;
    :cond_2c
    move-object v2, p1

    .line 1234
    .restart local v2    # "name":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1235
    .restart local v3    # "ext":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1238
    .restart local v4    # "mimeTypeFromExt":Ljava/lang/String;
    :goto_2f
    if-nez v4, :cond_33

    .line 1239
    const-string v4, "application/octet-stream"

    .line 1243
    :cond_33
    const-string v5, "application/octet-stream"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 1244
    const/4 v5, 0x0

    .local v5, "extFromMimeType":Ljava/lang/String;
    goto :goto_45

    .line 1246
    .end local v5    # "extFromMimeType":Ljava/lang/String;
    :cond_3d
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1249
    .restart local v5    # "extFromMimeType":Ljava/lang/String;
    :goto_45
    invoke-static {p0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_57

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_52

    goto :goto_57

    .line 1253
    :cond_52
    move-object v2, p1

    .line 1254
    move-object v3, v5

    move-object v0, v2

    move-object v2, v3

    goto :goto_59

    .line 1258
    .end local v0    # "lastDot":I
    .end local v4    # "mimeTypeFromExt":Ljava/lang/String;
    .end local v5    # "extFromMimeType":Ljava/lang/String;
    :cond_57
    :goto_57
    move-object v0, v2

    move-object v2, v3

    .end local v3    # "ext":Ljava/lang/String;
    .local v0, "name":Ljava/lang/String;
    .local v2, "ext":Ljava/lang/String;
    :goto_59
    if-nez v2, :cond_5d

    .line 1259
    const-string v2, ""

    .line 1262
    :cond_5d
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v1

    const/4 v1, 0x1

    aput-object v2, v3, v1

    return-object v3
.end method

.method public static greylist-max-r stringToFile(Ljava/io/File;Ljava/lang/String;)V
    .registers 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 729
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    return-void
.end method

.method public static greylist stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 763
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {p0, v0}, Landroid/os/FileUtils;->bytesToFile(Ljava/lang/String;[B)V

    .line 764
    return-void
.end method

.method public static greylist sync(Ljava/io/FileOutputStream;)Z
    .registers 9
    .param p0, "stream"    # Ljava/io/FileOutputStream;

    .line 260
    if-eqz p0, :cond_27

    .line 262
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 263
    .local v4, "startTime":J
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    .line 265
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    move-object v7, v0

    .line 266
    .local v7, "curActivityThread":Landroid/app/ActivityThread;
    if-eqz v7, :cond_27

    .line 267
    invoke-virtual {v7}, Landroid/app/ActivityThread;->getProcessState()I

    move-result v6

    .line 268
    .local v6, "curProcState":I
    invoke-static {}, Landroid/os/perfdebug/OtherMethodMonitor;->get()Landroid/os/perfdebug/OtherMethodMonitor;

    move-result-object v0

    const-string v1, "fileSync"

    const-wide/16 v2, 0x64

    invoke-virtual/range {v0 .. v6}, Landroid/os/perfdebug/OtherMethodMonitor;->markMonitor(Ljava/lang/String;JJI)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_23} :catch_24

    goto :goto_27

    .line 274
    .end local v4    # "startTime":J
    .end local v6    # "curProcState":I
    .end local v7    # "curActivityThread":Landroid/app/ActivityThread;
    :catch_24
    move-exception v0

    .line 276
    const/4 v0, 0x0

    return v0

    .line 273
    :cond_27
    :goto_27
    const/4 v0, 0x1

    return v0
.end method

.method public static greylist syncAll()V
    .registers 11

    .line 304
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 306
    .local v7, "startTime":J
    invoke-static {}, Landroid/os/FileUtils;->nativeSyncAll()V

    .line 307
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v9

    .line 308
    .local v9, "curActivityThread":Landroid/app/ActivityThread;
    if-eqz v9, :cond_1e

    .line 309
    invoke-virtual {v9}, Landroid/app/ActivityThread;->getProcessState()I

    move-result v10

    .line 310
    .local v10, "curProcState":I
    invoke-static {}, Landroid/os/perfdebug/OtherMethodMonitor;->get()Landroid/os/perfdebug/OtherMethodMonitor;

    move-result-object v0

    const-wide/16 v2, 0x64

    const-string v1, "fileSync"

    move-wide v4, v7

    move v6, v10

    invoke-virtual/range {v0 .. v6}, Landroid/os/perfdebug/OtherMethodMonitor;->markMonitor(Ljava/lang/String;JJI)V

    .line 313
    .end local v10    # "curProcState":I
    :cond_1e
    return-void
.end method

.method public static blacklist translateModeAccessToPosix(I)I
    .registers 4
    .param p0, "mode"    # I

    .line 1484
    sget v0, Landroid/system/OsConstants;->F_OK:I

    if-ne p0, v0, :cond_7

    .line 1487
    sget v0, Landroid/system/OsConstants;->O_RDONLY:I

    return v0

    .line 1488
    :cond_7
    sget v0, Landroid/system/OsConstants;->R_OK:I

    sget v1, Landroid/system/OsConstants;->W_OK:I

    or-int/2addr v0, v1

    and-int/2addr v0, p0

    sget v1, Landroid/system/OsConstants;->R_OK:I

    sget v2, Landroid/system/OsConstants;->W_OK:I

    or-int/2addr v1, v2

    if-ne v0, v1, :cond_17

    .line 1489
    sget v0, Landroid/system/OsConstants;->O_RDWR:I

    return v0

    .line 1490
    :cond_17
    sget v0, Landroid/system/OsConstants;->R_OK:I

    and-int/2addr v0, p0

    sget v1, Landroid/system/OsConstants;->R_OK:I

    if-ne v0, v1, :cond_21

    .line 1491
    sget v0, Landroid/system/OsConstants;->O_RDONLY:I

    return v0

    .line 1492
    :cond_21
    sget v0, Landroid/system/OsConstants;->W_OK:I

    and-int/2addr v0, p0

    sget v1, Landroid/system/OsConstants;->W_OK:I

    if-ne v0, v1, :cond_2b

    .line 1493
    sget v0, Landroid/system/OsConstants;->O_WRONLY:I

    return v0

    .line 1495
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist translateModePfdToPosix(I)I
    .registers 5
    .param p0, "mode"    # I

    .line 1460
    const/4 v0, 0x0

    .line 1461
    .local v0, "res":I
    const/high16 v1, 0x30000000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_a

    .line 1462
    sget v0, Landroid/system/OsConstants;->O_RDWR:I

    goto :goto_1b

    .line 1463
    :cond_a
    const/high16 v1, 0x20000000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_13

    .line 1464
    sget v0, Landroid/system/OsConstants;->O_WRONLY:I

    goto :goto_1b

    .line 1465
    :cond_13
    const/high16 v1, 0x10000000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_37

    .line 1466
    sget v0, Landroid/system/OsConstants;->O_RDONLY:I

    .line 1470
    :goto_1b
    const/high16 v1, 0x8000000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_24

    .line 1471
    sget v1, Landroid/system/OsConstants;->O_CREAT:I

    or-int/2addr v0, v1

    .line 1473
    :cond_24
    const/high16 v1, 0x4000000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_2d

    .line 1474
    sget v1, Landroid/system/OsConstants;->O_TRUNC:I

    or-int/2addr v0, v1

    .line 1476
    :cond_2d
    const/high16 v1, 0x2000000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_36

    .line 1477
    sget v1, Landroid/system/OsConstants;->O_APPEND:I

    or-int/2addr v0, v1

    .line 1479
    :cond_36
    return v0

    .line 1468
    :cond_37
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist translateModePosixToPfd(I)I
    .registers 5
    .param p0, "mode"    # I

    .line 1436
    const/4 v0, 0x0

    .line 1437
    .local v0, "res":I
    sget v1, Landroid/system/OsConstants;->O_ACCMODE:I

    and-int/2addr v1, p0

    sget v2, Landroid/system/OsConstants;->O_RDWR:I

    if-ne v1, v2, :cond_b

    .line 1438
    const/high16 v0, 0x30000000

    goto :goto_1e

    .line 1439
    :cond_b
    sget v1, Landroid/system/OsConstants;->O_ACCMODE:I

    and-int/2addr v1, p0

    sget v2, Landroid/system/OsConstants;->O_WRONLY:I

    if-ne v1, v2, :cond_15

    .line 1440
    const/high16 v0, 0x20000000

    goto :goto_1e

    .line 1441
    :cond_15
    sget v1, Landroid/system/OsConstants;->O_ACCMODE:I

    and-int/2addr v1, p0

    sget v2, Landroid/system/OsConstants;->O_RDONLY:I

    if-ne v1, v2, :cond_3d

    .line 1442
    const/high16 v0, 0x10000000

    .line 1446
    :goto_1e
    sget v1, Landroid/system/OsConstants;->O_CREAT:I

    and-int/2addr v1, p0

    sget v2, Landroid/system/OsConstants;->O_CREAT:I

    if-ne v1, v2, :cond_28

    .line 1447
    const/high16 v1, 0x8000000

    or-int/2addr v0, v1

    .line 1449
    :cond_28
    sget v1, Landroid/system/OsConstants;->O_TRUNC:I

    and-int/2addr v1, p0

    sget v2, Landroid/system/OsConstants;->O_TRUNC:I

    if-ne v1, v2, :cond_32

    .line 1450
    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    .line 1452
    :cond_32
    sget v1, Landroid/system/OsConstants;->O_APPEND:I

    and-int/2addr v1, p0

    sget v2, Landroid/system/OsConstants;->O_APPEND:I

    if-ne v1, v2, :cond_3c

    .line 1453
    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    .line 1455
    :cond_3c
    return v0

    .line 1444
    :cond_3d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist translateModePosixToString(I)Ljava/lang/String;
    .registers 5
    .param p0, "mode"    # I

    .line 1415
    const-string v0, ""

    .line 1416
    .local v0, "res":Ljava/lang/String;
    sget v1, Landroid/system/OsConstants;->O_ACCMODE:I

    and-int/2addr v1, p0

    sget v2, Landroid/system/OsConstants;->O_RDWR:I

    if-ne v1, v2, :cond_d

    .line 1417
    const-string/jumbo v0, "rw"

    goto :goto_22

    .line 1418
    :cond_d
    sget v1, Landroid/system/OsConstants;->O_ACCMODE:I

    and-int/2addr v1, p0

    sget v2, Landroid/system/OsConstants;->O_WRONLY:I

    if-ne v1, v2, :cond_18

    .line 1419
    const-string/jumbo v0, "w"

    goto :goto_22

    .line 1420
    :cond_18
    sget v1, Landroid/system/OsConstants;->O_ACCMODE:I

    and-int/2addr v1, p0

    sget v2, Landroid/system/OsConstants;->O_RDONLY:I

    if-ne v1, v2, :cond_58

    .line 1421
    const-string/jumbo v0, "r"

    .line 1425
    :goto_22
    sget v1, Landroid/system/OsConstants;->O_TRUNC:I

    and-int/2addr v1, p0

    sget v2, Landroid/system/OsConstants;->O_TRUNC:I

    if-ne v1, v2, :cond_3d

    .line 1426
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1428
    :cond_3d
    sget v1, Landroid/system/OsConstants;->O_APPEND:I

    and-int/2addr v1, p0

    sget v2, Landroid/system/OsConstants;->O_APPEND:I

    if-ne v1, v2, :cond_57

    .line 1429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1431
    :cond_57
    return-object v0

    .line 1423
    :cond_58
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist translateModeStringToPosix(Ljava/lang/String;)I
    .registers 5
    .param p0, "mode"    # Ljava/lang/String;

    .line 1382
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Bad mode: "

    if-ge v0, v1, :cond_2b

    .line 1383
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_86

    .line 1390
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1388
    :sswitch_27
    nop

    .line 1382
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1394
    .end local v0    # "i":I
    :cond_2b
    const/4 v0, 0x0

    .line 1395
    .local v0, "res":I
    const-string/jumbo v1, "rw"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 1396
    sget v1, Landroid/system/OsConstants;->O_RDWR:I

    sget v2, Landroid/system/OsConstants;->O_CREAT:I

    or-int v0, v1, v2

    goto :goto_57

    .line 1397
    :cond_3c
    const-string/jumbo v1, "w"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 1398
    sget v1, Landroid/system/OsConstants;->O_WRONLY:I

    sget v2, Landroid/system/OsConstants;->O_CREAT:I

    or-int v0, v1, v2

    goto :goto_57

    .line 1399
    :cond_4c
    const-string/jumbo v1, "r"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 1400
    sget v0, Landroid/system/OsConstants;->O_RDONLY:I

    .line 1404
    :goto_57
    const/16 v1, 0x74

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_63

    .line 1405
    sget v1, Landroid/system/OsConstants;->O_TRUNC:I

    or-int/2addr v0, v1

    .line 1407
    :cond_63
    const/16 v1, 0x61

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v2, :cond_6e

    .line 1408
    sget v1, Landroid/system/OsConstants;->O_APPEND:I

    or-int/2addr v0, v1

    .line 1410
    :cond_6e
    return v0

    .line 1402
    :cond_6f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_data_86
    .sparse-switch
        0x61 -> :sswitch_27
        0x72 -> :sswitch_27
        0x74 -> :sswitch_27
        0x77 -> :sswitch_27
    .end sparse-switch
.end method

.method public static greylist-max-o trimFilename(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "maxBytes"    # I

    .line 1090
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1091
    .local v0, "res":Ljava/lang/StringBuilder;
    invoke-static {v0, p1}, Landroid/os/FileUtils;->trimFilename(Ljava/lang/StringBuilder;I)V

    .line 1092
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static greylist-max-o trimFilename(Ljava/lang/StringBuilder;I)V
    .registers 5
    .param p0, "res"    # Ljava/lang/StringBuilder;
    .param p1, "maxBytes"    # I

    .line 1097
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 1098
    .local v0, "raw":[B
    array-length v1, v0

    if-le v1, p1, :cond_31

    .line 1099
    add-int/lit8 p1, p1, -0x3

    .line 1100
    :goto_f
    array-length v1, v0

    if-le v1, p1, :cond_26

    .line 1101
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1102
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    goto :goto_f

    .line 1104
    :cond_26
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    const-string v2, "..."

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1106
    :cond_31
    return-void
.end method
