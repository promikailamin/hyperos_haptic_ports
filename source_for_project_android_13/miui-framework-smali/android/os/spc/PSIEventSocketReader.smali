.class public Landroid/os/spc/PSIEventSocketReader;
.super Ljava/lang/Object;
.source "PSIEventSocketReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/spc/PSIEventSocketReader$PSIEventListener;
    }
.end annotation


# static fields
.field public static final blacklist MAX_BUFFER_SIZE:I = 0x80


# instance fields
.field private blacklist mListener:Landroid/os/spc/PSIEventSocketReader$PSIEventListener;

.field private blacklist mPSISockFd:Landroid/os/ParcelFileDescriptor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mreadDataFromSocket(Landroid/os/spc/PSIEventSocketReader;Ljava/io/InputStream;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/spc/PSIEventSocketReader;->readDataFromSocket(Ljava/io/InputStream;)Z

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(Landroid/os/ParcelFileDescriptor;Landroid/os/spc/PSIEventSocketReader$PSIEventListener;)V
    .registers 5
    .param p1, "psiSockFd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "listener"    # Landroid/os/spc/PSIEventSocketReader$PSIEventListener;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/spc/PSIEventSocketReader;->mPSISockFd:Landroid/os/ParcelFileDescriptor;

    .line 23
    iput-object p2, p0, Landroid/os/spc/PSIEventSocketReader;->mListener:Landroid/os/spc/PSIEventSocketReader$PSIEventListener;

    .line 24
    if-eqz p1, :cond_18

    .line 25
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 26
    .local v0, "fd":Ljava/io/FileDescriptor;
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 27
    iput-object p1, p0, Landroid/os/spc/PSIEventSocketReader;->mPSISockFd:Landroid/os/ParcelFileDescriptor;

    .line 30
    .end local v0    # "fd":Ljava/io/FileDescriptor;
    :cond_18
    return-void
.end method

.method private blacklist readDataFromSocket(Ljava/io/InputStream;)Z
    .registers 7
    .param p1, "in"    # Ljava/io/InputStream;

    .line 61
    const/16 v0, 0x80

    new-array v0, v0, [B

    .line 64
    .local v0, "buffer":[B
    :cond_4
    :goto_4
    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "length":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_22

    .line 65
    iget-object v2, p0, Landroid/os/spc/PSIEventSocketReader;->mListener:Landroid/os/spc/PSIEventSocketReader$PSIEventListener;

    if-eqz v2, :cond_4

    .line 66
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Landroid/os/spc/PSIEvent;->parse(Ljava/lang/String;)Landroid/os/spc/PSIEvent;

    move-result-object v2

    .line 67
    .local v2, "ev":Landroid/os/spc/PSIEvent;
    if-eqz v2, :cond_21

    .line 68
    iget-object v4, p0, Landroid/os/spc/PSIEventSocketReader;->mListener:Landroid/os/spc/PSIEventSocketReader$PSIEventListener;

    invoke-interface {v4, v2}, Landroid/os/spc/PSIEventSocketReader$PSIEventListener;->onReceive(Landroid/os/spc/PSIEvent;)V
    :try_end_21
    .catch Ljava/io/InterruptedIOException; {:try_start_5 .. :try_end_21} :catch_29
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_21} :catch_24

    .line 70
    .end local v2    # "ev":Landroid/os/spc/PSIEvent;
    :cond_21
    goto :goto_4

    .line 77
    :cond_22
    nop

    .line 78
    return v1

    .line 74
    .end local v3    # "length":I
    :catch_24
    move-exception v2

    .line 75
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 76
    return v1

    .line 72
    .end local v2    # "e":Ljava/io/IOException;
    :catch_29
    move-exception v1

    .line 73
    .local v1, "e":Ljava/io/InterruptedIOException;
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method public blacklist startMonitor()V
    .registers 4

    .line 33
    iget-object v0, p0, Landroid/os/spc/PSIEventSocketReader;->mPSISockFd:Landroid/os/ParcelFileDescriptor;

    const-string v1, "SystemPressureControl"

    if-nez v0, :cond_c

    .line 34
    const-string v0, "PSIEventSocketReader: PSISocketFD has not prepared"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void

    .line 37
    :cond_c
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 38
    .local v0, "fd":Ljava/io/FileDescriptor;
    if-eqz v0, :cond_22

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v2

    if-nez v2, :cond_19

    goto :goto_22

    .line 42
    :cond_19
    new-instance v1, Landroid/os/spc/PSIEventSocketReader$1;

    invoke-direct {v1, p0, v0}, Landroid/os/spc/PSIEventSocketReader$1;-><init>(Landroid/os/spc/PSIEventSocketReader;Ljava/io/FileDescriptor;)V

    .line 53
    .local v1, "th":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 54
    return-void

    .line 39
    .end local v1    # "th":Ljava/lang/Thread;
    :cond_22
    :goto_22
    const-string v2, "PSIEventSocketReader: PSISocketFD is invalid"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void
.end method
