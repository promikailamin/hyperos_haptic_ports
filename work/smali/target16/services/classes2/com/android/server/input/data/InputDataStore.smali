.class public final Lcom/android/server/input/data/InputDataStore;
.super Ljava/lang/Object;
.source "InputDataStore.java"


# instance fields
.field public final mFileInjector:Lcom/android/server/input/data/InputDataStore$FileInjector;

.field public final mPersistedDataMap:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 51
    new-instance v0, Lcom/android/server/input/data/InputDataStore$FileInjector;

    invoke-direct {v0}, Lcom/android/server/input/data/InputDataStore$FileInjector;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/input/data/InputDataStore;-><init>(Lcom/android/server/input/data/InputDataStore$FileInjector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/input/data/InputDataStore$FileInjector;)V
    .registers 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/data/InputDataStore;->mPersistedDataMap:Ljava/util/Map;

    .line 56
    iput-object p1, p0, Lcom/android/server/input/data/InputDataStore;->mFileInjector:Lcom/android/server/input/data/InputDataStore$FileInjector;

    .line 57
    const-class p0, Landroid/hardware/input/InputGestureData;

    new-instance p1, Lcom/android/server/input/data/InputGesturePersistedData;

    invoke-direct {p1}, Lcom/android/server/input/data/InputGesturePersistedData;-><init>()V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getPersistedDataForType(Ljava/lang/Class;)Lcom/android/server/input/data/PersistedData;
    .registers 2

    .line 161
    iget-object p0, p0, Lcom/android/server/input/data/InputDataStore;->mPersistedDataMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/input/data/PersistedData;

    return-object p0
.end method

.method public loadData(ILjava/lang/Class;)Ljava/util/List;
    .registers 7

    .line 67
    const-string v0, "Failed to read from "

    invoke-virtual {p0, p2}, Lcom/android/server/input/data/InputDataStore;->getPersistedDataForType(Ljava/lang/Class;)Lcom/android/server/input/data/PersistedData;

    move-result-object p2

    if-nez p2, :cond_b

    .line 69
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 71
    :cond_b
    invoke-virtual {p2}, Lcom/android/server/input/data/PersistedData;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 74
    :try_start_f
    iget-object v2, p0, Lcom/android/server/input/data/InputDataStore;->mFileInjector:Lcom/android/server/input/data/InputDataStore$FileInjector;

    invoke-static {v2, p1, v1}, Lcom/android/server/input/data/InputDataStore$FileInjector;->-$$Nest$mopenRead(Lcom/android/server/input/data/InputDataStore$FileInjector;ILjava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    const/4 v3, 0x0

    .line 75
    invoke-virtual {p2, v2, v3}, Lcom/android/server/input/data/PersistedData;->readData(Ljava/io/InputStream;Z)Ljava/util/List;

    move-result-object p2

    .line 76
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_1d} :catch_5a
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1d} :catch_20
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1d} :catch_1e

    return-object p2

    :catch_1e
    move-exception p2

    goto :goto_22

    :catch_20
    move-exception p2

    goto :goto_3d

    .line 91
    :goto_22
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/input/data/InputDataStore;->mFileInjector:Lcom/android/server/input/data/InputDataStore$FileInjector;

    .line 92
    invoke-virtual {p0, p1, v1}, Lcom/android/server/input/data/InputDataStore$FileInjector;->getAtomicFileForUserId(ILjava/lang/String;)Landroid/util/AtomicFile;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 84
    :goto_3d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/input/data/InputDataStore;->mFileInjector:Lcom/android/server/input/data/InputDataStore$FileInjector;

    .line 85
    invoke-virtual {p0, p1, v1}, Lcom/android/server/input/data/InputDataStore$FileInjector;->getAtomicFileForUserId(ILjava/lang/String;)Landroid/util/AtomicFile;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 84
    const-string p1, "InputDataStore"

    invoke-static {p1, p0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 80
    :catch_5a
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public readData(Ljava/io/InputStream;ZLjava/lang/Class;)Ljava/util/List;
    .registers 4

    .line 134
    invoke-virtual {p0, p3}, Lcom/android/server/input/data/InputDataStore;->getPersistedDataForType(Ljava/lang/Class;)Lcom/android/server/input/data/PersistedData;

    move-result-object p0

    if-nez p0, :cond_9

    .line 136
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 138
    :cond_9
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/data/PersistedData;->readData(Ljava/io/InputStream;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public saveData(ILjava/util/List;Ljava/lang/Class;)V
    .registers 9

    .line 105
    invoke-virtual {p0, p3}, Lcom/android/server/input/data/InputDataStore;->getPersistedDataForType(Ljava/lang/Class;)Lcom/android/server/input/data/PersistedData;

    move-result-object p3

    if-nez p3, :cond_7

    return-void

    .line 110
    :cond_7
    invoke-virtual {p3}, Lcom/android/server/input/data/PersistedData;->getFileName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 112
    :try_start_d
    iget-object v3, p0, Lcom/android/server/input/data/InputDataStore;->mFileInjector:Lcom/android/server/input/data/InputDataStore$FileInjector;

    invoke-static {v3, p1, v0}, Lcom/android/server/input/data/InputDataStore$FileInjector;->-$$Nest$mstartWrite(Lcom/android/server/input/data/InputDataStore$FileInjector;ILjava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 113
    invoke-virtual {p3, v2, v1, p2}, Lcom/android/server/input/data/PersistedData;->writeData(Ljava/io/OutputStream;ZLjava/util/List;)V

    .line 114
    iget-object p2, p0, Lcom/android/server/input/data/InputDataStore;->mFileInjector:Lcom/android/server/input/data/InputDataStore$FileInjector;

    const/4 v3, 0x1

    invoke-static {p2, p1, v0, v2, v3}, Lcom/android/server/input/data/InputDataStore$FileInjector;->-$$Nest$mfinishWrite(Lcom/android/server/input/data/InputDataStore$FileInjector;ILjava/lang/String;Ljava/io/FileOutputStream;Z)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1c} :catch_1d

    return-void

    :catch_1d
    move-exception p2

    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to write to file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/input/data/InputDataStore;->mFileInjector:Lcom/android/server/input/data/InputDataStore$FileInjector;

    .line 118
    invoke-virtual {p3}, Lcom/android/server/input/data/PersistedData;->getFileName()Ljava/lang/String;

    move-result-object p3

    .line 117
    invoke-virtual {v4, p1, p3}, Lcom/android/server/input/data/InputDataStore$FileInjector;->getAtomicFileForUserId(ILjava/lang/String;)Landroid/util/AtomicFile;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 116
    const-string v3, "InputDataStore"

    invoke-static {v3, p3, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    iget-object p0, p0, Lcom/android/server/input/data/InputDataStore;->mFileInjector:Lcom/android/server/input/data/InputDataStore$FileInjector;

    invoke-static {p0, p1, v0, v2, v1}, Lcom/android/server/input/data/InputDataStore$FileInjector;->-$$Nest$mfinishWrite(Lcom/android/server/input/data/InputDataStore$FileInjector;ILjava/lang/String;Ljava/io/FileOutputStream;Z)V

    return-void
.end method

.method public writeData(Ljava/io/OutputStream;ZLjava/util/List;Ljava/lang/Class;)V
    .registers 5

    .line 152
    invoke-virtual {p0, p4}, Lcom/android/server/input/data/InputDataStore;->getPersistedDataForType(Ljava/lang/Class;)Lcom/android/server/input/data/PersistedData;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    .line 156
    :cond_7
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/input/data/PersistedData;->writeData(Ljava/io/OutputStream;ZLjava/util/List;)V

    return-void
.end method
