.class public Lcom/android/server/EntropyMixer;
.super Landroid/os/Binder;
.source "EntropyMixer.java"


# static fields
.field static final DEVICE_SPECIFIC_INFO_HEADER:Ljava/lang/String; = "Copyright (C) 2009 The Android Open Source Project\nAll Your Randomness Are Belong To Us\n"

.field static final SEED_FILE_SIZE:I = 0x200

.field private static final SEED_UPDATE_PERIOD:I = 0xa4cb80

.field private static final START_NANOTIME:J

.field private static final START_TIME:J

.field private static final TAG:Ljava/lang/String; = "EntropyMixer"

.field private static final UPDATE_SEED_MSG:I = 0x1


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mHandler:Landroid/os/Handler;

.field private final randomReadDevice:Ljava/io/File;

.field private final randomWriteDevice:Ljava/io/File;

.field private final seedFile:Landroid/util/AtomicFile;


# direct methods
.method static bridge synthetic -$$Nest$mscheduleSeedUpdater(Lcom/android/server/EntropyMixer;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/EntropyMixer;->scheduleSeedUpdater()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSeedFile(Lcom/android/server/EntropyMixer;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/EntropyMixer;->updateSeedFile()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/EntropyMixer;->START_TIME:J

    .line 60
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/EntropyMixer;->START_NANOTIME:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 109
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/android/server/EntropyMixer;->getSystemDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "entropy.dat"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "/dev/urandom"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, v1, v3}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    .line 111
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "seedFile"    # Ljava/io/File;
    .param p3, "randomReadDevice"    # Ljava/io/File;
    .param p4, "randomWriteDevice"    # Ljava/io/File;

    .line 114
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 86
    new-instance v0, Lcom/android/server/EntropyMixer$1;

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/EntropyMixer$1;-><init>(Lcom/android/server/EntropyMixer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/EntropyMixer;->mHandler:Landroid/os/Handler;

    .line 101
    new-instance v1, Lcom/android/server/EntropyMixer$2;

    invoke-direct {v1, p0}, Lcom/android/server/EntropyMixer$2;-><init>(Lcom/android/server/EntropyMixer;)V

    iput-object v1, p0, Lcom/android/server/EntropyMixer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 115
    new-instance v2, Landroid/util/AtomicFile;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/android/server/EntropyMixer;->seedFile:Landroid/util/AtomicFile;

    .line 116
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    iput-object v2, p0, Lcom/android/server/EntropyMixer;->randomReadDevice:Ljava/io/File;

    .line 117
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    iput-object v2, p0, Lcom/android/server/EntropyMixer;->randomWriteDevice:Ljava/io/File;

    .line 119
    invoke-direct {p0}, Lcom/android/server/EntropyMixer;->loadInitialEntropy()V

    .line 120
    invoke-direct {p0}, Lcom/android/server/EntropyMixer;->updateSeedFile()V

    .line 121
    invoke-direct {p0}, Lcom/android/server/EntropyMixer;->scheduleSeedUpdater()V

    .line 122
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 123
    .local v2, "broadcastFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    const-string v3, "android.intent.action.REBOOT"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 131
    return-void
.end method

.method private getDeviceSpecificInformation()[B
    .registers 6

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v1, "Copyright (C) 2009 The Android Open Source Project\nAll Your Randomness Are Belong To Us\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    sget-wide v1, Lcom/android/server/EntropyMixer;->START_TIME:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 255
    sget-wide v3, Lcom/android/server/EntropyMixer;->START_NANOTIME:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 256
    const-string/jumbo v1, "ro.serialno"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 257
    const-string/jumbo v1, "ro.bootmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 258
    const-string/jumbo v1, "ro.baseband"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 259
    const-string/jumbo v1, "ro.carrier"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 260
    const-string/jumbo v1, "ro.bootloader"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 261
    const-string/jumbo v1, "ro.hardware"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 262
    const-string/jumbo v1, "ro.revision"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 263
    const-string/jumbo v1, "ro.build.fingerprint"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 264
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 266
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    return-object v1
.end method

.method private static getSystemDir()Ljava/io/File;
    .registers 3

    .line 271
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 272
    .local v0, "dataDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 273
    .local v1, "systemDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 274
    return-object v1
.end method

.method private loadInitialEntropy()V
    .registers 6

    .line 139
    const-string v0, "EntropyMixer"

    invoke-direct {p0}, Lcom/android/server/EntropyMixer;->readSeedFile()[B

    move-result-object v1

    .line 140
    .local v1, "seed":[B
    :try_start_6
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/android/server/EntropyMixer;->randomWriteDevice:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_d} :catch_2d

    .line 141
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_d
    array-length v3, v1

    if-eqz v3, :cond_18

    .line 142
    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 143
    const-string v3, "Loaded existing seed file"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_18
    invoke-direct {p0}, Lcom/android/server/EntropyMixer;->getDeviceSpecificInformation()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_23

    .line 146
    :try_start_1f
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_2d

    .line 148
    .end local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_46

    .line 140
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :catchall_23
    move-exception v3

    :try_start_24
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_28

    goto :goto_2c

    :catchall_28
    move-exception v4

    :try_start_29
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "seed":[B
    .end local p0    # "this":Lcom/android/server/EntropyMixer;
    :goto_2c
    throw v3
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2d} :catch_2d

    .line 146
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "seed":[B
    .restart local p0    # "this":Lcom/android/server/EntropyMixer;
    :catch_2d
    move-exception v2

    .line 147
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error writing to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/EntropyMixer;->randomWriteDevice:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    .end local v2    # "e":Ljava/io/IOException;
    :goto_46
    return-void
.end method

.method private static longToBytes(J)[B
    .registers 4
    .param p0, "x"    # J

    .line 232
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 233
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 234
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method private readSeedFile()[B
    .registers 5

    .line 153
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/EntropyMixer;->seedFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v0
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_7} :catch_2a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_7} :catch_8

    return-object v0

    .line 156
    :catch_8
    move-exception v1

    .line 157
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/EntropyMixer;->seedFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EntropyMixer"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    new-array v0, v0, [B

    return-object v0

    .line 154
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2a
    move-exception v1

    .line 155
    .local v1, "e":Ljava/io/FileNotFoundException;
    new-array v0, v0, [B

    return-object v0
.end method

.method private scheduleSeedUpdater()V
    .registers 5

    .line 134
    iget-object v0, p0, Lcom/android/server/EntropyMixer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 135
    iget-object v0, p0, Lcom/android/server/EntropyMixer;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xa4cb80

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 136
    return-void
.end method

.method private updateSeedFile()V
    .registers 9

    .line 177
    const-string v0, "EntropyMixer"

    invoke-direct {p0}, Lcom/android/server/EntropyMixer;->readSeedFile()[B

    move-result-object v1

    .line 178
    .local v1, "oldSeed":[B
    const/16 v2, 0x200

    new-array v2, v2, [B

    .line 180
    .local v2, "newSeed":[B
    :try_start_a
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/android/server/EntropyMixer;->randomReadDevice:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_11} :catch_2f

    .line 181
    .local v3, "in":Ljava/io/FileInputStream;
    :try_start_11
    invoke-virtual {v3, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    array-length v5, v2
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_25

    if-ne v4, v5, :cond_1c

    .line 184
    :try_start_18
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_2f

    .line 188
    .end local v3    # "in":Ljava/io/FileInputStream;
    goto :goto_4e

    .line 182
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :cond_1c
    :try_start_1c
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "unexpected EOF"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "oldSeed":[B
    .end local v2    # "newSeed":[B
    .end local v3    # "in":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/android/server/EntropyMixer;
    throw v4
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_25

    .line 180
    .restart local v1    # "oldSeed":[B
    .restart local v2    # "newSeed":[B
    .restart local v3    # "in":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/EntropyMixer;
    :catchall_25
    move-exception v4

    :try_start_26
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2a

    goto :goto_2e

    :catchall_2a
    move-exception v5

    :try_start_2b
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "oldSeed":[B
    .end local v2    # "newSeed":[B
    .end local p0    # "this":Lcom/android/server/EntropyMixer;
    :goto_2e
    throw v4
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2f} :catch_2f

    .line 184
    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "oldSeed":[B
    .restart local v2    # "newSeed":[B
    .restart local p0    # "this":Lcom/android/server/EntropyMixer;
    :catch_2f
    move-exception v3

    .line 185
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/EntropyMixer;->randomReadDevice:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; seed file won\'t be properly updated"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    .end local v3    # "e":Ljava/io/IOException;
    :goto_4e
    :try_start_4e
    const-string v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3
    :try_end_54
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4e .. :try_end_54} :catch_aa

    .line 199
    .local v3, "sha256":Ljava/security/MessageDigest;
    nop

    .line 201
    const-string v4, "Android EntropyMixer v1"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/server/EntropyMixer;->longToBytes(J)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 203
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/server/EntropyMixer;->longToBytes(J)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 204
    array-length v4, v1

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/android/server/EntropyMixer;->longToBytes(J)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 205
    invoke-virtual {v3, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 206
    array-length v4, v2

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/android/server/EntropyMixer;->longToBytes(J)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 207
    invoke-virtual {v3, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 208
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 209
    .local v4, "digest":[B
    const/4 v5, 0x0

    array-length v6, v2

    array-length v7, v4

    sub-int/2addr v6, v7

    array-length v7, v4

    invoke-static {v4, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    invoke-direct {p0, v2}, Lcom/android/server/EntropyMixer;->writeNewSeed([B)V

    .line 212
    array-length v5, v1

    if-nez v5, :cond_a4

    .line 213
    const-string v5, "Created seed file"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a9

    .line 215
    :cond_a4
    const-string v5, "Updated seed file"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :goto_a9
    return-void

    .line 196
    .end local v3    # "sha256":Ljava/security/MessageDigest;
    .end local v4    # "digest":[B
    :catch_aa
    move-exception v3

    .line 197
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v4, "SHA-256 algorithm not found; seed file won\'t be updated"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    return-void
.end method

.method private writeNewSeed([B)V
    .registers 6
    .param p1, "newSeed"    # [B

    .line 220
    const/4 v0, 0x0

    .line 222
    .local v0, "out":Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v1, p0, Lcom/android/server/EntropyMixer;->seedFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    move-object v0, v1

    .line 223
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 224
    iget-object v1, p0, Lcom/android/server/EntropyMixer;->seedFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_10} :catch_11

    .line 228
    goto :goto_35

    .line 225
    :catch_11
    move-exception v1

    .line 226
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error writing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/EntropyMixer;->seedFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EntropyMixer"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 227
    iget-object v2, p0, Lcom/android/server/EntropyMixer;->seedFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 229
    .end local v1    # "e":Ljava/io/IOException;
    :goto_35
    return-void
.end method
