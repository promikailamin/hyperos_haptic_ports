.class public Lcom/android/server/BootReceiver$2;
.super Ljava/lang/Object;
.source "BootReceiver.java"

# interfaces
.implements Landroid/os/MessageQueue$OnFileDescriptorEventListener;


# instance fields
.field public final mBufferSize:I

.field public mTraceBuffer:[B


# direct methods
.method public constructor <init>(Lcom/android/server/BootReceiver;)V
    .registers 2

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x400

    .line 198
    iput p1, p0, Lcom/android/server/BootReceiver$2;->mBufferSize:I

    .line 199
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/server/BootReceiver$2;->mTraceBuffer:[B

    return-void
.end method


# virtual methods
.method public onFileDescriptorEvents(Ljava/io/FileDescriptor;I)I
    .registers 5

    const/4 p2, 0x0

    .line 214
    :try_start_1
    iget-object v0, p0, Lcom/android/server/BootReceiver$2;->mTraceBuffer:[B

    const/16 v1, 0x400

    invoke-static {p1, v0, p2, v1}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_3c

    .line 216
    new-instance v0, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/BootReceiver$2;->mTraceBuffer:[B

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    .line 217
    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_3a
    .catchall {:try_start_1 .. :try_end_19} :catchall_38

    const/4 v0, -0x1

    if-ne p0, v0, :cond_20

    .line 229
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    return v1

    .line 220
    :cond_20
    :try_start_20
    invoke-static {}, Lcom/android/server/BootReceiver;->-$$Nest$sfgetsSentReports()I

    move-result p0

    const/16 v0, 0x8

    if-ge p0, v0, :cond_3c

    .line 221
    const-string p0, "dmesgd.start"

    const-string v0, "1"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-static {}, Lcom/android/server/BootReceiver;->-$$Nest$sfgetsSentReports()I

    move-result p0

    add-int/2addr p0, v1

    invoke-static {p0}, Lcom/android/server/BootReceiver;->-$$Nest$sfputsSentReports(I)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_37} :catch_3a
    .catchall {:try_start_20 .. :try_end_37} :catchall_38

    goto :goto_3c

    :catchall_38
    move-exception p0

    goto :goto_4b

    :catch_3a
    move-exception p0

    goto :goto_40

    .line 229
    :cond_3c
    :goto_3c
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    return v1

    .line 226
    :goto_40
    :try_start_40
    const-string v0, "BootReceiver"

    const-string v1, "Error watching for trace events"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_38

    .line 229
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    return p2

    :goto_4b
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 230
    throw p0
.end method
