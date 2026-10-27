.class public final Lcom/android/server/usb/UsbAlsaJackDetector;
.super Ljava/lang/Object;
.source "UsbAlsaJackDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final TAG:Ljava/lang/String; = "UsbAlsaJackDetector"


# instance fields
.field public mAlsaDevice:Lcom/android/server/usb/UsbAlsaDevice;

.field public mStopJackDetect:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbAlsaDevice;)V
    .registers 4

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaJackDetector;->mStopJackDetect:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaJackDetector;->mAlsaDevice:Lcom/android/server/usb/UsbAlsaDevice;

    return-void
.end method

.method private static native nativeHasJackDetect(I)Z
.end method

.method private native nativeInputJackConnected(I)Z
.end method

.method private native nativeJackDetect(I)Z
.end method

.method private native nativeOutputJackConnected(I)Z
.end method

.method public static startJackDetect(Lcom/android/server/usb/UsbAlsaDevice;)Lcom/android/server/usb/UsbAlsaJackDetector;
    .registers 3

    .line 47
    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaDevice;->getCardNum()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/usb/UsbAlsaJackDetector;->nativeHasJackDetect(I)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 50
    :cond_c
    new-instance v0, Lcom/android/server/usb/UsbAlsaJackDetector;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbAlsaJackDetector;-><init>(Lcom/android/server/usb/UsbAlsaDevice;)V

    .line 54
    new-instance p0, Ljava/lang/Thread;

    const-string v1, "USB jack detect thread"

    invoke-direct {p0, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-object v0
.end method


# virtual methods
.method public isInputJackConnected()Z
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaJackDetector;->mAlsaDevice:Lcom/android/server/usb/UsbAlsaDevice;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbAlsaDevice;->getCardNum()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbAlsaJackDetector;->nativeInputJackConnected(I)Z

    move-result p0

    return p0
.end method

.method public isOutputJackConnected()Z
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaJackDetector;->mAlsaDevice:Lcom/android/server/usb/UsbAlsaDevice;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbAlsaDevice;->getCardNum()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbAlsaJackDetector;->nativeOutputJackConnected(I)Z

    move-result p0

    return p0
.end method

.method public jackDetectCallback()Z
    .registers 3

    .line 80
    monitor-enter p0

    .line 81
    :try_start_1
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaJackDetector;->mStopJackDetect:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    .line 82
    monitor-exit p0

    return v0

    :catchall_c
    move-exception v0

    goto :goto_1b

    .line 84
    :cond_e
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaJackDetector;->mAlsaDevice:Lcom/android/server/usb/UsbAlsaDevice;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbAlsaDevice;->updateOutputWiredDeviceConnectionState(Z)Z

    .line 85
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaJackDetector;->mAlsaDevice:Lcom/android/server/usb/UsbAlsaDevice;

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbAlsaDevice;->updateInputWiredDeviceConnectionState(Z)Z

    .line 86
    monitor-exit p0

    return v1

    :goto_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_c

    throw v0
.end method

.method public pleaseStop()V
    .registers 2

    .line 72
    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaJackDetector;->mStopJackDetect:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public run()V
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaJackDetector;->mAlsaDevice:Lcom/android/server/usb/UsbAlsaDevice;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbAlsaDevice;->getCardNum()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbAlsaJackDetector;->nativeJackDetect(I)Z

    return-void
.end method
