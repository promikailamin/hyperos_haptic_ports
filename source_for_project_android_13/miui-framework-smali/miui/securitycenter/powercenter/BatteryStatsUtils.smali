.class Lmiui/securitycenter/powercenter/BatteryStatsUtils;
.super Ljava/lang/Object;
.source "BatteryStatsUtils.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "BatteryStatsHelper"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;
    .registers 11

    .line 22
    const-string v0, "BatteryStatsHelper"

    const-string v1, "fis close"

    const-string v2, ""

    const/4 v3, 0x0

    .line 23
    .local v3, "statsImpl":Lcom/android/internal/os/BatteryStatsImpl;
    nop

    .line 24
    const-string v4, "batterystats"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 23
    invoke-static {v4}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v4

    .line 26
    .local v4, "stats":Lcom/android/internal/app/IBatteryStats;
    const/4 v5, 0x0

    :try_start_13
    invoke-interface {v4, v5}, Lcom/android/internal/app/IBatteryStats;->getStatisticsStream(Z)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 27
    .local v6, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v6, :cond_6a

    .line 28
    new-instance v7, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v7, v6}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 29
    .local v7, "fis":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v8
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_22} :catch_6b

    .line 31
    .local v8, "parcel":Landroid/os/Parcel;
    :try_start_22
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-static {v9}, Landroid/os/MemoryFile;->getSize(Ljava/io/FileDescriptor;)I

    move-result v9

    invoke-static {v7, v9}, Lmiui/securitycenter/powercenter/BatteryStatsUtils;->readFully(Ljava/io/FileInputStream;I)[B

    move-result-object v9

    .line 32
    .local v9, "data":[B
    array-length v10, v9

    invoke-virtual {v8, v9, v5, v10}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 33
    invoke-virtual {v8, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 34
    sget-object v5, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 35
    invoke-interface {v5, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BatteryStatsImpl;
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_3d} :catch_4e
    .catchall {:try_start_22 .. :try_end_3d} :catchall_4c

    move-object v3, v5

    .line 39
    .end local v9    # "data":[B
    :try_start_3e
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_41} :catch_6b

    .line 41
    :try_start_41
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_45
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_44} :catch_6b

    .line 44
    :goto_44
    goto :goto_6a

    .line 42
    :catch_45
    move-exception v5

    .line 43
    .local v5, "e":Ljava/io/IOException;
    nop

    :goto_47
    :try_start_47
    invoke-static {v2, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_4a} :catch_6b

    .line 45
    nop

    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_6a

    .line 39
    :catchall_4c
    move-exception v5

    goto :goto_5d

    .line 36
    :catch_4e
    move-exception v5

    .line 37
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_4f
    const-string v9, "Unable to read statistics stream"

    invoke-static {v0, v9, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_54
    .catchall {:try_start_4f .. :try_end_54} :catchall_4c

    .line 39
    .end local v5    # "e":Ljava/io/IOException;
    :try_start_54
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_57} :catch_6b

    .line 41
    :try_start_57
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5b
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_5a} :catch_6b

    goto :goto_44

    .line 42
    :catch_5b
    move-exception v5

    .line 43
    .restart local v5    # "e":Ljava/io/IOException;
    goto :goto_47

    .line 39
    .end local v5    # "e":Ljava/io/IOException;
    :goto_5d
    :try_start_5d
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_60} :catch_6b

    .line 41
    :try_start_60
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_63} :catch_6b

    .line 44
    goto :goto_68

    .line 42
    :catch_64
    move-exception v9

    .line 43
    .local v9, "e":Ljava/io/IOException;
    :try_start_65
    invoke-static {v2, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .end local v9    # "e":Ljava/io/IOException;
    :goto_68
    nop

    .end local v3    # "statsImpl":Lcom/android/internal/os/BatteryStatsImpl;
    .end local v4    # "stats":Lcom/android/internal/app/IBatteryStats;
    throw v5
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_6a} :catch_6b

    .line 49
    .end local v6    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "parcel":Landroid/os/Parcel;
    .restart local v3    # "statsImpl":Lcom/android/internal/os/BatteryStatsImpl;
    .restart local v4    # "stats":Lcom/android/internal/app/IBatteryStats;
    :cond_6a
    :goto_6a
    goto :goto_71

    .line 47
    :catch_6b
    move-exception v1

    .line 48
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "remote exception:"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_71
    return-object v3
.end method

.method private static blacklist readFully(Ljava/io/FileInputStream;I)[B
    .registers 7
    .param p0, "stream"    # Ljava/io/FileInputStream;
    .param p1, "avail"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, "pos":I
    new-array v1, p1, [B

    .line 57
    .local v1, "data":[B
    :goto_3
    array-length v2, v1

    sub-int/2addr v2, v0

    invoke-virtual {p0, v1, v0, v2}, Ljava/io/FileInputStream;->read([BII)I

    move-result v2

    .line 58
    .local v2, "amt":I
    if-gtz v2, :cond_c

    .line 59
    return-object v1

    .line 61
    :cond_c
    add-int/2addr v0, v2

    .line 62
    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result p1

    .line 63
    array-length v3, v1

    sub-int/2addr v3, v0

    if-le p1, v3, :cond_1e

    .line 64
    add-int v3, v0, p1

    new-array v3, v3, [B

    .line 65
    .local v3, "newData":[B
    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    move-object v1, v3

    .line 68
    .end local v2    # "amt":I
    .end local v3    # "newData":[B
    :cond_1e
    goto :goto_3
.end method
