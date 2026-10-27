.class public Lcom/android/server/usb/UsbDeviceLogger;
.super Ljava/lang/Object;
.source "UsbDeviceLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbDeviceLogger$StringEvent;,
        Lcom/android/server/usb/UsbDeviceLogger$Event;
    }
.end annotation


# instance fields
.field private final mEvents:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/usb/UsbDeviceLogger$Event;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mMemSize:I

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 4
    .param p1, "size"    # I
    .param p2, "title"    # Ljava/lang/String;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceLogger;->mLock:Ljava/lang/Object;

    .line 114
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceLogger;->mEvents:Ljava/util/LinkedList;

    .line 115
    iput p1, p0, Lcom/android/server/usb/UsbDeviceLogger;->mMemSize:I

    .line 116
    iput-object p2, p0, Lcom/android/server/usb/UsbDeviceLogger;->mTitle:Ljava/lang/String;

    .line 117
    return-void
.end method


# virtual methods
.method public declared-synchronized dump(Lcom/android/internal/util/dump/DualDumpOutputStream;J)V
    .registers 8
    .param p1, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p2, "id"    # J

    monitor-enter p0

    .line 138
    :try_start_1
    const-string v0, "USB Event Log"

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceLogger;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0, p2, p3, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceLogger;->mEvents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbDeviceLogger$Event;

    .line 140
    .local v1, "evt":Lcom/android/server/usb/UsbDeviceLogger$Event;
    const-string v2, "USB Event"

    invoke-virtual {v1}, Lcom/android/server/usb/UsbDeviceLogger$Event;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, p2, p3, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_26

    .line 141
    .end local v1    # "evt":Lcom/android/server/usb/UsbDeviceLogger$Event;
    goto :goto_e

    .line 142
    .end local p0    # "this":Lcom/android/server/usb/UsbDeviceLogger;
    :cond_24
    monitor-exit p0

    return-void

    .line 137
    .end local p1    # "dump":Lcom/android/internal/util/dump/DualDumpOutputStream;
    .end local p2    # "id":J
    :catchall_26
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized log(Lcom/android/server/usb/UsbDeviceLogger$Event;)V
    .registers 5
    .param p1, "evt"    # Lcom/android/server/usb/UsbDeviceLogger$Event;

    monitor-enter p0

    .line 124
    :try_start_1
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_20

    .line 125
    :try_start_4
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceLogger;->mEvents:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/server/usb/UsbDeviceLogger;->mMemSize:I

    if-lt v1, v2, :cond_13

    .line 126
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceLogger;->mEvents:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 128
    :cond_13
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceLogger;->mEvents:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 129
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_1b

    .line 130
    monitor-exit p0

    return-void

    .line 129
    :catchall_1b
    move-exception v1

    :goto_1c
    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1e

    :try_start_1d
    throw v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_20

    .end local p0    # "this":Lcom/android/server/usb/UsbDeviceLogger;
    :catchall_1e
    move-exception v1

    goto :goto_1c

    .line 123
    .end local p1    # "evt":Lcom/android/server/usb/UsbDeviceLogger$Event;
    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method
