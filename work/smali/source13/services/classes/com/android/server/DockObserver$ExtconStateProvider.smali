.class final Lcom/android/server/DockObserver$ExtconStateProvider;
.super Ljava/lang/Object;
.source "DockObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DockObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ExtconStateProvider"
.end annotation


# instance fields
.field private final mState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 79
    .local p1, "state":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/android/server/DockObserver$ExtconStateProvider;->mState:Ljava/util/Map;

    .line 81
    return-void
.end method

.method static fromFile(Ljava/lang/String;)Lcom/android/server/DockObserver$ExtconStateProvider;
    .registers 7
    .param p0, "stateFilePath"    # Ljava/lang/String;

    .line 103
    const-string v0, "DockObserver"

    const/16 v1, 0x400

    new-array v2, v1, [C

    .line 104
    .local v2, "buffer":[C
    :try_start_6
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_b} :catch_3c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_2b

    .line 105
    .local v3, "file":Ljava/io/FileReader;
    const/4 v4, 0x0

    :try_start_c
    invoke-virtual {v3, v2, v4, v1}, Ljava/io/FileReader;->read([CII)I

    move-result v1

    .line 106
    .local v1, "len":I
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2, v4, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 107
    .local v4, "stateString":Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/DockObserver$ExtconStateProvider;->fromString(Ljava/lang/String;)Lcom/android/server/DockObserver$ExtconStateProvider;

    move-result-object v5
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_21

    .line 108
    :try_start_1d
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_20} :catch_3c
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_2b

    .line 107
    return-object v5

    .line 104
    .end local v1    # "len":I
    .end local v4    # "stateString":Ljava/lang/String;
    :catchall_21
    move-exception v1

    :try_start_22
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    goto :goto_2a

    :catchall_26
    move-exception v4

    :try_start_27
    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "buffer":[C
    .end local p0    # "stateFilePath":Ljava/lang/String;
    :goto_2a
    throw v1
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_2b} :catch_3c
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2b} :catch_2b

    .line 111
    .end local v3    # "file":Ljava/io/FileReader;
    .restart local v2    # "buffer":[C
    .restart local p0    # "stateFilePath":Ljava/lang/String;
    :catch_2b
    move-exception v1

    .line 112
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, ""

    invoke-static {v0, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    new-instance v0, Lcom/android/server/DockObserver$ExtconStateProvider;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0, v3}, Lcom/android/server/DockObserver$ExtconStateProvider;-><init>(Ljava/util/Map;)V

    return-object v0

    .line 108
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3c
    move-exception v1

    .line 109
    .local v1, "e":Ljava/io/FileNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No state file found at: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance v0, Lcom/android/server/DockObserver$ExtconStateProvider;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0, v3}, Lcom/android/server/DockObserver$ExtconStateProvider;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method static fromString(Ljava/lang/String;)Lcom/android/server/DockObserver$ExtconStateProvider;
    .registers 10
    .param p0, "stateString"    # Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 90
    .local v0, "states":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "\n"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "lines":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_e
    if-ge v4, v2, :cond_40

    aget-object v5, v1, v4

    .line 92
    .local v5, "line":Ljava/lang/String;
    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 93
    .local v6, "fields":[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_25

    .line 94
    aget-object v7, v6, v3

    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3d

    .line 96
    :cond_25
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid line: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "DockObserver"

    invoke-static {v8, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "fields":[Ljava/lang/String;
    :goto_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 99
    :cond_40
    new-instance v2, Lcom/android/server/DockObserver$ExtconStateProvider;

    invoke-direct {v2, v0}, Lcom/android/server/DockObserver$ExtconStateProvider;-><init>(Ljava/util/Map;)V

    return-object v2
.end method


# virtual methods
.method getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/android/server/DockObserver$ExtconStateProvider;->mState:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
