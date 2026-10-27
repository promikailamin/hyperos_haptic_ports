.class public final Lcom/android/server/usb/UsbMidiDevice;
.super Ljava/lang/Object;
.source "UsbMidiDevice.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x200

.field private static final TAG:Ljava/lang/String; = "UsbMidiDevice"


# instance fields
.field private final mAlsaCard:I

.field private final mAlsaDevice:I

.field private final mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

.field private mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

.field private mFileDescriptors:[Ljava/io/FileDescriptor;

.field private mInputStreams:[Ljava/io/FileInputStream;

.field private mIsOpen:Z

.field private final mLock:Ljava/lang/Object;

.field private final mMidiInputPortReceivers:[Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

.field private final mNumInputs:I

.field private final mNumOutputs:I

.field private mOutputStreams:[Ljava/io/FileOutputStream;

.field private mPipeFD:I

.field private mPollFDs:[Landroid/system/StructPollfd;

.field private mServer:Landroid/media/midi/MidiDeviceServer;

.field private mServerAvailable:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmInputStreams(Lcom/android/server/usb/UsbMidiDevice;)[Ljava/io/FileInputStream;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsOpen(Lcom/android/server/usb/UsbMidiDevice;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/usb/UsbMidiDevice;->mIsOpen:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/usb/UsbMidiDevice;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usb/UsbMidiDevice;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPollFDs(Lcom/android/server/usb/UsbMidiDevice;)[Landroid/system/StructPollfd;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usb/UsbMidiDevice;->mPollFDs:[Landroid/system/StructPollfd;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServerAvailable(Lcom/android/server/usb/UsbMidiDevice;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/usb/UsbMidiDevice;->mServerAvailable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mcloseLocked(Lcom/android/server/usb/UsbMidiDevice;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/usb/UsbMidiDevice;->closeLocked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenLocked(Lcom/android/server/usb/UsbMidiDevice;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/usb/UsbMidiDevice;->openLocked()Z

    move-result p0

    return p0
.end method

.method private constructor <init>(IIII)V
    .registers 9
    .param p1, "card"    # I
    .param p2, "device"    # I
    .param p3, "numInputs"    # I
    .param p4, "numOutputs"    # I

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mLock:Ljava/lang/Object;

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mPipeFD:I

    .line 80
    new-instance v0, Lcom/android/server/usb/UsbMidiDevice$1;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbMidiDevice$1;-><init>(Lcom/android/server/usb/UsbMidiDevice;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

    .line 159
    iput p1, p0, Lcom/android/server/usb/UsbMidiDevice;->mAlsaCard:I

    .line 160
    iput p2, p0, Lcom/android/server/usb/UsbMidiDevice;->mAlsaDevice:I

    .line 161
    iput p3, p0, Lcom/android/server/usb/UsbMidiDevice;->mNumInputs:I

    .line 162
    iput p4, p0, Lcom/android/server/usb/UsbMidiDevice;->mNumOutputs:I

    .line 166
    new-array v0, p4, [Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

    iput-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mMidiInputPortReceivers:[Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

    .line 167
    const/4 v0, 0x0

    .local v0, "port":I
    :goto_21
    if-ge v0, p4, :cond_30

    .line 168
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mMidiInputPortReceivers:[Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

    new-instance v2, Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;-><init>(Lcom/android/server/usb/UsbMidiDevice;Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy-IA;)V

    aput-object v2, v1, v0

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 170
    .end local v0    # "port":I
    :cond_30
    return-void
.end method

.method private closeLocked()V
    .registers 5

    .line 329
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    array-length v1, v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_18

    .line 330
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mMidiInputPortReceivers:[Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;->setReceiver(Landroid/media/midi/MidiReceiver;)V

    .line 331
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/internal/midi/MidiEventScheduler;->close()V

    .line 329
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 333
    .end local v0    # "i":I
    :cond_18
    iput-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    .line 335
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1b
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    array-length v3, v1

    if-ge v0, v3, :cond_28

    .line 336
    aget-object v1, v1, v0

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 335
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 338
    .end local v0    # "i":I
    :cond_28
    iput-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    .line 340
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2b
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mOutputStreams:[Ljava/io/FileOutputStream;

    array-length v3, v1

    if-ge v0, v3, :cond_38

    .line 341
    aget-object v1, v1, v0

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 340
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 343
    .end local v0    # "i":I
    :cond_38
    iput-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mOutputStreams:[Ljava/io/FileOutputStream;

    .line 346
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mFileDescriptors:[Ljava/io/FileDescriptor;

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbMidiDevice;->nativeClose([Ljava/io/FileDescriptor;)V

    .line 347
    iput-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mFileDescriptors:[Ljava/io/FileDescriptor;

    .line 349
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mIsOpen:Z

    .line 350
    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/os/Bundle;IIII)Lcom/android/server/usb/UsbMidiDevice;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "properties"    # Landroid/os/Bundle;
    .param p2, "card"    # I
    .param p3, "device"    # I
    .param p4, "numInputs"    # I
    .param p5, "numOutputs"    # I

    .line 149
    new-instance v0, Lcom/android/server/usb/UsbMidiDevice;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/android/server/usb/UsbMidiDevice;-><init>(IIII)V

    .line 150
    .local v0, "midiDevice":Lcom/android/server/usb/UsbMidiDevice;
    invoke-direct {v0, p0, p1}, Lcom/android/server/usb/UsbMidiDevice;->register(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 151
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 152
    const-string v1, "UsbMidiDevice"

    const-string v2, "createDeviceServer failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v1, 0x0

    return-object v1

    .line 155
    :cond_17
    return-object v0
.end method

.method private native nativeClose([Ljava/io/FileDescriptor;)V
.end method

.method private native nativeOpen(IIII)[Ljava/io/FileDescriptor;
.end method

.method private openLocked()Z
    .registers 16

    .line 173
    iget v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mNumInputs:I

    .line 175
    .local v0, "inputStreamCount":I
    if-lez v0, :cond_6

    .line 176
    add-int/lit8 v0, v0, 0x1

    .line 178
    :cond_6
    iget v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mNumOutputs:I

    .line 181
    .local v1, "outputStreamCount":I
    iget v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mAlsaCard:I

    iget v3, p0, Lcom/android/server/usb/UsbMidiDevice;->mAlsaDevice:I

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/server/usb/UsbMidiDevice;->nativeOpen(IIII)[Ljava/io/FileDescriptor;

    move-result-object v2

    .line 183
    .local v2, "fileDescriptors":[Ljava/io/FileDescriptor;
    if-nez v2, :cond_1c

    .line 184
    const-string v3, "UsbMidiDevice"

    const-string/jumbo v4, "nativeOpen failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v3, 0x0

    return v3

    .line 187
    :cond_1c
    iput-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mFileDescriptors:[Ljava/io/FileDescriptor;

    .line 189
    new-array v3, v0, [Landroid/system/StructPollfd;

    iput-object v3, p0, Lcom/android/server/usb/UsbMidiDevice;->mPollFDs:[Landroid/system/StructPollfd;

    .line 190
    new-array v3, v0, [Ljava/io/FileInputStream;

    iput-object v3, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    .line 192
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_27
    if-ge v3, v0, :cond_47

    .line 193
    aget-object v4, v2, v3

    .line 194
    .local v4, "fd":Ljava/io/FileDescriptor;
    new-instance v5, Landroid/system/StructPollfd;

    invoke-direct {v5}, Landroid/system/StructPollfd;-><init>()V

    .line 195
    .local v5, "pollfd":Landroid/system/StructPollfd;
    iput-object v4, v5, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    .line 196
    sget v6, Landroid/system/OsConstants;->POLLIN:I

    int-to-short v6, v6

    iput-short v6, v5, Landroid/system/StructPollfd;->events:S

    .line 197
    iget-object v6, p0, Lcom/android/server/usb/UsbMidiDevice;->mPollFDs:[Landroid/system/StructPollfd;

    aput-object v5, v6, v3

    .line 198
    iget-object v6, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    aput-object v7, v6, v3

    .line 192
    .end local v4    # "fd":Ljava/io/FileDescriptor;
    .end local v5    # "pollfd":Landroid/system/StructPollfd;
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 201
    .end local v3    # "i":I
    :cond_47
    new-array v3, v1, [Ljava/io/FileOutputStream;

    iput-object v3, p0, Lcom/android/server/usb/UsbMidiDevice;->mOutputStreams:[Ljava/io/FileOutputStream;

    .line 202
    new-array v3, v1, [Lcom/android/internal/midi/MidiEventScheduler;

    iput-object v3, p0, Lcom/android/server/usb/UsbMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    .line 204
    const/4 v3, 0x0

    .line 205
    .local v3, "curOutputStream":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_51
    if-ge v4, v1, :cond_77

    .line 206
    iget-object v5, p0, Lcom/android/server/usb/UsbMidiDevice;->mOutputStreams:[Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    add-int v7, v0, v4

    aget-object v7, v2, v7

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    aput-object v6, v5, v4

    .line 207
    new-instance v5, Lcom/android/internal/midi/MidiEventScheduler;

    invoke-direct {v5}, Lcom/android/internal/midi/MidiEventScheduler;-><init>()V

    .line 208
    .local v5, "scheduler":Lcom/android/internal/midi/MidiEventScheduler;
    iget-object v6, p0, Lcom/android/server/usb/UsbMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    aput-object v5, v6, v4

    .line 209
    iget-object v6, p0, Lcom/android/server/usb/UsbMidiDevice;->mMidiInputPortReceivers:[Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

    aget-object v6, v6, v4

    invoke-virtual {v5}, Lcom/android/internal/midi/MidiEventScheduler;->getReceiver()Landroid/media/midi/MidiReceiver;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;->setReceiver(Landroid/media/midi/MidiReceiver;)V

    .line 205
    .end local v5    # "scheduler":Lcom/android/internal/midi/MidiEventScheduler;
    add-int/lit8 v4, v4, 0x1

    goto :goto_51

    .line 212
    .end local v4    # "i":I
    :cond_77
    iget-object v4, p0, Lcom/android/server/usb/UsbMidiDevice;->mServer:Landroid/media/midi/MidiDeviceServer;

    invoke-virtual {v4}, Landroid/media/midi/MidiDeviceServer;->getOutputPortReceivers()[Landroid/media/midi/MidiReceiver;

    move-result-object v4

    .line 214
    .local v4, "outputReceivers":[Landroid/media/midi/MidiReceiver;
    if-lez v0, :cond_89

    .line 216
    new-instance v5, Lcom/android/server/usb/UsbMidiDevice$2;

    const-string v6, "UsbMidiDevice input thread"

    invoke-direct {v5, p0, v6, v4}, Lcom/android/server/usb/UsbMidiDevice$2;-><init>(Lcom/android/server/usb/UsbMidiDevice;Ljava/lang/String;[Landroid/media/midi/MidiReceiver;)V

    .line 257
    invoke-virtual {v5}, Lcom/android/server/usb/UsbMidiDevice$2;->start()V

    .line 261
    :cond_89
    const/4 v5, 0x0

    .local v5, "port":I
    :goto_8a
    if-ge v5, v1, :cond_b7

    .line 262
    iget-object v6, p0, Lcom/android/server/usb/UsbMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    aget-object v12, v6, v5

    .line 263
    .local v12, "eventSchedulerF":Lcom/android/internal/midi/MidiEventScheduler;
    iget-object v6, p0, Lcom/android/server/usb/UsbMidiDevice;->mOutputStreams:[Ljava/io/FileOutputStream;

    aget-object v13, v6, v5

    .line 264
    .local v13, "outputStreamF":Ljava/io/FileOutputStream;
    move v11, v5

    .line 266
    .local v11, "portF":I
    new-instance v14, Lcom/android/server/usb/UsbMidiDevice$3;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UsbMidiDevice output thread "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v6, v14

    move-object v7, p0

    move-object v9, v12

    move-object v10, v13

    invoke-direct/range {v6 .. v11}, Lcom/android/server/usb/UsbMidiDevice$3;-><init>(Lcom/android/server/usb/UsbMidiDevice;Ljava/lang/String;Lcom/android/internal/midi/MidiEventScheduler;Ljava/io/FileOutputStream;I)V

    .line 289
    invoke-virtual {v14}, Lcom/android/server/usb/UsbMidiDevice$3;->start()V

    .line 261
    .end local v11    # "portF":I
    .end local v12    # "eventSchedulerF":Lcom/android/internal/midi/MidiEventScheduler;
    .end local v13    # "outputStreamF":Ljava/io/FileOutputStream;
    add-int/lit8 v5, v5, 0x1

    goto :goto_8a

    .line 292
    .end local v5    # "port":I
    :cond_b7
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/usb/UsbMidiDevice;->mIsOpen:Z

    .line 293
    return v5
.end method

.method private register(Landroid/content/Context;Landroid/os/Bundle;)Z
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "properties"    # Landroid/os/Bundle;

    .line 297
    const-string/jumbo v0, "midi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/midi/MidiManager;

    .line 298
    .local v0, "midiManager":Landroid/media/midi/MidiManager;
    const/4 v10, 0x0

    if-nez v0, :cond_14

    .line 299
    const-string v1, "UsbMidiDevice"

    const-string v2, "No MidiManager in UsbMidiDevice.register()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return v10

    .line 303
    :cond_14
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/usb/UsbMidiDevice;->mServerAvailable:Z

    .line 304
    iget-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mMidiInputPortReceivers:[Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

    iget v3, p0, Lcom/android/server/usb/UsbMidiDevice;->mNumInputs:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, -0x1

    iget-object v9, p0, Lcom/android/server/usb/UsbMidiDevice;->mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

    move-object v1, v0

    move-object v6, p2

    invoke-virtual/range {v1 .. v9}, Landroid/media/midi/MidiManager;->createDeviceServer([Landroid/media/midi/MidiReceiver;I[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;IILandroid/media/midi/MidiDeviceServer$Callback;)Landroid/media/midi/MidiDeviceServer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mServer:Landroid/media/midi/MidiDeviceServer;

    .line 307
    if-nez v1, :cond_2c

    .line 308
    return v10

    .line 311
    :cond_2c
    return v11
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 317
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mIsOpen:Z

    if-eqz v1, :cond_a

    .line 318
    invoke-direct {p0}, Lcom/android/server/usb/UsbMidiDevice;->closeLocked()V

    .line 320
    :cond_a
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mServerAvailable:Z

    .line 321
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_16

    .line 323
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mServer:Landroid/media/midi/MidiDeviceServer;

    if-eqz v0, :cond_15

    .line 324
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 326
    :cond_15
    return-void

    .line 321
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public dump(Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .registers 12
    .param p1, "deviceAddr"    # Ljava/lang/String;
    .param p2, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p3, "idName"    # Ljava/lang/String;
    .param p4, "id"    # J

    .line 357
    invoke-virtual {p2, p3, p4, p5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 359
    .local v0, "token":J
    const-string v2, "device_address"

    const-wide v3, 0x10900000003L

    invoke-virtual {p2, v2, v3, v4, p1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 360
    iget v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mAlsaCard:I

    const-string v3, "card"

    const-wide v4, 0x10500000001L

    invoke-virtual {p2, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 361
    iget v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mAlsaDevice:I

    const-string v3, "device"

    const-wide v4, 0x10500000002L

    invoke-virtual {p2, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 363
    invoke-virtual {p2, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 364
    return-void
.end method
