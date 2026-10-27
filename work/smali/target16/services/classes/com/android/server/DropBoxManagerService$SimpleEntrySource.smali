.class public Lcom/android/server/DropBoxManagerService$SimpleEntrySource;
.super Ljava/lang/Object;
.source "DropBoxManagerService.java"

# interfaces
.implements Lcom/android/server/DropBoxManagerInternal$EntrySource;


# instance fields
.field public final forceCompress:Z

.field public final in:Ljava/io/InputStream;

.field public final length:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JZ)V
    .registers 5

    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 500
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService$SimpleEntrySource;->in:Ljava/io/InputStream;

    .line 501
    iput-wide p2, p0, Lcom/android/server/DropBoxManagerService$SimpleEntrySource;->length:J

    .line 502
    iput-boolean p4, p0, Lcom/android/server/DropBoxManagerService$SimpleEntrySource;->forceCompress:Z

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    .line 526
    iget-object p0, p0, Lcom/android/server/DropBoxManagerService$SimpleEntrySource;->in:Ljava/io/InputStream;

    invoke-static {p0}, Landroid/os/FileUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void
.end method

.method public length()J
    .registers 3

    .line 506
    iget-wide v0, p0, Lcom/android/server/DropBoxManagerService$SimpleEntrySource;->length:J

    return-wide v0
.end method

.method public writeTo(Ljava/io/FileDescriptor;)V
    .registers 4

    .line 514
    iget-boolean v0, p0, Lcom/android/server/DropBoxManagerService$SimpleEntrySource;->forceCompress:Z

    if-eqz v0, :cond_17

    .line 515
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 517
    iget-object p0, p0, Lcom/android/server/DropBoxManagerService$SimpleEntrySource;->in:Ljava/io/InputStream;

    invoke-static {p0, v0}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 518
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V

    return-void

    .line 520
    :cond_17
    iget-object p0, p0, Lcom/android/server/DropBoxManagerService$SimpleEntrySource;->in:Ljava/io/InputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-static {p0, v0}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    return-void
.end method
